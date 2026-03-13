
	Proceso SerieDeFibonacci
		Definir cantidadTerminos, turno Como Entero;
		Definir terminoAnterior, terminoActual, terminoSiguiente Como Entero;
		
		Escribir "Cuantos terminos de Fibonacci deseas ver?";
		Leer cantidadTerminos;
		
		terminoAnterior <- 0;
		terminoActual <- 1;
		turno <- 1;
		
		Mientras turno <= cantidadTerminos Hacer
			Si turno == 1 Entonces
				Escribir "Termino ", turno, ": ", terminoAnterior;
			SiNo
				Si turno == 2 Entonces
					Escribir "Termino ", turno, ": ", terminoActual;
				SiNo
					terminoSiguiente <- terminoAnterior + terminoActual;
					Escribir "Termino ", turno, ": ", terminoSiguiente;
					terminoAnterior <- terminoActual;
					terminoActual <- terminoSiguiente;
				FinSi
			FinSi
			
			turno <- turno + 1;
		FinMientras
FinProceso
