man(tom).
man(pete).
man(john).

woman(mary).
woman(anne).
woman(marie).

parent(mary, tom).
parent(tom, pete).
parent(tom, marie).
parent(tom, john).
parent(anne, pete).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

father(X, Y) :- parent(X, Y), man(X).
mother(X, Y) :- parent(X, Y), woman(X).

son(X, Y) :- parent(Y, X), man(Y).
daughter(X, Y) :- parent(Y, X), woman(Y).

grandfather(X, Y) :- father(X, Z), parent(Z, Y).
grandmother(X, Y) :- mother(X, Z), parent(Z, Y).

grandson(X, Y) :- grandparent(Y, X), man(X).
granddaughter(X, Y) :- grandparent(Y, X), woman(X).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).