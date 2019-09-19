/*
Lumber tries to make stack management easy with a sizeable supply of
semantically significant subtypes. That's not to say it succeeds.
*/

:- module(lumber_types,
          []).

lt_assert_types()

lt_is(T, X, V) :-
    X =.. [T, V].
lt_is(complex, X, c(R,0)) :-
    lt_is(real, X, R).
lt_is(real, X, V) :-
    lt_is(int, X, V);
    lt_is(float, X, V);
    lt_is(rat, X, N/D), V #= N/D.
lt_is(int, X, V) :-
    lt_is(nat, X, V).
