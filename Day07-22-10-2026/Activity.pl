gest("Alice").
gest("Bob").
gest("Charlie").
gest("Diana").

room("101", "standard room").
room("102", "standard room").
room("201", "deluxe room").
room("202", "deluxe room").

reserved("101", "Alice").
reserved("201", "Bob").
reserved("102", "Charlie").
reserved("202", "Diana").

has("101", "Wi-Fi").
has("102", "Wi-Fi").
has("202", "Wi-Fi").
has("201", "Air Conditioning").
has("202", "Air Conditioning").

primium_room(X):-
    room(X,"deluxe room").

is_comfortable(X):-
    has(X,"Wi-Fi"),
    has(X,"Air Conditioning").

delex_reservation(X):-
    reserved(Room, X),
    room(Room,"deluxe room").

internet_access(X):-
    has(X,"Wi-Fi").
