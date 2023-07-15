//Implementar login con el concepto de ABM, para una lista de alumnos usando vector
funcion morgan <- busqueda_lineal(vector_B, palabra_B, pos_B Por Referencia)
	definir morgan Como Logico;
	definir i Como Entero;
	morgan <- falso;
	//Metodo dde busqueda lineal
	para i <- 0 hasta 19 Con Paso 1 Hacer
		si vector_B[i] = palabra_B Entonces
			morgan <- Verdadero;
			pos_B <- i;
		FinSi
	FinPara
FinFuncion
//Funcion de comparaci�n  de un vector con vector nulo
Funcion boole <- Comparacion(vector_c, cero_c)
	Definir i Como Entero;
	definir boole Como Logico;
	//Inicializaci�n de variables
	boole <- Falso;
	i <- 0;
	//verificaion de vector vacio
	Repetir
		si vector_c[i] = cero_c[i] Entonces
			boole <- Verdadero;
		sino 
			boole <- Falso;
			
		FinSi
		i <- i +1;
	Hasta Que (boole = Falso) o (i=19)	
FinFuncion

//Inicializaci�n de vectores
Funcion Inicializacion(vector_palabra_I, vector_clave_I, cero_I)
	Definir i Como Entero;
	para i <- 0 hasta 19 Con Paso 1 Hacer
		vector_palabra_I[i] <- "0";
		vector_clave_I[i] <- "0";
		cero_I[i] <- "0";
	FinPara	
FinFuncion

Funcion Modificar(vector_palabra_Mo, vector_clave_Mo, pos1_Mo, pos2_Mo)
	definir m Como Caracter;
	pos1_Mo <- 0;
	pos2_Mo <- 0;
	
	escribir "******************** Modificar ********************";
	escribir "Desea modificar la contrase�a";
	escribir "Presione (s) para comfirmar:";
	escribir "Presione cualquier otra tecla para canselar la modificaci�n:";
	leer m;
	Si m = "s" Entonces
		Borrar Pantalla;
		escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
		Login(vector_palabra_Mo, vector_clave_Mo, pos1_Mo, pos2_Mo);
		escribir "Escribe la nueva contrase�a:";
		leer vector_clave_Mo[pos2_Mo]; 
		Borrar Pantalla;
		
		//Ciclo de verificaci�n de contrase�a con mas de 4 digitos
		mientras Longitud(vector_clave_Mo[pos2_Mo]) < 4 Hacer
			escribir "Usa 4 caracteres como m�nimo para la contrase�a";
			esperar 1 Segundos;
			escribir "ingrese una contrase�a ";
			leer vector_clave_Mo[pos2_Mo];
			Borrar Pantalla;
		FinMientras
		
		escribir "La modificaci�n fue exitosa";
		esperar 2 segundo;
		Borrar Pantalla;
	SiNo
		escribir "Se canselo la modificaci�n:";
		esperar 2 segundo;
		Borrar Pantalla;
	FinSi
FinFuncion

Funcion Baja(vector_palabra_B, vector_clave_B, pos1_B, pos2_B)
	definir b Como Caracter;
	pos1_B <- 0;
	pos2_B <- 0;
	escribir "******************** Baja ********************";
	escribir "Desea realizar la Baja del sistema";
	escribir "Presione (s) para comfirmar:";
	escribir "Presione cualquier otra tecla para canselar la baja:";
	leer b;
	//Condicional de confirmacion de baja del sistema
	Si b = "s" Entonces
		Borrar Pantalla;
		escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
		Login(vector_palabra_B, vector_clave_B, pos1_B, pos2_B);
		//Baja fisica
		vector_palabra_B[pos1_B] <- " ";
		vector_clave_B[pos2_B] <- " ";
		Borrar Pantalla;
		escribir "La baja del sistema fue exitosa";
		esperar 2 segundo;
		Borrar Pantalla;
	SiNo
		escribir "Se canselo la baja del sistema";
		esperar 2 segundo;
		Borrar Pantalla;
	FinSi
FinFuncion

//Funcion Registro
Funcion Registro(vector_palabra_R , vector_clave_R,j Por Referencia)

		escribir "******************** Registro ********************";
		escribir "ingrese el usuario para registrarse:";
		leer vector_palabra_R[j];
		Borrar Pantalla;
		escribir "ingrese la contrase�a:";
		leer vector_clave_R[j];
		Borrar Pantalla;
	
	//Ciclo de verificaci�n de contrase�a con mas de 4 digitos
	mientras Longitud(vector_clave_R[j]) < 4 Hacer
		escribir "Usa 4 caracteres como m�nimo para la contrase�a";
		esperar 1 Segundos;
		escribir "ingrese una contrase�a ";
		leer vector_clave_R[j];
		Borrar Pantalla;
	FinMientras
	
	Borrar Pantalla;
	escribir "� Felicidades su registro fue Exitoso !";
	esperar 2 segundos;
	Borrar Pantalla;
FinFuncion

//Funcion Login
Funcion  Login(vector_palabra_L, vector_clave_L, pos1_L Por Referencia, pos2_L Por Referencia)
	//Definicion de variables locales
	definir palabra_L, clave_L Como Caracter;
	
	
	escribir "******************** LOGIN ********************";
	
	//Ciclo de coincidencias de usuario y contrase�a 
	repetir 
		escribir "Ingrese Ususario";
		leer palabra_L;
		escribir "Ingrese contrase�a";
		leer clave_L;
		Borrar pantalla;
		si (busqueda_lineal(vector_palabra_L, palabra_L, pos1_L) = Falso) o (busqueda_lineal(vector_clave_L, clave_L, pos2_L) = Falso) Entonces
			escribir "el usuario o la comtrase�a es incorrecto:";
		FinSi	
		si (busqueda_lineal(vector_palabra_L, palabra_L, pos1_L) = Verdadero) y (busqueda_lineal(vector_clave_L, clave_L, pos2_L) = Verdadero) y (pos1_L <> pos2_L) Entonces
			escribir "el usuario o la comtrase�a es incorrecto:";
		FinSi
		esperar 1 segundos;
		Borrar pantalla;
	hasta que  (busqueda_lineal(vector_palabra_L, palabra_L, pos1_L) = Verdadero) y (busqueda_lineal(vector_clave_L, clave_L, pos2_L) = Verdadero) y (pos1_L = pos2_L)
	
	escribir "Ingreso al sistema";
	esperar 1 Segundos;
	Borrar pantalla;
FinFuncion

//Funcion Menu
Funcion Menu(vector_palabra_M, vector_clave_M, cero_M)
	//Definicion de variables locales
	definir x, j, pos1_M, pos2_M como entero;
	//inicializando
	pos1_M <- 0;
	pos2_M <- 0;
	j <- 0;
	
	//Ciclo de la cartelera del Menu
	Repetir
		escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";	
		escribir "******************** MENU ********************";
		escribir "Opcion 1: Registro";
		escribir "Opcion 2: Login";
		escribir "Opcion 3: Modificar";
		escribir "Opcion 4: Baja";
		escribir "Opcion 5: cerrar";
		escribir "ingrese la opcion que desea realizar:";
		leer x;
		esperar 1 Segundos;
		Borrar Pantalla;		
		
		//Menu de selecci�n
		segun x hacer 
			1: escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
				Registro(vector_palabra_M, vector_clave_M, j);
				j <- j + 1;
				
			2: escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
				
				//Condicion de verificacion de Registro previo
				si (comparacion(vector_palabra_M, cero_M) = Verdadero) o (comparacion(vector_clave_M, cero_M) = Verdadero) Entonces
					Escribir "Ustede no a realizado el registro:";
					esperar 1 segundos;
					Borrar Pantalla;
				SiNo
					Login(vector_palabra_M, vector_clave_M, pos1_M, pos2_M);
				FinSi
			
			3: escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
				
				//Condicion de verificacion de Registro previo
				si (comparacion(vector_palabra_M, cero_M) = Verdadero) o (comparacion(vector_clave_M, cero_M) = Verdadero) Entonces
					Escribir "Ustede no a realizado el registro:";
					esperar 1 segundos;
					Borrar Pantalla;
				SiNo
					Modificar(vector_palabra_M, vector_clave_M, pos1_M, pos2_M);
				FinSi
			4: escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
				
				//Condicion de verificacion de Registro previo
				si (comparacion(vector_palabra_M, cero_M) = Verdadero) o (comparacion(vector_clave_M, cero_M) = Verdadero) Entonces
					Escribir "Ustede no a realizado el registro:";
					esperar 1 segundos;
					Borrar Pantalla;
				SiNo
					Baja(vector_palabra_M, vector_clave_M, pos1_M, pos2_M);
				FinSi
				
			De Otro Modo:
				escribir "Fin del proceso";
		FinSegun
	Hasta Que  x >= 5
FinFuncion

//Programa principla
Proceso Trabajo
	//Definicion de variables globales
	definir vector_palabra, vector_clave, cero Como Caracter;
	Dimension vector_palabra[20], vector_clave[20], Cero[20];
	
	
	
	//Inicializaci�n 
	Inicializacion(vector_palabra, vector_clave, cero);
	
	//Menu
	Menu(vector_palabra, vector_clave, cero);
	

FinProceso
