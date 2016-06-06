enPareja(PersonaA, PersonaB, pareja(PersonaA, PersonaB)).
enPareja(PersonaB, PersonaA, pareja(PersonaA, PersonaB)).

loPrefiereAntesQueASuPareja(PersonaA, PersonaC, Contexto):-
    member(Pareja1, Contexto),
    member(Pareja2, Contexto),
    enPareja(PersonaA, PersonaB, Pareja1),
    enPareja(PersonaC, _, Pareja2),
    prefiereAAntesQue(PersonaA, PersonaC, PersonaB).
        
prefiereAAntesQue(Persona, Preferido, Rechazado):-
    preferencias(Persona, Preferidos),
    nth0(PosicionRechazo, Preferidos, Rechazado),
    nth0(PosicionPreferido, Preferidos, Preferido),
    PosicionRechazo > PosicionPreferido.