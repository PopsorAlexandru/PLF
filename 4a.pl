%Write a predicate to determine the sum of two numbers written in list representation.

%reverse(L-list,R-list)
%L - initial list which we want to reverse
%R - reversed list
%flow model (i,o),(i,i)

%sum(L1-list,L2-list,R-list)
%L1 - first number to add represented as a list
%L2 - second list to add representted as a list
%R - the result represented as a list
%flow model (i,i,o),(i,i,i)
%
%compute(L1-list,L2-list,C-Integer,R-list)
%L1 - first number to add represented as a list
%L2 - second list to add representted as a list
%C - is the carry
%R - the result represented as a list
%flow model (i,i,i,o),(i,i,i,i)

reverse([],C,C).
reverse([H|T],C,R):-
   reverse(T,[H|C],R).

sum([],[],[]).
sum(L1,L2,R):-
   reverse(L1,L3),
   reverse(L2,L4),
   compute(L3,L4,0,Rez),
   reverse(Rez,R).

compute([],[],0,[]).

compute([],[],1,[1]).

compute([H|T],[],C,[HR|TR]):-
    HR is (H+C) mod 10,
    CR is (H+C) div 10,
    compute(T,[],CR,TR).

compute([],[H|T],C,[HR|TR]):-
    HR is (H+C) mod 10,
    CR is (H+C) div 10,
    compute([],T,CR,TR).

compute([H1|T1],[H2|T2],C,[HR|TR]):-
    HR is (H1+H2+C) mod 10,
    CR is (H1+H2+C) div 10,
    compute(T1,T2,CR,TR).
