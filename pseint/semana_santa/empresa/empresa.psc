Algoritmo Empresa_3_trabajadores
	Definir valor_hora, sueldo1, sueldo2, sueldo3, sueldo_total, subsidio, presupuesto, Dinero_para_pagar como real
	Definir trabajador_CS, horas_extra, horas_normales Como Entero
	horas_normales <- 7;
	Mostrar "Ingrese el presupuesto disponible:";
    Leer presupuesto;
    Si presupuesto <500000 Entonces
        Mostrar  "Error: el presupuesto debe ser al menos $500.000.";
	SiNo
		Mostrar "¿Qué trabajador (1, 2 o 3) recibe subsidio?";
		Leer trabajador_CS;
		Si trabajador_CS < 1 O trabajador_CS > 3 Entonces
			Mostrar "Error: número de trabajador inválido.";
		SiNo
			Mostrar "Ingrese el valor del subsidio de transporte:";
			Leer subsidio;
			
			Si subsidio < 3000 Entonces
				Mostrar  "Error: el subsidio debe ser al menos de $3000.";
			SiNo
				Mostrar "Trabajador 1";
				Mostrar "Ingrese el valor por hora:";
				Leer valor_hora;
				
				Si valor_hora < 6000 Entonces
					Mostrar "Error: el valor por hora debe ser mínimo $6000.";
				SiNo
					Mostrar "Ingrese las horas extra trabajadas:";
					Leer horas_extra;
					
					Si horas_extra < 1 O horas_extra > 5 Entonces
						Mostrar  "Error: las horas extra deben estar entre 1 y 5.";
					SiNo
						sueldo1 <- (horas_normales * valor_hora) + (horas_extra * valor_hora * 1.20);
						
						Si trabajador_CS = 1 Entonces
							sueldo1 <- sueldo1 + subsidio;
						FinSi
						
						Mostrar "Trabajador 2";
						Mostrar "Ingrese el valor por hora:";
						Leer valor_hora;
						
						Si valor_hora < 6000 Entonces
							Mostrar "Error: el valor por hora debe ser mínimo $6000.";
						SiNo
							Mostrar "Ingrese las horas extra trabajadas:";
							Leer horas_extra;
							Si horas_extra < 1 O horas_extra > 5 Entonces
								Mostrar  "Error: las horas extra deben estar entre 1 y 5.";
							SiNo
								sueldo2 <- (horas_normales * valor_hora) + (horas_extra * valor_hora * 1.20);
								
								Si trabajador_CS = 2 Entonces
									sueldo2 <- sueldo2 + subsidio;
								FinSi
								
								Mostrar "Trabajador 3";
								Mostrar "Ingrese el valor por hora:";
								Leer valor_hora;
								
								Si valor_hora < 6000 Entonces
									Mostrar "Error: el valor por hora debe ser mínimo $6000.";
								SiNo
									Mostrar "Ingrese las horas extra trabajadas:";
									
									Leer horas_extra;
									
									Si horas_extra < 1 O horas_extra > 5 Entonces
										Mostrar  "Error: las horas extra deben estar entre 1 y 5.";
									SiNo
										sueldo3 <- (horas_normales * valor_hora) + (horas_extra * valor_hora * 1.20);
										
										Si trabajador_CS = 3 Entonces
											sueldo3 <- sueldo3 + subsidio;
										FinSi
										
										sueldo_total <- sueldo1 + sueldo2 + sueldo3;
										
										Mostrar "Sueldo total a pagar: $", sueldo_total;
										Mostrar "Presupuesto disponible: $", presupuesto;
										
										Si sueldo_total > presupuesto Entonces
											diferencia <- sueldo_total - presupuesto;
											Mostrar  "Falta dinero: $", diferencia;
										Sino
											diferencia <- presupuesto - sueldo_total;
											Mostrar  "Sobra dinero: $", diferencia;
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
