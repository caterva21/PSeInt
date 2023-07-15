//Se ingresa 5 palabras por teclado. Determinar como una funcion 
//cuantas letras A tiene cada una de ellas. En cada caso, informar 
//la cantidad mediante el prograa principal
Funcion contador <- buscador(palabra)
	//Variables locales
	Definir contador, j como entero;
	contador <- 0;
	//ciclo que recorrer la palabra caracter por caracter
	Para  j <- 0 hasta Longitud(palabra) -1 Hacer
		//Compara cada caracter con la letra "a" o "A"
		//si coincide le agrega 1 al contador
		Si (Subcadena(palabra, j, j) == "a") o (Subcadena(palabra, j, j) == "A") Entonces
			//La funcion (buscador) devuelva el valor de la variable contador
			contador <- contador + 1;
		FinSi
	FinPara
FinFuncion

//Programa principal
Proceso buscando_a
	//variable globales
	Definir palabra Como Caracter;
	Definir i Como Entero;
	//Ciclo de ingreso por teclado 5 veces
	Para i <- 0 Hasta  5 Con Paso 1 Hacer
		Escribir('Ingrese palabra:');
		Leer palabra;
		//se publica el valor de la variable contador
		Escribir  buscador(palabra);
	FinPara
FinProceso
