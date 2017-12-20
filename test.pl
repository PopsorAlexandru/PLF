%Return a list with all positions of maximum element from a linear list

max([],Max,Max).

max([H|T],Max,R):-
    H > Max,
    Max1 is H,
    max(T,Max1,R1),
    R is R1.

max([H|T],Max,R):-
    H =< Max,
    max(T,Max,R).


pos([],_,_,[]).

pos([H|T],Max,Pos,[H1|T1]):-
    Max =:= H,
    Pos1 is Pos+1,
    pos(T,Max,Pos1,T1),
    H1 is Pos.


pos([H|T],Max,Pos,R):-
    Max =\= H,
    Pos1 is Pos+1,
    pos(T,Max,Pos1,R),

main([],[]).
main(L,R):-
    max(L,0,Max),
    pos(L,Max,1,R).







