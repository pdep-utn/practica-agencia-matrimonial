test(juan_prefiere_a_marta_antes_que_a_su_pareja_ana):-
	loPrefiereAntesQueASuPareja(juan, marta, [pareja(juan, ana), pareja(luis, marta)]).
	
test(ana_prefiere_a_juan_antes_que_a_su_pareja_pedro):-
	loPrefiereAntesQueASuPareja(ana, juan, [pareja(pedro, ana), pareja(juan, marta)]).
	
test(ana_prefiere_a_juan_o_luis_antes_que_a_su_pareja_pedro, Set(Persona == [juan, pedro])):-
	loPrefiereAntesQueASuPareja(ana, Persona, [pareja(pedro, ana), pareja(juan, marta), pareja(luis, nora)]).

test(ana_prefiere_a_juan_o_luis_antes_que_a_su_pareja_pedro, Set(Persona == [ana])):-
	loPrefiereAntesQueASuPareja(Persona, juan, [pareja(pedro, ana), pareja(juan, marta)]).
