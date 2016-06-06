Pero según nos dicen, ¡no todo es color de rosas!. Dado un contexto puede haber gente que prefiere a otra persona antes de la cual fué asignada.

Las preferencias están dadas por:

```prolog
preferencias(ana, [luis, juan, pedro]).
preferencias(nora, [juan, pedro, luis]).
preferencias(marta, [pedro, luis, juan]).
preferencias(luis, [ana, nora, marta]).
preferencias(juan, [marta, ana, nora]).
preferencias(pedro, [nora, marta, ana]).
```

Realizar el predicado `loPrefiereAntesQueASuPareja\3`, que relaciona una persona, con otra, con un determinado contexto (lista de parejas armadas). Esto sucede cuando una persona tiene en su lista de preferencias en una posición anterior a otra persona que la persona que tiene como pareja.

Por ejemplo:

```
loPrefiereAntesQueASuPareja(juan, marta, [pareja(juan, ana), pareja(luis,marta)]).
  yes.
```
Esto es porque Juan tiene a Marta como preferida antes que a Ana. 

El predicado debe ser inversible al menos por los dos primeros argumentos.
