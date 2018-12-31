man(tom).
man(pete).

woman(mary).
woman(anne).

parent(mary, tom).
parent(tom, pete).
parent(anne, pete).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

father(X, Y) :- parent(X, Y), man(X).
mother(X, Y) :- parent(X, Y), woman(X).

son(X, Y) :- parent(Y, X), man(Y).
daughter(X, Y) :- parent(Y, X), woman(Y).

grandfather(X, Y) :- father(X, Z), parent(Z, Y).
grandmother(X, Y) :- mother(X, Z), parent(Z, Y).

grandson(X, Y) :- son(X, Z), parent(Y, Z).
granddaughter(X, Y) :- daughter(X, Z), parent(Y, Z).