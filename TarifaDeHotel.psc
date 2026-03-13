Proceso TarifaDeHotel
    Definir tipoHabitacion Como Cadena;
    Definir mesDeVisita, diasDeEstadia Como Entero;
    Definir tarifaNoche, costoBase, recargo, descuento, costoFinal Como Real;
    
    Escribir "Que tipo de habitacion deseas? (sencilla / doble / suite)";
    Leer tipoHabitacion;
    
    Segun tipoHabitacion Hacer
        caso "sencilla":
            tarifaNoche <- 100000;
        caso "doble":
            tarifaNoche <- 150000;
        caso "suite":
            tarifaNoche <- 250000;
        De Otro Modo:
            Escribir "Tipo de habitacion no valido.";
            tarifaNoche <- 0;
    FinSegun
    
    Escribir "En que mes del anio visitaras el hotel? (1-12)";
    Leer mesDeVisita;
    Escribir "Cuantos dias te vas a quedar?";
    Leer diasDeEstadia;
    
    costoBase <- tarifaNoche * diasDeEstadia
    
    Si mesDeVisita == 1 O mesDeVisita == 6 O mesDeVisita == 7 O mesDeVisita == 12 Entonces
        recargo <- costoBase * 0.30;
    SiNo
        recargo <- 0;
    FinSi
    
    Si diasDeEstadia > 5 Entonces
        descuento <- costoBase * 0.10;
    SiNo
        descuento <- 0;
    FinSi
    
    costoFinal <- costoBase + recargo - descuento
    
    Escribir "Costo base: ", costoBase, " pesos";
    Escribir "Recargo por temporada alta: ", recargo, " pesos";
    Escribir "Descuento por estadia larga: ", descuento, " pesos";
    Escribir "Total a pagar: ", costoFinal, " pesos";
FinProceso
