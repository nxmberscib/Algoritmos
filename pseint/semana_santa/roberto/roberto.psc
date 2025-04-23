Algoritmo roberto
	Mostrar "ingrese el salario";
	Leer salario;
	si salario > 500000 Entonces
		des_salud <- salario * 0.08;
		des_pension <- salario * 0.05;
		SalarioNeto <- salario - (des_salud + des_pension);
		C_prestamo <- salario * 0.1;
		interes_m <- (2/100)/12;
		prestamo <- (C_prestamo * (1 - (1+interes_m) ^ (-36))) / interes_m;
		deudas <- SalarioNeto * 0.05;
		libre <- SalarioNeto - (deudas+C_prestamo);
		Mostrar "debe pagar salud: ", des_salud, ", de pension: ", des_pension, ", valor del prestamo: ", trunc(prestamo), ", le queda libre: ", libre
	SiNo 
		Mostrar "Error: Sea serio, sueldo demasiado bajo. Se va a endeudar";
	FinSi
FinAlgoritmo
