Realizar el predicado `contexto\1` el cual es verdadero si el parametro es una lista con una combinación de las parejas posibles, una pareja es posible si:
  * Las personas que la componen tienen a la otra en una de sus preferencias.
  * No está esa persona en el mismo contexto en otra pareja.
  * Se asignan a todas las personas en el sistema a una pareja.

El predicado debe ser inversible y en el caso de una consulta existencial debe responder _todas las combinaciones posibles de contextos_.

Ejemplo:

```prolog
contexto([pareja(ana, juan), pareja(pedro, marta), pareja(luis, nora)]).
  yes.
```