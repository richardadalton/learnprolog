on_route(paris).

on_route(Place):-
    move(Place,_,NewPlace),
    on_route(NewPlace).

move(home,car,newbridge).
move(newbridge,train,dublin).
move(dublin,plane,paris).
