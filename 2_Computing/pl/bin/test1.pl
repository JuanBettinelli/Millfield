male(jack).
male(bill).
male(john).
female(dorothy).
female(evelyn).
female(grace).
female(liz).
parent(dorothy,evelyn).
parent(jack,eveltyn).
parent(dorothy,grace).
parent(jack,grace).
parent(bill,liz).
parent(evelyn,liz).
parent(bill,john).
parent(evelyn,john).

mother(M,X):-
	parent(M,X),
	female(M).
father(F,X):-
	parent(F,X),
	male(F).
grandparent(G,X):-
	parent(G,P),
	parent(P,X).







