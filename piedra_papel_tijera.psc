//Escriba un programa que pida al usuario elegir entre "piedra", "papel","tijera"
//Una funcion realizara la jugada de la maquina, que tambien eligira entre las 3 posibilidades
//Otra funcion determinara quien gano. El programa se mostrara mediante el programa principal
Funcion jugada <- maquina
	//Variables locales
	Definir  jugada Como Entero;
	//funcion (maquina) devuelve el valor de la jugada de la maquina que es aleatoria
	jugada <- Aleatorio(1,3);
	//Se publica la jugada de la maquina
	Escribir Sin Saltar'La maquina: ';
	segun jugada hacer
		1: Escribir 'Piedra';
		2: Escribir 'Papel';
		3: Escribir 'Tijera';			
	FinSegun
FinFuncion
//Funcion (ganador) devuelve el valor del resultado ganador 
Funcion resultado <- ganador(eleccion, jugada)
	//Variables locales
	Definir resultado Como Caracter;
	//Casos favorables donde gana el usuario
	Si (eleccion = 1 y jugada = 3) o (eleccion = 2 y jugada = 1) o (eleccion = 3 y jugada = 2) Entonces
		resultado <- 'Usuario es el ganador ';
		SiNo 
		//Casos favorables donde gana la maquina
		Si (eleccion = 1 y jugada = 2) o (eleccion = 2 y jugada = 3) o (eleccion = 3 y jugada = 1) Entonces
			resultado <-  'La maquina es el ganador';
			SiNo 
			//Condicion de empate	
			Si eleccion = jugada Entonces
			resultado<- 'Empate';
			FinSi
		FinSi
	FinSi	
FinFuncion
//Programa principal
Proceso piedra_papel_tijera
	//Variable glogal
	Definir eleccion Como Entero;
	Escribir '******* Piedra Papel o Tijera *******';
	Escribir '1) Piedra';
	Escribir '2) Papel';
	Escribir '3) Tijera';
	Escribir 'Elija una opcion';
	Leer eleccion;
	//La funcion (ganador) recibe como parametro
	//el valor de la variable eleccion y el valor de la variable jugada
	Escribir ganador(eleccion,maquina());
	//Se publica el valor de la variable resultado
FinProceso
