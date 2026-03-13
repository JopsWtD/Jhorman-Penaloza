Proceso EnvioDePaquete
	Definir distancia, kilogramos, cobro como Entero;
	Escribir "¿Cuántos kilómetros de distancia hay para el envío?";
	Leer distancia;
	Escribir "¿Cuántos kilogramos pesa el paquete?";
	Leer kilogramos;
	Si distancia >=1 & distancia <= 10
		Entonces 
		cobro <- 500*kilogramos;
	SiNo
		Si distancia >= 11 & distancia <= 50
			Entonces
			cobro <- 800*kilogramos;
		SiNo
			Si distancia > 50
				Entonces
				cobro <- 1000*kilogramos;
			FinSi
		FinSi
	FinSi
	Si kilogramos > 20
		Entonces cobro <- cobro + (cobro*0.2);
	FinSi
	
	Escribir "El cobro total es de: ",cobro," pesos.";
FinProceso
