//Se recibe un binario de 3 digitos. Una funcion debera convertirla a decimal
//y debera mostrarse por pantalla desde el programa principal
Funcion decimal <- convertidorBD(num_binario)
	//Variables locales
	Definir decimal, i Como Entero;
	Definir letra, txt Como Caracter;
	//Inicializacion
	decimal <- 0;
	txt <- ConvertirATexto(num_binario);
	//CIclo de conversion
	para i <- 1 Hasta Longitud( txt)  Con Paso 1 Hacer
		//Guardo cada caracter de derecha a izquierda, los valores solo pueden tomar {1,0} por ser binario
		letra <- Subcadena(txt, Longitud(txt) -i,Longitud(txt) -i);
		//Decinmal es un sumador, suma 2 elevado a la posicion, contando la posicion de derecha a izquierda
		//si la variable letra tiene valor 1 se realiza la suma, pero si tiene valor 0 se suma cero
		decimal <- decimal + (2 ^ (i-1)) * ConvertirANumero(letra);
		//La funcion (convertidoBD) devuelve el valor de la variable decimal
	FinPara
	
FinFuncion
//Programa principal
Proceso binario
	//Variables globales
	Definir num_binario Como Entero;
	//Ingreso por teclado
	Escribir'Ingrese el numero binaraio:';
	Leer num_binario;
	//Se publica el valor de la variable decimal
	Escribir convertidorBD(num_binario);	
FinProceso
