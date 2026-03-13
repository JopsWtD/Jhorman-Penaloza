Proceso SeguroDeAuto
    Definir edadConductor, antiguedadVehiculo Como Entero;
    Definir tieneAccidentesPrevios Como Logico;
    Definir primaBase, recargos, primaFinal Como Real;
    
    primaBase <- 500000;
    recargos <- 0;
    
    Escribir "¿Cuál es la edad del conductor?";
    Leer edadConductor;
    Escribir "¿Cuántos años tiene el vehiculo?";
    Leer antiguedadVehiculo;
    Escribir "¿El conductor tiene accidentes previos? (Verdadero / Falso)";
    Leer tieneAccidentesPrevios;
    
    Si edadConductor < 25 Entonces
        recargos <- recargos + (primaBase * 0.50);
    FinSi
    
    Si antiguedadVehiculo > 10 Entonces
        recargos <- recargos + (primaBase * 0.30);
    FinSi
    
    Si tieneAccidentesPrevios Entonces
        recargos <- recargos + (primaBase * 0.40);
    FinSi
    
    primaFinal <- primaBase + recargos;
    
    Escribir "Prima base: ", primaBase, " pesos";
    Escribir "Recargos aplicados: ", recargos, " pesos";
    Escribir "Prima final del seguro: ", primaFinal, " pesos";
FinProceso

