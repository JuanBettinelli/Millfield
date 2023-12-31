/*  $Id$

    Part of SWI-Prolog

    Author:        Jan Wielemaker
    E-mail:        J.Wielemaker@uva.nl
    WWW:           http://www.swi-prolog.org
    Copyright (C): 1985-2009, University of Amsterdam

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

    As a special exception, if you link this library with other files,
    compiled with a Free Software compiler, to produce an executable, this
    library does not by itself cause the resulting executable to be covered
    by the GNU General Public License. This exception does not however
    invalidate any other reasons why the executable file might be covered by
    the GNU General Public License.
*/

:- module('$dwim',
	[ dwim_predicate/2,
	  '$dwim_correct_goal'/3,
	  '$find_predicate'/2,
	  '$similar_module'/2
	]).

:- meta_predicate
	dwim_predicate(:, -),
	'$dwim_correct_goal'(:, +, -),
	'$similar_module'(:, -),
	'$find_predicate'(:, -).

%%	'$dwim_correct_goal'(:Goal, +Bindings, -Corrected)
%
%	Correct a goal (normally typed by the   user)  in the `Do What I
%	Mean' sense. Ask the user to confirm  if a unique correction can
%	be found.
%
%	@error	existence_error(procedure, PI) if the goal cannot be
%		corrected.

'$dwim_correct_goal'(M:Goal, Bindings, Corrected) :-
	correct_goal(Goal, M, Bindings, Corrected).

correct_goal(Goal, M, _, M:Goal) :-
	var(Goal), !.
correct_goal(Module:Goal, _, _, Module:Goal) :-
	(   var(Module)
	;   var(Goal)
	), !.
correct_goal(Vars^Goal0, M, Bindings, Vars^Goal) :- !, % setof/bagof
	correct_goal(Goal0, M, Bindings, Goal).
correct_goal(Module:Goal0, _, Bindings, Module:Goal) :-
	current_predicate(_, Module:Goal0), !,
	correct_meta_arguments(Goal0, Module, Bindings, Goal).
correct_goal(Goal0, M, Bindings, M:Goal) :-	% is defined
	current_predicate(_, M:Goal0), !,
	correct_meta_arguments(Goal0, M, Bindings, Goal).
correct_goal(Goal0, M, Bindings, Goal) :-	% correct the goal
	dwim_predicate_list(M:Goal0, DWIMs0), !,
	principal_predicates(DWIMs0, M, DWIMs),
	correct_literal(M:Goal0, Bindings, DWIMs, Goal1),
	correct_meta_arguments(Goal1, M, Bindings, Goal).
correct_goal(Goal, Module, _, NewGoal) :-	% try to autoload
	\+ current_prolog_flag(Module:unknown, fail),
	callable(Goal), !,
	functor(Goal, Name, Arity),
	'$undefined_procedure'(Module, Name, Arity, Action),
	(   Action == error
	->  existence_error(Module:Name/Arity),
	    NewGoal = fail
	;   Action == retry
	->  NewGoal = Goal
	;   NewGoal = fail
	).
correct_goal(Goal, M, _, M:Goal).

existence_error(PredSpec) :-
	strip_module(PredSpec, M, _),
	current_prolog_flag(M:unknown, Unknown),
	dwim_existence_error(Unknown, PredSpec).

dwim_existence_error(fail, _) :- !.
dwim_existence_error(Unknown, PredSpec) :-
	'$module'(TypeIn, TypeIn),
	unqualify_if_context(TypeIn, PredSpec, Spec),
	Error = error(existence_error(procedure, Spec),
		     context(toplevel, 'DWIM could not correct goal')),
	(   Unknown == error
	->  throw(Error)
	;   print_message(warning, Error)
	).

%%	correct_meta_arguments(:Goal, +Module, +Bindings, -Final) is det.
%
%	Correct possible meta-arguments. This performs a recursive check
%	on meta-arguments specified as `0' using :- meta_predicate/1. As
%	a special exception, the arment of call/1 is not checked, so you
%	can use call(X) as an escape from the DWIM system.

correct_meta_arguments(call(Goal), _, _, call(Goal)) :- !.
correct_meta_arguments(Goal0, M, Bindings, Goal) :-
	predicate_property(M:Goal0, meta_predicate(MHead)), !,
	functor(Goal0, Name, Arity),
	functor(Goal, Name, Arity),
	correct_margs(0, Arity, MHead, Goal0, Goal, M, Bindings).
correct_meta_arguments(Goal, _, _, Goal).

correct_margs(Arity, Arity, _, _, _, _, _) :- !.
correct_margs(A, Arity, MHead, GoalIn, GoalOut, M, Bindings) :-
	I is A+1,
	arg(I, GoalIn, Ain),
	arg(I, GoalOut, AOut),
	(   arg(I, MHead, 0)
	->  correct_goal(Ain, M, Bindings, AOut0),
	    unqualify_if_context(M, AOut0, AOut)
	;   AOut = Ain
	),
	correct_margs(I, Arity, MHead, GoalIn, GoalOut, M, Bindings).


%%	correct_literal(:Goal, +Bindings, +DWIMs, -Corrected) is semidet.
%
%	Correct a single literal.  DWIMs is a list of heads that can
%	replace the head in Goal.

correct_literal(Goal, Bindings, [Dwim], DwimGoal) :-
	strip_module(Goal, _, G1),
	strip_module(Dwim, DM, G2),
	functor(G1, _, Arity),
	functor(G2, Name, Arity), !,	% same arity: we can replace arguments
	G1 =.. [_|Arguments],
	G2 =.. [Name|Arguments],
	'$module'(TypeIn, TypeIn),
	(   (   current_predicate(TypeIn:Name/Arity)
	    ->	ConfirmGoal = G2
	    ;	'$prefix_module'(DM, TypeIn, G2, ConfirmGoal)
	    ),
	    goal_name(ConfirmGoal, Bindings, String),
	    '$confirm'(dwim_correct(String))
	->  DwimGoal = DM:G2
	;   DwimGoal = Goal
	).
correct_literal(Goal, Bindings, Dwims, NewGoal) :-
	strip_module(Goal, _, G1),
	functor(G1, _, Arity),
	include_arity(Dwims, Arity, [Dwim]), !,
	correct_literal(Goal, Bindings, [Dwim], NewGoal).
correct_literal(Goal, _, Dwims, _) :-
	print_message(error, dwim_undefined(Goal, Dwims)),
	fail.

include_arity([], _, []).
include_arity([H|T0], Arity, [H|T]) :-
	strip_module(H, _, G),
	functor(G, _, Arity), !,
	include_arity(T0, Arity, T).
include_arity([_|T0], Arity, T)	:-
	include_arity(T0, Arity, T).


%	goal_name(+Goal, +Bindings, -Name)
%
%	Transform Goal into a readable format by binding its variables.

goal_name(Goal, Bindings, String) :-
	State = s(_),
	(   bind_vars(Bindings),
	    numbervars(Goal, 0, _, [singletons(true), attvar(skip)]),
	    format(string(S), '~q', [Goal]),
	    nb_setarg(1, State, S),
	    fail
	;   arg(1, State, String)
	).

bind_vars([]).
bind_vars([Name=Var|T]) :-
	Var = '$VAR'(Name),		% portray prints Name
	bind_vars(T).


%%	'$find_predicate'(:Spec, -PIs:list(pi)) is det.
%
%	Unify `List' with a list of  predicate indicators that match the
%	specification `Spec'. `Spec' is a   term Name/Arity, a ``Head'',
%	or just an atom. The latter refers to all predicate of that name
%	with arbitrary arity. `Do What I   Mean'  correction is done. If
%	the requested module is `user' predicates residing in any module
%	will be considered matching.
%
%	@error	existence_error(procedure, Spec) if no matching predicate
%		can be found.

'$find_predicate'(M:S, List) :-
	name_arity(S, Name, Arity),
	'$module'(TypeIn, TypeIn),
	(   M == TypeIn			% I.e. unspecified default module
	->  true
	;   Module = M
	),
	find_predicate(Module, Name, Arity, L0), !,
	sort(L0, L1),
	principal_pis(L1, Module, List).
'$find_predicate'(_:S, List) :-
	name_arity(S, Name, Arity),
	findall(Name/Arity,
		'$in_library'(Name, Arity, _Path), List),
	List \== [], !.
'$find_predicate'(Spec, _) :-
	existence_error(Spec).

find_predicate(Module, Name, Arity, VList) :-
	findall(Head, find_predicate_(Module, Name, Arity, Head), VList),
	VList \== [], !.
find_predicate(Module, Name, Arity, Pack) :-
	findall(PI, find_sim_pred(Module, Name, Arity, PI), List),
	pack(List, Module, Arity, Packs),
	'$member'(Dwim-Pack, Packs),
	'$confirm'(dwim_correct(Dwim)), !.

unqualify_if_context(_, X, X) :-
	var(X), !.
unqualify_if_context(C, C2:X, X) :-
	C == C2, !.
unqualify_if_context(_, X, X) :- !.

%%	pack(+PIs, +Module, +Arity, +Context, -Packs)
%
%	Pack the list of heads into packets, consisting of the corrected
%	specification and a list of heads satisfying this specification.

pack([], _, _, []) :- !.
pack([M:T|Rest], Module, Arity, [Name-[M:T|R]|Packs]) :-
	pack_name(M:T, Module, Arity, Name),
	pack_(Module, Arity, Name, Rest, R, NewRest),
	pack(NewRest, Module, Arity, Packs).

pack_(Module, Arity, Name, List, [H|R], Rest) :-
	'$select'(M:PI, List, R0),
	pack_name(M:PI, Module, Arity, Name), !,
	'$prefix_module'(M, C, PI, H),
	pack_(Module, Arity, Name, C, R0, R, Rest).
pack_(_, _, _, _, Rest, [], Rest).

pack_name(_:Name/_, M, A,   Name) :-
	var(M), var(A), !.
pack_name(M:Name/_, _, A, M:Name) :-
	var(A), !.
pack_name(_:PI, M, _, PI)   :-
	var(M), !.
pack_name(QPI, _, _, QPI).


find_predicate_(Module, Name, Arity, Module:Name/Arity) :-
	current_module(Module),
	current_predicate(Name, Module:Term),
	functor(Term, Name, Arity).

find_sim_pred(M, Name, Arity, Module:DName/Arity) :-
	sim_module(M, Module),
	'$dwim_predicate'(Module:Name, Term),
	functor(Term, DName, DArity),
	sim_arity(Arity, DArity).

sim_module(M, Module) :-
	var(M), !,
	current_module(Module).
sim_module(M, M) :-
	current_module(M), !.
sim_module(M, Module) :-
	current_module(Module),
	dwim_match(M, Module).

sim_arity(A, _) :- var(A), !.
sim_arity(A, D) :- abs(A-D) < 2.

%%	name_arity(+Spec, -Name, -Arity)
%
%	Obtain the name and arity of a predicate specification. Warn if
%	this is not a legal specification.

name_arity(Atom, Atom, _) :-
	atom(Atom), !.
name_arity(Name/Arity, Name, Arity) :- !.
name_arity(Name//DCGArity, Name, Arity) :-
	(   var(DCGArity)
	->  true
	;   Arity is DCGArity+2
	).
name_arity(Term, Name, Arity) :-
	callable(Term), !,
	functor(Term, Name, Arity).
name_arity(Spec, _, _) :-
	throw(error(type_error(predicate_indicator, Spec), _)).


principal_pis(PIS, M, Principals) :-
	map_pi_heads(PIS, Heads),
	principal_predicates(Heads, M, Heads2),
	map_pi_heads(Principals, Heads2).

map_pi_heads([], []) :- !.
map_pi_heads([PI0|T0], [H0|T]) :-
	map_pi_head(PI0, H0),
	map_pi_heads(T0, T).

map_pi_head(M:PI, M:Head) :-
	nonvar(M), !,
	map_pi_head(PI, Head).
map_pi_head(Name/Arity, Term) :-
	functor(Term, Name, Arity).

%%	principal_predicates(:Heads, +Context, -Principals)
%
%	Get the principal predicate list from a list of heads (e.g., the
%	module in which the predicate is defined).

principal_predicates(Heads, M, Principals) :-
	find_definitions(Heads, M, Heads2),
	'$list_to_set'(Heads2, Principals).

find_definitions([], _, []).
find_definitions([H0|T0], M, [H|T]) :-
	find_definition(H0, M, H),
	find_definitions(T0, M, T).

find_definition(Head, _, Def) :-
	strip_module(Head, _, Plain),
	callable(Plain),
	functor(Plain, Name, Arity),
	(   current_predicate(system:Name/Arity)
	->  Def = system:Plain
	;   predicate_property(Head, imported_from(Module))
	->  Def = Module:Plain
	;   Def = Head
	).


%%	dwim_predicate(:Head, -NewHead) is nondet.
%
%	Find a head that is in a `Do What I Mean' sence the same as `Head'.
%	backtracking produces more such predicates.  If searches for:
%
%	    * predicates with a similar name in an import module
%	    * predicates in a similar module with the same name
%	    * predicates in any module with the same name

dwim_predicate(Head, DWIM) :-
	dwim_predicate_list(Head, DWIMs),
	'$member'(DWIM, DWIMs).

dwim_predicate_list(Head, [Head]) :-
	current_predicate(_, Head), !.
dwim_predicate_list(M:Head, DWIMs) :-
	setof(DWIM, dwim_pred(M:Head, DWIM), DWIMs), !.
dwim_predicate_list(Head, DWIMs) :-
	setof(DWIM, '$similar_module'(Head, DWIM), DWIMs), !.
dwim_predicate_list(M:Goal, DWIMs) :-
	setof(Module:Goal,
	      ( current_module(Module),
		default_module(Module, M),
		current_predicate(_, Module:Goal)
	      ), DWIMs).

%%	dwim_pred(:Head, -DWIM) is nondet.
%
%	True if DWIM is a predicate with a similar name than Head in the
%	module of Head or an import module thereof.

dwim_pred(Head, M:Dwim) :-
	strip_module(Head, Module, H),
	default_module(Module, M),
	'$dwim_predicate'(M:H, Dwim).

%%	'$similar_module'(:Goal, -DWIMGoal) is nondet.
%
%	True if DWIMGoal exists and is, except from a typo in the
%	module specification, equivalent to Goal.

'$similar_module'(Module:Goal, DwimModule:Goal) :-
	current_module(DwimModule),
	dwim_match(Module, DwimModule),
	current_predicate(_, DwimModule:Goal).
