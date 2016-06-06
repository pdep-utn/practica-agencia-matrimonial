Desarrollar el predicado `parejaInfiel\2`, el cual relaciona una pareja con un contexto, si alguno de los integrantes de la pareja una persona prefiere a otra persona y esa persona la prefiere también antes que a su pareja.

Ejemplo:

```prolog
parejaInfiel(pareja(juan, ana), [pareja(juan, ana), pareja(pedro, marta)]).
yes.
```
Ya que Juan prefiere a Marta antes que a Ana y Marta lo prefiere antes que a Pedro.