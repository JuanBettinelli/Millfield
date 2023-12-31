/*  Part of SWI-Prolog

    Author:        Jan Wielemaker
    E-mail:        J.Wielemaker@cs.vu.nl
    WWW:           http://www.swi-prolog.org
    Copyright (C): 2010, VU University Amsterdam

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

    As a special exception, if you link this library with other files,
    compiled with a Free Software compiler, to produce an executable, this
    library does not by itself cause the resulting executable to be covered
    by the GNU General Public License. This exception does not however
    invalidate any other reasons why the executable file might be covered by
    the GNU General Public License.
*/

:- module(sicstus,
	  [ (block)/1,			% +Heads
	    (public)/1,			% +Heads

	    if/3,			% :If, :Then, :Else

	    use_module/3,		% ?Module, ?File, +Imports

	    bb_put/2,			% :Key, +Value
	    bb_get/2,			% :Key, -Value
	    bb_delete/2,		% :Key, -Value
	    bb_update/3,		% :Key, -Old, +New

	    create_mutable/2,		% ?Value, -Mutable
	    get_mutable/2,		% ?Value, +Mutable
	    update_mutable/2,		% ?Value, !Mutable

	    read_line/1,		% -Codes
	    read_line/2,		% +Stream, -Codes

	    trimcore/0,

%	    call_residue/2,		% :Goal, -Residue

	    prolog_flag/3,		% +Flag, -Old, +New
	    prolog_flag/2,		% +Flag, -Value
	    version/0,
	    version/1,			% +Message

	    op(1150, fx, (block)),
	    op(1150, fx, (public))
	  ]).

:- use_module(sicstus/block).
:- use_module(library(occurs)).
:- use_module(library(debug)).
:- use_module(library(error)).
:- use_module(library(lists)).


/** <module> SICStus compatibility library

This library is intended to be activated   using  the directive below in
files that are designed for use with  SICStus Prolog. The changes are in
effect until the end of the file and in each file loaded from this file.

    ==
    :- expects_dialect(sicstus).
    ==

@tbd	The dialect-compatibility packages are developed in a
	`demand-driven' fashion.  Please contribute to this package.
*/

:- multifile
	system:goal_expansion/2.


		 /*******************************
		 *	    LIBRARY SETUP	*
		 *******************************/

%%	push_sicstus_library
%
%	Pushes searching for dialect/sicstus in   front of every library
%	directory that contains such as sub-directory.

push_sicstus_library :-
	(   absolute_file_name(library(dialect/sicstus), Dir,
			       [ file_type(directory),
				 access(read),
				 solutions(all),
				 file_errors(fail)
			       ]),
	    asserta((user:file_search_path(library, Dir) :-
		    prolog_load_context(dialect, sicstus))),
	    fail
	;   true
	).


:- push_sicstus_library.


		 /*******************************
		 *	      OPERATORS		*
		 *******************************/

%	declare all operators globally

system:goal_expansion(op(Pri,Ass,Name),
		      op(Pri,Ass,user:Name)) :-
	\+ qualified(Name),
	prolog_load_context(dialect, sicstus).

qualified(Var) :- var(Var), !, fail.
qualified(_:_).


%%	setup_dialect
%
%	Further dialect initialization. SICSTus  has   no  limits on the
%	length of atoms in source-code in `normal mode'.

setup_dialect :-
	style_check(-atom).


		 /*******************************
		 *	      CONTROL		*
		 *******************************/

:- meta_predicate
	if(0,0,0).

system:goal_expansion(if(If,Then,Else),
		      (If *-> Then ; Else)) :-
	prolog_load_context(dialect, sicstus),
	\+ (sub_term(X, [If,Then,Else]), X == !).

%%	if(:If, :Then, :Else)
%
%	Same  as  SWI-Prolog  soft-cut  construct.   Normally,  this  is
%	translated using goal-expansion. If either term contains a !, we
%	use meta-calling for full compatibility (i.e., scoping the cut).

if(If, Then, Else) :-
	(   If
	*-> Then
	;   Else
	).


		 /*******************************
		 *	  LIBRARY MODULES	*
		 *******************************/

%%	rename_module(?SICStusModule, ?RenamedSICSTusModule) is nondet.
%
%	True if RenamedSICSTusModule is the  name   that  we use for the
%	SICStus native module SICStusModule. We do  this in places where
%	the module-name conflicts. All explicitely   qualified goals are
%	mapped to the SICStus equivalent of the module.

:- multifile
	rename_module/2.

system:goal_expansion(M:Goal, SicstusM:Goal) :-
	atom(M),
	rename_module(M, SicstusM),
	prolog_load_context(dialect, sicstus).


		 /*******************************
		 *	     MODULES		*
		 *******************************/

% SICStus use_module/1 does not require the target to be a module.

system:goal_expansion(use_module(File), load_files(File, [if(changed)])).

%%	use_module(+Module, -File, +Imports) is det.
%%	use_module(-Module, +File, +Imports) is det.
%
%	This predicate can be used to import   from a named module while
%	the file-location of the module is unknown   or to get access to
%	the module-name loaded from a file.
%
%	If both Module and File are  given,   we  use  Module and try to
%	unify File with the absolute  canonical   path  to the file from
%	which Module was loaded. However, we   succeed regardless of the
%	success of this unification.

use_module(Module, File, Imports) :-
	atom(Module), !,
	module_property(Module, file(Path)),
	use_module(Path, Imports),
	ignore(File = Path).
use_module(Module, File, Imports) :-
	ground(File), !,
	absolute_file_name(File, Path,
			   [ file_type(prolog),
			     access(read)
			   ]),
	use_module(Path, Imports),
	module_property(Module, file(Path)).
use_module(Module, _, _Imports) :-
	instantiation_error(Module).

%%	public(+Heads)
%
%	Seems to be used in e.g., :- public user:help_pred/3.

public(_).

		 /*******************************
		 *	 FOREIGN RESOURCES      *
		 *******************************/

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
SICStus uses foreign_resource(Name, Functions) and predicate definitions
similar to Quintus. qpforeign can generate  the   glue  code that can be
linked with swipl-ld. This  part  of   the  emulation  merely  skips the
declarations and Maps load_foreign_resource   to load_foreign_resource/2
from library(qpforeign).
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

system:term_expansion(
	(:- load_foreign_resource(Base)),
	(:- initialization(load_foreign_resource(M:Base, Source), now))) :-
	prolog_load_context(source, Source),
	prolog_load_context(module, M).


		 /*******************************
		 *	       BB_*		*
		 *******************************/

:- meta_predicate
	bb_put(:, +),
	bb_get(:, -),
	bb_delete(:, -),
	bb_update(:, -, +).

system:goal_expansion(bb_put(Key, Value), nb_setval(Atom, Value)) :-
	bb_key(Key, Atom).
system:goal_expansion(bb_get(Key, Value), nb_current(Atom, Value)) :-
	bb_key(Key, Atom).
system:goal_expansion(bb_delete(Key, Value),
		      (	  nb_current(Atom, Value),
			  nb_delete(Atom)
		      )) :-
	bb_key(Key, Atom).
system:goal_expansion(bb_update(Key, Old, New),
		      (	  nb_current(Atom, Old),
			  nb_setval(Atom, New)
		      )) :-
	bb_key(Key, Atom).

bb_key(Module:Key, Atom) :-
	atom(Module), !,
	atomic(Key),
	atomic_list_concat([Module, Key], :, Atom).
bb_key(Key, Atom) :-
	atomic(Key),
	prolog_load_context(module, Module),
	atomic_list_concat([Module, Key], :, Atom).

%%	bb_put(:Name, +Value) is det.
%%	bb_get(:Name, -Value) is semidet.
%%	bb_delete(:Name, -Value) is semidet.
%%	bb_update(:Name, -Old, +New) is semidet.
%
%	SICStus compatible blackboard routines. The implementations only
%	deal with cases where the module-sensitive   key  is unknown and
%	meta-calling. Simple cases are  directly   mapped  to SWI-Prolog
%	non-backtrackable global variables.

bb_put(Key, Value) :-
	bb_key(Key, Name),
	nb_setval(Name, Value).
bb_get(Key, Value) :-
	bb_key(Key, Name),
	nb_current(Name, Value).
bb_delete(Key, Value) :-
	bb_key(Key, Name),
	nb_current(Name, Value),
	nb_delete(Name).
bb_update(Key, Old, New) :-
	bb_key(Key, Name),
	nb_current(Name, Old),
	nb_setval(Name, New).


		 /*******************************
		 *	     MUTABLES		*
		 *******************************/

%%	create_mutable(?Value, -Mutable) is det.
%
%	Create a mutable term with the given initial Value.
%
%	@compat sicstus

create_mutable(Value, '$mutable'(Value,_)).

%%	get_mutable(?Value, +Mutable) is semidet.
%
%	True if Value unifies with the current value of Mutable.
%
%	@compat sicstus

get_mutable(Value, '$mutable'(Value,_)).

%%	update_mutable(?Value, !Mutable) is det.
%
%	Set the value of Mutable to Value.  The old binding is
%	restored on backtracking.
%
%	@see setarg/3.
%	@compat sicstus

update_mutable(Value, Mutable) :-
	functor(Mutable, '$mutable', 2), !,
	setarg(1, Mutable, Value).
update_mutable(_, Mutable) :-
	type_error(mutable, Mutable).


		 /*******************************
		 *	   LINE READING		*
		 *******************************/

%%	read_line(-Codes) is det.
%%	read_line(+Stream, -Codes) is det.
%
%	Read a line from the given or  current input. The line read does
%	_not_ include the line-termination character. Unifies Codes with
%	=end_of_file= if the end of the input is reached.
%
%	@compat sicstus
%	@see	The SWI-Prolog primitive is read_line_to_codes/2.

read_line(Codes) :-
    read_line_to_codes(current_input, Codes).

read_line(Stream, Codes) :-
    read_line_to_codes(Stream, Codes).


		 /*******************************
		 *  COROUTINING & CONSTRAINTS	*
		 *******************************/

/* This is more complicated.  Gertjan van Noord decided to use
   copy_term/3 in Alpino.

%%	call_residue(:Goal, -Residue) is nondet.
%
%	Residue is a list of VarSet-Goal.  Note that this implementation
%	is   incomplete.   Please   consult     the   documentation   of
%	call_residue_vars/2 for known issues.

:- meta_predicate
	call_residue(0, -).

call_residue(Goal, Residue) :-
	call_residue_vars(Goal, Vars),
	(   Vars == []
	->  Residue = []
	;   copy_term(Vars, _AllVars, Goals),
	    phrase(vars_by_goal(Goals), Residue)
	).

vars_by_goal((A,B)) --> !,
	vars_by_goal(A),
	vars_by_goal(B).
vars_by_goal(Goal) -->
	{ term_attvars(Goal, AttVars),
	  sort(AttVars, VarSet)
	},
	[ VarSet-Goal ].
*/

%%	trimcore
%
%	Trims the stacks.  Other tasks of the SICStus trimcore/0 are
%	automatically scheduled by SWI-Prolog.

trimcore :-
	trim_stacks.


		 /*******************************
		 *	       FLAGS		*
		 *******************************/

%%	prolog_flag(+Flag, -Old, +New) is semidet.
%
%	Query and set a Prolog flag. Use the debug/1 topic =prolog_flag=
%	to find the flags accessed using this predicate.

prolog_flag(Flag, Old, New) :-
	debug(prolog_flag, 'prolog_flag(~q, ~q, ~q)', [Flag, Old, New]),
	current_prolog_flag(Flag, Old),
	set_prolog_flag(Flag, New).

%%	prolog_flag(+Flag, -Value) is semidet.
%
%	Query a Prolog flag, mapping SICSTus flags to SWI-Prolog flags

prolog_flag(Flag, Value) :-
	debug(prolog_flag, 'prolog_flag(~q, ~q)', [Flag, Value]),
	sicstus_flag(Flag, Value).

sicstus_flag(argv, Argv) :- !,
	current_prolog_flag(argv, AllArgs),
	(   append(_, [--|Argv0], AllArgs)
	->  Argv = Argv0
	;   Argv = []
	).
sicstus_flag(system_type, Type) :- !,
	(   current_prolog_flag(saved_program, true)
	->  Type = runtime
	;   Type = development
	).
sicstus_flag(Name, Value) :-
	current_prolog_flag(Name, Value).


:- dynamic
	version_msg/1.

%%	version is det.
%
%	Print welcome message.
%
%	@tbd	This should be merged into the message-system

version :-
	'$welcome',
	forall(version_msg(Msg),
	       print_message(banner, format('~w', [Msg]))).

%%	version(+Message) is det.
%
%	Add message to version/0

version(Message) :-
	assertz(version_msg(Message)).


		 /*******************************
		 *	     ARITHMETIC		*
		 *******************************/

% Provide (#)/2 as arithmetic function.  Ideally, we should be able to
% bind multiple names to built-in functions.  This is rather slow.  We
% could also consider adding # internally, but not turning it into an
% operator.

:- op(500, yfx, #).

:- arithmetic_function(user:(#)/2).

user:(#(X,Y,R)) :-
	R is xor(X,Y).


		 /*******************************
		 *	       HACKS		*
		 *******************************/

%%	prolog:'$breaklevel'(-BreakLevel, Unknown)
%
%	Query the current break-level

prolog:'$breaklevel'(BreakLevel, _) :-
	system:flag('$break_level', BreakLevel, BreakLevel).
