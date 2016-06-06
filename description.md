Una agencia matrimonial decidió ahora hacer un motor de busqueda de posibles parejas en las que todos encuentren su pareja ideal (_o lo más parecido posible_ :sweat_smile:). Para ello cuenta con una base de conocimientos que indica el orden de preferencia que tiene una persona registrada en su sistema. 

Por ejemplo:

```
preferencias(ana, [luis, juan, pedro]).
preferencias(nora, [juan, pedro, luis]).
preferencias(marta, [pedro, luis, juan]).
preferencias(luis, [ana, nora, marta]).
preferencias(juan, [marta, ana, nora]).
preferencias(pedro, [nora, marta, ana]).
```