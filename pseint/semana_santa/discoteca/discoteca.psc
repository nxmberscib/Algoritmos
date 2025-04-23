Algoritmo Discoteca
	Definir valor_inicial, valor_vendido, pago_empleados, pago_por_empleado,  ganancia_neta, Resultado_final, porcentaje_Resultado_Final Como Real
	Definir cantidad_empleados Como Entero
	Mostrar "Ingrese el valor total del licor con el que contaba al inicio (en pesos):";
    Leer valor_inicial;
	Si valor_inicial < 0 Entonces
		Mostrar "error: No se puede ingresar valores negativos";
	SiNo
		Mostrar "Ingrese el valor total del licor vendido durante la noche (en pesos):";
		Leer valor_vendido;
		Si valor_vendido < 0 Entonces
			Mostrar "error: No se puede ingresar valores negativos";
		SiNo
			Mostrar "Ingrese la cantidad de empleados de la discoteca esa noche" ;
			Leer cantidad_empleados;
			Si cantidad_empleados <= 0 Entonces
				Mostrar "error: por lo menos debe haber un empleado";
			Sino
				Mostrar "¿Cuánto se le paga a cada empleado?";
				Leer pago_por_empleado;
				Si pago_por_empleado <= 0 Entonces
					Mostrar "Error: se les debe pagar no trabajan gratis";
				SiNo
					pago_empleados <- cantidad_empleados * pago_por_empleado;
					ganancia_neta <- valor_vendido - pago_empleados;
					Mostrar "Ganancia neta después de pagar empleados:", ganancia_neta;
					Si ganancia_neta > valor_inicial Entonces
						Resultado_final <- ganancia_neta - valor_inicial;
						porcentaje_Resultado_Final <- (Resultado_final/ valor_inicial) * 100;
						Mostrar " Se obtuvo ganancia";
						Mostrar "Ganancia:", Resultado_final;
						Mostrar "Porcentaje de ganancia: ", porcentaje_Resultado_Final, "%";
					SiNo
						Resultado_final <- valor_inicial - ganancia_neta;
						porcentaje_Resultado_Final <- (Resultado_final/ valor_inicial) * 100;
						Mostrar "Se tuvo una perdida";
						Mostrar "perdida:", Resultado_final;
						Mostrar "Porcentaje de perdida: ", porcentaje_Resultado_Final, "%"
						Si porcentaje_Resultado_Final > 50 Entonces
							Mostrar "Las pérdidas superaron el 50%";
							Mostrar "El dueño debe cerrar la discoteca";
						SiNo
							Mostrar "Las perdidas fueron menores a 50% no se debe cerrar la discoteca";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
