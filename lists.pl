member(X, [X|_]).
member(X, [_|T]) :- member(X, T).


alt([]).
alt([a, b|T]) :- alt(T).


maxinlist([X], X).
maxinlist([X|Xs], M) :- maxinlist(Xs, M), M >= X.
maxinlist([X|Xs], X) :- maxinlist(Xs, M), M < X.


sumlist([X], X).
sumlist([X|Xs], Sum) :- sumlist(Xs, Z), Sum is X + Z.


