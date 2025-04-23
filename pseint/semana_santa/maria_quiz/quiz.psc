Algoritmo Quiz
	Definir produccion, cantidad_cajas, costoU_cajas, CT_cajas Como Real
	Definir CEXtoalla, costo_toalla, CT_toalla, CT_produccion Como Real
	Definir Pvtoalla, VentaT, ganancia, proyeccion Como Real
	
	Mostrar "Ingrese la cantidad de toallas producidas en el día:"
	Leer produccion
	
	Si produccion >= 10 Entonces
		
		cantidad_cajas <- produccion / 12
		
		Mostrar "Ingrese el costo de una caja:"
		Leer costoU_cajas
		
		Si costoU_cajas > 100 Entonces
			
			CT_cajas <- costoU_cajas * cantidad_cajas
			CEXtoalla <- costoU_cajas / 12
			
			Mostrar "Ingrese cuál es el valor de hacer 1 toalla:"
			Leer costo_toalla
			
			Si costo_toalla >= 500 Entonces
				
				CT_toalla <- costo_toalla + CEXtoalla
				CT_produccion <- CT_toalla * produccion
				
				Mostrar "Ingrese el precio de venta de una toalla:"
				Leer Pvtoalla
				
				Si Pvtoalla >= 1000 Entonces
					
					VentaT <- Pvtoalla * produccion
					ganancia <- VentaT - CT_produccion
					
					Si ganancia <> 0 Entonces
						proyeccion <- (2000000 * produccion) / ganancia
						
						Mostrar "El valor total de cajas es: ", CT_cajas
						Mostrar "El valor total en producción es: ", CT_produccion
						Mostrar "La ganancia fue de: ", ganancia
						Mostrar "La cantidad de toallas que debe venderse para obtener una ganancia de $2.000.000 es de: ", proyeccion
					SiNo
						Mostrar "Error: No se puede proyectar con una ganancia de 0."
					FinSi
					
				SiNo
					Mostrar "Error: El precio de venta debe ser al menos $1.000."
				FinSi
				
			SiNo
				Mostrar "Error: El costo de producir una toalla debe ser al menos $500."
			FinSi
			
		SiNo
			Mostrar "Error: El costo de una caja debe ser al menos $100."
		FinSi
		
	Sino
		Mostrar "Error: Se debe producir al menos 10 toallas."
	FinSi
	
FinAlgoritmo
