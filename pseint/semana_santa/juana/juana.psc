Algoritmo Juana
	Mostrar "ingrese distancia recorrida en el dia 1 (Z km)";
	
	leer dia1;
	si dia1 <= 0 Entonces
		Mostrar "Error: Los kilometros recorridos en el primer dia deben ser mayores a 0."
	SiNo
		dia2 <- dia1 + 1;
		dia3 <- dia2 + 2;
		dia4 <- dia3 + 3;
		dia5 <- dia4 + 4;
		dia6 <- dia5 + 5;
		dia7 <- dia6 + 6;
		total_recorrido <- dia1 + dia2 + dia3 + dia4 + dia5 + dia6 + dia7;
		Mostrar "distancia total recorrida: ", total_recorrido
	FinSi
FinAlgoritmo
