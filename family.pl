male(pat).
male(richard).
male(patrick).
male(oisin).
male(oscar).
male(finn).

female(mary).
female(sandra).
female(ciara).
female(martina).
female(linda).
female(patricia).

parent(pat, richard).
parent(mary, richard).
parent(pat, martina).
parent(mary, martina).
parent(pat, linda).
parent(mary, linda).
parent(pat, patricia).
parent(mary, patricia).
parent(pat, patrick).
parent(mary, patrick).

parent(richard, oisin).
parent(richard, oscar).
parent(richard, finn).
parent(richard, ciara).
parent(sandra, oisin).
parent(sandra, oscar).
parent(sandra, finn).
parent(sandra, ciara).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

son(X, Y) :- parent(Y, X), male(Y).
daughter(X, Y) :- parent(Y, X), female(Y).

grandfather(X, Y) :- father(X, Z), parent(Z, Y).
grandmother(X, Y) :- mother(X, Z), parent(Z, Y).

grandson(X, Y) :- grandparent(Y, X), male(X).
granddaughter(X, Y) :- grandparent(Y, X), female(X).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

sibling(X, Y) :- father(Z, X), father(Z, Y), mother(W, X), mother(W, Y), X\=Y.
brother(X, Y) :- sibling(X, Y), male(X).
sister(X, Y) :- sibling(X, Y), female(X).

uncle(X, Y) :- parent(Z, Y), brother(X, Z).
aunt(X, Y) :- parent(Z, Y), sister(X, Z).