head(X, [X|_]).

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

maxinlist([X], X).
maxinlist([X|Xs], M) :- maxinlist(Xs, M), M >= X.
maxinlist([X|Xs], X) :- maxinlist(Xs, M), M < X.


sumlist([X], X).
sumlist([X|Xs], S) :- sumlist(Xs, Z), S is X + Z.


iseven(N) :- 0 is mod(N, 2).
isodd(N) :- 1 is mod(N, 2).


sumevens([], 0).
sumevens([X|Xs], S) :- sumevens(Xs, Z), iseven(X), S is X + Z.
sumevens([X|Xs], S) :- sumevens(Xs, Z), isodd(X), S is Z.


sumodds([], 0).
sumodds([X|Xs], S) :- sumodds(Xs, Z), isodd(X), S is X + Z.
sumodds([X|Xs], S) :- sumodds(Xs, Z), iseven(X), S is Z.


