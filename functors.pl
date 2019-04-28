

is_a(X) :- X = a.


count_by([], 0).
count_by([X|Xs], F, S) :- count_by(Xs, F, Z), call(is_a(X), S is 1 + Z.
