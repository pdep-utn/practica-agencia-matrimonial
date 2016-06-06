enPareja(PersonaA, PersonaB, pareja(PersonaA, PersonaB)).
enPareja(PersonaB, PersonaA, pareja(PersonaA, PersonaB)).

prefiereAAntesQue(Persona, Preferido, Rechazado):-
    preferencias(Persona, Preferidos),
    nth0(PosicionRechazo, Preferidos, Rechazado),
    nth0(PosicionPreferido, Preferidos, Preferido),
    PosicionRechazo > PosicionPreferido.
    
loPrefiereAntesQueASuPareja(PersonaA, PersonaC, Contexto):-
    member(Pareja1, Contexto),
    member(Pareja2, Contexto),
    enPareja(PersonaA, PersonaB, Pareja1),
    enPareja(PersonaC, _, Pareja2),
    prefiereAAntesQue(PersonaA, PersonaC, PersonaB).

parejaInfiel(Pareja, Contexto):-
    member(Pareja2, Contexto),
    enPareja(Persona, _, Pareja),
    enPareja(PersonaB, _, Pareja2),
    loPrefiereAntesQueASuPareja(Persona, PersonaB, Contexto),
    loPrefiereAntesQueASuPareja(PersonaB, Persona, Contexto).
    
    
personasNoEnEstaPareja(Personas, Pareja, Desparejadas):-
        findall(Persona, (member(Persona, Personas), not(enPareja(Persona, _, Pareja))), Desparejadas).

contexto2([], []).
contexto2(Personas, [pareja(Persona1, Persona2) | Parejas]):-
    member(Persona1, Personas),
    preferencias(Persona1, Preferencias),
    member(Persona2, Personas),
    member(Persona2, Preferencias),
    personasNoEnEstaPareja(Personas, pareja(Persona1, Persona2), NuevaPersonas),
    contexto2(NuevaPersonas, Parejas).

contexto(Parejas):-
    findall(Persona, preferencias(Persona, _), Personas),
    contexto2(Personas, Parejas).