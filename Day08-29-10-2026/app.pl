rooms(a).
rooms(b).
rooms(c).
rooms(d).

connected(a,b).
connected(a,c).
connected(c,d).
connected(b,d).

connected(b,a).
connected(c,a).
connected(d,c).
connected(d,b).


route(X,Y):-
    connected(X,Y),
    write(X),
    write(" -> "),
    write(Y).

route(X,Y):-
    connected(X,Z),
    connected(Z,Y),
    write(X),
    write(" -> "),
    write(Z),
    write(" -> "),
    write(Y).


dont show "false".
