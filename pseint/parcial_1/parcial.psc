Algoritmo maria_vestidos
	definir altoVestido, anchoVestido como Real;
	definir altoTela, anchoTela como Real;
	
	altoTela <- 200; // En centimetros xd
	anchoTela <- 100; // En centimetros xd
	
	Mostrar "Ingrese el largo del vestido (en metros):";
	leer altoVestido; // Mas adelante se convierte a cm
	
	si altoVestido > 0.15 Entonces // 0.15 porque aun no fue convertido a cm
		Mostrar "Ingrese el ancho del vestido (en metros):";
		leer anchoVestido;
		si anchoVestido > 0.10 Entonces // 0.10 porque aun no fue convertido a cm
			
			altoVestido <- altoVestido * 100 // El valor se pidio en metros, pero se convierte a centimetros para manejo interno 
			anchoVestido <- anchoVestido * 100 // Lo de arriba
			
			sobraAlto1 <- altoTela - altoVestido
			sobraAncho1 <- anchoTela - anchoVestido
			
			sobraAlto2 <- altoTela - anchoVestido
			sobraAncho2 <- anchoTela - altoVestido
			
			si (sobraAlto1 >= 0 y sobraAncho1 >= 0) o (sobraAlto2 >= 0 y sobraAncho2 >= 0) Entonces
				
				si (sobraAlto1 = 0 y sobraAncho1 = 0) y (sobraAlto2 = 0 y sobraAncho2 = 0) Entonces
					Mostrar "No sobran retazos de tela";
				SiNo
					si altoVestido > altoTela o anchoVestido > anchoTela Entonces
						anchoTemporal <- anchoVestido
						altoTemportal <- altoVestido
						
						anchoVestido <- altoTemportal
						altoVestido <- anchoTemporal
						Mostrar "Logger: vestido rotado"
					FinSi
					
					retazo2Alto <- altoTela
					retazo2Ancho <- anchoTela - anchoVestido
					
					retazo1Alto <- altoTela - altoVestido
					retazo1Ancho <- anchoTela - retazo2Ancho
					
					numeroRetazos <- 0
					
					si retazo1Alto > 0 y retazo1Ancho > 0 Entonces
						numeroRetazos <- numeroRetazos + 1
						Mostrar "Retazo sobrante: ", retazo1Alto, "cm de alto, ", retazo1Ancho, "cm de ancho sobrantes";
					FinSi
					
					si retazo2Alto > 0 y retazo2Ancho > 0 Entonces
						numeroRetazos <- numeroRetazos + 1
						Mostrar "Retazo sobrante: ", retazo2Alto, "cm de alto, ", retazo2Ancho, "cm de ancho sobrantes";
					FinSi
					
					Mostrar "Sobraron ", numeroRetazos, " retazos de tela";
					
					//Mostrar "Sobran: ", retazo2Alto, "cm de alto, ", retazo2Ancho, "cm de ancho en el segundo retazo";
				FinSi
			SiNo
				Mostrar "Error: No es posible realizar el vestido con un solo retazo";
			FinSi
			
		SiNo
			Mostrar "Error: El ancho del vestido es demasiado bajo";
		FinSi
	SiNo
		Mostrar "Error: El alto del vestido es demasiado bajo";
	FinSi
FinAlgoritmo
