Algoritmo Marcos_pintor
	Definir metros_cuadrados, galones_necesarios, galones_comprados, total, sobrante, metros_pintados Como real
    Definir descuento_aplicado Como Logico
	Mostrar  "Ingrese el área de la casa en metros cuadrados:";
    Leer metros_cuadrados;
	Si metros_cuadrados < 10 Entonces
        Mostrar  "Error: el área ingresada es demasiado pequeña para pintar.";
	Sino
		Si metros_cuadrados > 50 Entonces
			total <- metros_cuadrados * 50000 * 0.80;
			descuento_aplicado <- Verdadero;
		Sino
			total <- metros_cuadrados * 50000;
			descuento_aplicado <- Falso;
		FinSi
		galones_necesarios <- metros_cuadrados / 35;
		Si galones_necesarios <> trunc(galones_necesarios) Entonces
			galones_comprados <- trunc(galones_necesarios) + 1;
		Sino
			galones_comprados <- galones_necesarios;
		FinSi
		metros_pintados <- galones_comprados * 35;
		sobrante <- metros_pintados - metros_cuadrados;
		Mostrar  "Total a cobrar: $", total;
		Si descuento_aplicado Entonces
			Mostrar  "Se aplicó un 20% de descuento.";
		Sino
			Mostrar  "No se aplicó descuento.";
		FinSi
		Mostrar "Galones de pintura comprados: ", galones_comprados;
		Si sobrante > 0 Entonces
			Mostrar "Sobró pintura suficiente para ", sobrante, " metros cuadrados.";
		Sino
			Mostrar  "No sobró pintura.";
		FinSi
	FinSi
FinAlgoritmo
