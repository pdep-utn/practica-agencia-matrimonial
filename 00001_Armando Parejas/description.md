El sistema deberá poder representar a las parejas que arma, para ello utilizaremos functores, como el siguiente: `pareja(ana, juan).`

Y por otro lado tener un __contexto__ o mejor dicho una de las posibles combinaciones de parejas con todas las personas en el sistema. 

Por ejemplo: `[pareja(ana, pedro), pareja(nora, luis), pareja(marta, juan)]`.

Hacer el predicado: `enPareja\3` que relaciona dos personas con el functor correspondiente, sin importar el orden de las personas, osea deberían ser verdaderos tanto `enPareja(ana, juan, pareja(ana, juan))` como también `enPareja(ana, juan, pareja(juan, ana))`.
