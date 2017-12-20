candidat([H|_],H).
candidat([_|T],E):-
    candidat(T,E).

color(_,0,R,R):-!.

color(L,K,[],R):-
    K1 is K-1,
    candidat(L,CR),
    color(L,K1,[CR],R).


color(L,K,[H|T],R):-
    K1 is K-1,
    candidat(L,CR),
    CR \== H,
    color(L,K1,[CR,H|T],R).


main(L,K,R):-
    findall(RC,color(L,K,[],RC),R).
