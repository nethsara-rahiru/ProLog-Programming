students(["Amal","Kamal","Nimal","Saman","Ravi"]).

get_first([H|_],H).

get_tail([_|T],T).

isequal(X,X).

testv1(hello).
testv2(hello).


isexisted(Element,[Element|_]).
isexisted(Element,[_|T]):-
    isexisted(Element,T).
