Algoritmo Ejercicio3Sandra
	Definir costo_km, valor_tanqueada, gasolina_inicial, gasolina_total, distancia_total, tanqueadas, costo_total, dinero_faltante Como Entero
	//Segun investigue la distancia entre Bogotá y medellín es de 420km por ende si es ida y vuelta seria 840km//
	distancia_total <- 840;
	costo_km <- 5000;
	costo_total <- distancia_total * costo_km;
	Mostrar "Ingrese la cantidad de gasolina inicial (en pesos):";
    Leer gasolina_inicial;
	si gasolina_inicial <10000  Entonces
		Mostrar "No se puede ingresar un valor tan bajo";
	sino
		Mostrar "ingrese la cantidad de tanqueadas que hace en el recorrido";
		Leer tanqueadas;
		Si tanqueadas < 0 o tanqueadas > 12 Entonces
			Mostrar "error el valor ingresado es muy bajo o muy alto";
		SiNo
			Mostrar "¿Cuánto dinero pone en cada tanqueada (en pesos)?";
			Leer valor_tanqueada;
			Si valor_tanqueada <10000  Entonces
				Mostrar "No se puede ingresar un valor tan bajo";
			Sino
				gasolina_total <- gasolina_inicial + (tanqueadas * valor_tanqueada);
				Mostrar "Gasolina total disponible:", gasolina_total;
				Mostrar "Costo estimado del viaje:", costo_total;
				Si gasolina_total >= costo_total Entonces
					Mostrar "Le alcanza la gasolina para el viaje completo.";
					Mostrar "Gasto total del viaje: $", costo_total;
				Sino
					dinero_faltante <- costo_total - gasolina_total;
					Mostrar "No le alcanza la gasolina.";
					Mostrar "Le faltan: $", dinero_faltante, " para completar el viaje.";
					Mostrar "Gasto total esperado del viaje: $", costo_total;
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
