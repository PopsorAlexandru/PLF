%For a heterogeneous list, formed from integer numbers and list of digits, write a predicate to compute the
%sum of all numbers represented as sublists.
%Eg.: [1, [2, 3], 4, 5, [6, 7, 9], 10, 11, [1, 2, 0], 6] => [8, 2, 2].


%list(L-list,R-list)
%L - initial list
%R - result list
%flow (i,o),(i,i)

reverse([],C,C).
reverse([H|T],C,R):-
    reverse(T,[H|C],R),


sum([],[],[]).
sum(L1,L2,R):-
   reverse(L1,L3),
   reverse(L2,L4),
   compute(L3,L4,0,RR),
   reverse(RR,R).

compute([],[],0,[]).

compute([],[],1,[1]).

compute([H|T],[],C,[HR|TR]):-
    HR is (H+C) mod 10,
    CR is (H+C) div 10,
    compute(T,[],CR,TR).

compute([],[H|T],C,[HR|TR]):-
    HR is (H+C) mod 10,
    CR is (H+C) div 10,
    compute(T,[],CR,TR).

compute([H1|T1],[H2|T2],C,[HR|TR]):-
    HR is (H1+H2+C) mod 10,
    CR is (H1+H2+C) div 10,
    compute(T1,T2,CR,TR).

list([],[]).

list([H|T],R):-
    is_list(H),
    list(T,RR),
    sum(H,RR,R).

list([H|T],R):-
    number(H),
    list(T,R).
