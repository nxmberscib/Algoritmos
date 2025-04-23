Algoritmo boletos_colectivo
	Definir inicio_comun, fin_comun, inicio_estudiante, fin_estudiante Como Entero
	Definir inicio_trabajador, fin_trabajador Como Entero
	Definir cant_comun, cant_estudiante, cant_trabajador Como Entero
	Definir costo_comun, recaudo_comun, recaudo_estudiante, recaudo_trabajador, recaudo_total Como Real
	Escribir 'Ingrese numeraci�n inicial del servicio com�n:'
	Leer inicio_comun
	Escribir 'Ingrese numeraci�n final del servicio com�n:'
	Leer fin_comun
	Si fin_comun>=inicio_comun Entonces
		Escribir 'Ingrese numeraci�n inicial del servicio de estudiante:'
		Leer inicio_estudiante
		Escribir 'Ingrese numeraci�n final del servicio de estudiante:'
		Leer fin_estudiante
		Si fin_estudiante>=inicio_estudiante Entonces
			Escribir 'Ingrese numeraci�n inicial del servicio de trabajador:'
			Leer inicio_trabajador
			Escribir 'Ingrese numeraci�n final del servicio de trabajador:'
			Leer fin_trabajador
			Si fin_trabajador>=inicio_trabajador Entonces
				Escribir 'Ingrese el costo del boleto com�n:'
				Leer costo_comun
				Si costo_comun>0 Entonces
					cant_comun <- fin_comun-inicio_comun+1
					cant_estudiante <- fin_estudiante-inicio_estudiante+1
					cant_trabajador <- fin_trabajador-inicio_trabajador+1
					recaudo_comun <- cant_comun*costo_comun
					recaudo_estudiante <- cant_estudiante*(costo_comun*0.5)
					recaudo_trabajador <- cant_trabajador*(costo_comun*0.6)
					recaudo_total <- recaudo_comun+recaudo_estudiante+recaudo_trabajador
					Escribir 'Cantidad de boletos servicio com�n: ', cant_comun
					Escribir 'Cantidad de boletos servicio estudiante: ', cant_estudiante
					Escribir 'Cantidad de boletos servicio trabajador: ', cant_trabajador
					Escribir 'Recaudaci�n total: $', recaudo_total
				SiNo
					Escribir 'Error: el costo debe ser mayor que cero.'
				FinSi
			SiNo
				Escribir 'Error: numeraci�n final los trabajadores menor que la inicial.'
			FinSi
		SiNo
			Escribir 'Error: numeraci�n final de los estudiantes menor que la inicial.'
		FinSi
	SiNo
		Escribir 'Error: numeraci�n final de com�n menor que la inicial.'
	FinSi
FinAlgoritmo
