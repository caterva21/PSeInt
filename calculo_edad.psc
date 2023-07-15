//El usuario escribira la fecha de hoy y su fecha de nacimiento, ambos en formato dd/aaaa
//una funcion debera determinar su edad, la edad se mostrara mediante el programa principal 
Funcion calculo <- edad(f_nacimiento)
	//Variables locales
	Definir calculo Como Entero;
	//El calculo de la edad se realiza solo restando los años
	//que ocupan la posicion 6 hasta el 9
	calculo <-  ConvertirANumero(Subcadena(ConvertirATexto(FechaActual()),0,3)) - ConvertirANumero(Subcadena(f_nacimiento,6,9));
	//La funcion (edad) devuelve el valor de la variable calculo
FinFuncion

//Programa princip
Proceso calculo_edad
	//variables glocales
	
	Definir fecha_hoy, fecha_nacimiento  Como Caracter;
	//Ingreso de datos por teclado
	Escribir 'Ingrese la fecha de nacimiento en formato dd/mm/aaaa';
	Leer fecha_nacimiento;
	//Se publica el valor de la variable calculo
	Escribir 'Su edad es: ', edad(fecha_nacimiento);
FinProceso
