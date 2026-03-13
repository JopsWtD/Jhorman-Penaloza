Proceso ConteoDeSignos
    Definir numeroIngresado Como Entero;
    Definir cantidadPositivos, cantidadNegativos, cantidadCeros, turno Como Entero;
    
    cantidadPositivos <- 0;
    cantidadNegativos <- 0;
    cantidadCeros <- 0;
    turno <- 1;
    
    Mientras turno <= 10 Hacer
        Escribir "Ingresa el numero ", turno, " de 10:";
        Leer numeroIngresado;
        
        Si numeroIngresado > 0 Entonces
            cantidadPositivos <- cantidadPositivos + 1;
        SiNo
            Si numeroIngresado < 0 Entonces
                cantidadNegativos <- cantidadNegativos + 1;
            SiNo
                cantidadCeros <- cantidadCeros + 1;
            FinSi
        FinSi
        
        turno <- turno + 1;
    FinMientras
    
    Escribir "Numeros positivos: ", cantidadPositivos;
    Escribir "Numeros negativos: ", cantidadNegativos;
    Escribir "Numeros iguales a cero: ", cantidadCeros;
FinProceso
