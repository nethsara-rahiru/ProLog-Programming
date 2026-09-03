hello:-
    write("Hi Hi"),nl.
welcome:-
    write('Welcome to Knownlage Base Systems'),nl,
    write("Logical Programming"),nl,
    write("Prolog Practical").
start:-
    hello,
    welcome.
exersice:-
    write("Name     : Nethsara"),nl,
    write("Programe : IT"),nl,
    write("Intrest  : Programming").
greet(Name):-
    write("Hello "), write(Name),write("!").
student(Student):-
    write("Student Name : "),write(Student).
page(Name):-
    write("********************************"),nl,
    tab(10),write("Student Report"),nl,
    write("********************************"),nl,
    nl,
    write("Name      : "),write(Name),nl,
    write("Course    : Knowlage Based System"),nl,
    write("Practical : Prolog"),nl,
    write("********************************").
man(jhon).
likes("John","Pizza").

