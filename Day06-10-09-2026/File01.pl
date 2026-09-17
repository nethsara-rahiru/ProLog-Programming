employee(john, hr, director, 25).
employee(denis, finance, general_manager, 21).
employee(fleming,marketing,manager,15).
employee(bozena,finance,director,06).
employee(zofia,hr,manager,13).
employee(urban,it,network_engineer,12).
employee(pilar,admin,secretary,05).
employee(kura,admin,manager,10).
employee(jasmine,it,intern,09).
employee(george,marketing,intern,07).

salary(director, 90000, 54).
salary(general_manager, 80000, 54).
salary(manager, 65000, 45).
salary(secretary, 50000, 24).
salary(network_engineer, 60000, 36).
salary(intern, 30000, 24).

list([]).

show_posistions([]).
show_posistions([Name|T]):-
    employee(Name,Dept,Pos,_),
    write(Name),write('  -  '),write(Dept),write('  -  '),
    write(Pos).

print_sala([]).
print_sala([Name|T]):-
    employee(Name, _, Pos, _),
    salary(Pos, Salary,_),
    write(Name),write(' - '),write(Salary),nl,
    print_sala([T]).

show_salary(Name,Output):-
    employee(Name,_,Pos,_),
    salary(Pos,Output,_).

remaining(Name,Remaining):-
    employee(Name,_,Pos,Taken),
    salary(Pos,_,Allocated),
    Remaining is Allocated-Taken.

bonus(Days,0.06):-
    Days > 30.

bonus(Days,0.05):-
    Days >= 26,
    Days <= 30.

bonus(Days,0.04):-
    Days >= 25,
    Days <= 21.
