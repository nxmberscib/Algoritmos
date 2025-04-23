Algoritmo carpintero
    Mostrar "Ingrese la dimensión Z (altura):"
    Leer altura
	
    Si altura <= 0 Entonces
        Mostrar "Error: La altura debe ser mayor que cero."
    SiNo
        Mostrar "Ingrese la dimensión N (anchura):"
        Leer anchura
		
        Si anchura <= 0 Entonces
            Mostrar "Error: La anchura debe ser mayor que cero."
        SiNo
            Mostrar "Ingrese valor por litro de pegante:"
            Leer valor_pegante
			
            Si valor_pegante <= 0 Entonces
                Mostrar "Error: El valor del pegante debe ser mayor que cero."
            SiNo
                Mostrar "Ingrese valor por litro de pintura:"
                Leer valor_pintura
				
                Si valor_pintura <= 0 Entonces
                    Mostrar "Error: El valor de la pintura debe ser mayor que cero."
                SiNo
                    Mostrar "Ingrese el precio de venta de la puerta:"
                    Leer precio_venta
					
                    Si precio_venta <= 0 Entonces
                        Mostrar "Error: El precio de venta debe ser mayor que cero."
                    SiNo
                        area <- altura * anchura
                        pegante_litro <- area * 0.5
                        pintura_litro <- area * 1.5
						
                        inversion_pegante <- pegante_litro * valor_pegante
                        inversion_pintura <- pintura_litro * valor_pintura
                        inversion_total <- inversion_pegante + inversion_pintura
						
                        ganancia <- precio_venta - inversion_total
						
                        Mostrar "Litros de pegante requeridos: ", pegante_litro
                        Mostrar "Litros de pintura requeridos: ", pintura_litro
                        Mostrar "Cuánto invirtió: ", inversion_total
                        Mostrar "Su ganancia fue de: ", ganancia
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinAlgoritmo
