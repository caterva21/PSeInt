//Implementa Login (ABM), con el concepto de baja logica y baja fisica, para una lista de alumnos
Funcion Administracion(palabra_ad, clave_ad, bandera_ad, j_ad)
	Definir t, z , opcion, cont Como Entero;
	definir  s Como Caracter;
	//Menu de consultas del Adminisstrador
	Repetir
		escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
		escribir "***************** Administrativo *****************";
		Escribir "Opcion 1: Lista de Alumnos regulares:";
		escribir "Opcion 2: Eliminar:";
		escribir "Opcion 3: Cerrar";
		escribir "ingrese la opcion que desea realizar:";
		leer z;
		esperar 1 Segundos;
		Borrar Pantalla;		
		segun z Hacer
			1: escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
				Escribir "Lista de Alumnos regulares dado de Alta:";
				Escribir " ";
				cont <- 0;
				para t<- 0 hasta j_ad-1 Con Paso 1 Hacer
				si bandera_ad[t] = "Alta" entonces
					escribir cont,") ", palabra_ad[t], " ", clave_ad[t], " ", bandera_ad[t];
					cont <- cont + 1;
				FinSi
			FinPara
			escribir " ";
			escribir "Presione cualquier tecla para volver al menu administrativo:";
			Esperar Tecla;
			Borrar Pantalla;
			2:  escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
				Escribir "Eliminar registro:";
				Escribir " ";
				cont <- 0;
						para t<- 0 hasta j_ad- 1 Con Paso 1 Hacer
							escribir cont, ") ",palabra_ad[t], " ", clave_ad[t], " ", bandera_ad[t];
							cont <- cont + 1;
						FinPara
						escribir " ";
						escribir "Deseas eliminar algun registro";
						escribir "Presione (s) para comfirmar:";
						escribir "Presione cualquier otra tecla para canselar:";
						leer s;
						si s = "s" Entonces
							escribir "Ingrese el numero de registro a eliminar:";
							escribir "El numero tiene que ser entre 0 y ",j_ad -1;
							leer opcion; 
							si opcion > (j_ad -1) entonces
								escribir "Registro no encontrado";
								esperar 1 segundo;
							SiNo
								//Baja Fisica
								palabra_ad[opcion] <- " ";
								clave_ad[opcion] <- " ";
								bandera_ad[opcion] <- " ";
								escribir "Se elimino Exitosamente el registro";
								esperar 1 segundo;
							FinSi
						FinSi
						
			esperar 2 segundos;
			Borrar Pantalla;
		finSegun
	Hasta Que  z >= 3
FinFuncion

//Funcion de busqueda lineal
funcion morgan <- busqueda_lineal(vector_B, palabra_B, pos_B Por Referencia, dim_B)
	definir morgan Como Logico;
	definir i Como Entero;
	morgan <- falso;
	//Ciclo de busqueda
	para i <- 0 hasta dim_B-1 Con Paso 1 Hacer
		si vector_B[i] = palabra_B Entonces
			morgan <- Verdadero;
			pos_B <- i;
		FinSi
	FinPara
FinFuncion


//Funcion de comparación  de un vector con vector nulo
Funcion boole <- Comparacion(vector_c, cero_c, dim_c)
	Definir i Como Entero;
	definir boole Como Logico;
	//Inicialización de variables
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
	Hasta Que (boole = Falso) o (i=dim_c-1)	
FinFuncion

//Funcion Inicialización
Funcion Inicializacion(vector, dim_I)
	Definir i Como Entero;
	para i <- 0 hasta dim_I-1 Con Paso 1 Hacer
		vector[i] <- "0";
	FinPara
FinFuncion

Funcion Modificar(vector_palabra_Mo, vector_clave_Mo, pos1_Mo, pos2_Mo, dim_Mo, bandera_Mo)
	definir m Como Caracter;
	pos1_Mo <- 0;
	pos2_Mo <- 0;
	escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
	escribir "******************** Modificar ********************";
	escribir "Desea modificar la contraseña";
	escribir "Presione (s) para comfirmar:";
	escribir "Presione cualquier otra tecla para canselar la modificación:";
	leer m;
	Si m = "s" Entonces
		Borrar Pantalla;
		Login(vector_palabra_Mo, vector_clave_Mo, pos1_Mo, pos2_Mo, dim_Mo, bandera_Mo);
			si bandera_Mo[pos1_Mo] = "Alta" Entonces
				escribir "Escribe la nueva contraseña:";
				leer vector_clave_Mo[pos2_Mo]; 
				Borrar Pantalla;
		
					//Ciclo de verificación de contraseña con mas de 4 digitos
					mientras Longitud(vector_clave_Mo[pos2_Mo]) < 4 Hacer
						escribir "Usa 4 caracteres como mínimo para la contraseña";
						esperar 1 Segundos;
						escribir "ingrese una contraseña ";
						leer vector_clave_Mo[pos2_Mo];
						Borrar Pantalla;
					FinMientras
		
				escribir "La modificación fue exitosa";
				esperar 2 segundo;
				Borrar Pantalla;
			FinSi
	SiNo
		escribir "Se canselo la modificación:";
		esperar 2 segundo;
		Borrar Pantalla;
	FinSi
FinFuncion

//Funcion Baja logica
Funcion Baja(vector_palabra_B, vector_clave_B, pos1_B, pos2_B, dim_B, bandera_B)
	definir b Como Caracter;
	pos1_B <- 0;
	pos2_B <- 0;
	escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
	escribir "******************** Baja ********************";
	escribir "Desea realizar la Baja del sistema";
	escribir "Presione (s) para comfirmar:";
	escribir "Presione cualquier otra tecla para canselar la baja:";
	leer b;
	//Condicional de confirmacion de baja del sistema
	Si b = "s" Entonces
		Borrar Pantalla;
		Login(vector_palabra_B, vector_clave_B, pos1_B, pos2_B, dim_B, bandera_B);
			si bandera_B[pos1_B] = "Alta" Entonces
				//Baja logica consiste en poner una bandera de aaviso y no eliminar del sistema
				bandera_B[pos1_B] <- "Baja";
				Borrar Pantalla;
				escribir "La baja del sistema fue exitosa";
				esperar 2 segundo;
				Borrar Pantalla;
			FinSi
	SiNo
		escribir "Se canselo la baja del sistema";
		esperar 2 segundo;
		Borrar Pantalla;
	FinSi
FinFuncion

Funcion Registro(vector_palabra_R , vector_clave_R,j Por Referencia, bandera_R)
	escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
	escribir "******************** Registro ********************";
	escribir "ingrese el usuario para registrarse:";
	leer vector_palabra_R[j];
	Borrar Pantalla;
	escribir "ingrese la contraseña:";
	leer vector_clave_R[j];
	Borrar Pantalla;
	
	//Verificación de contraseña con mas de 4 digitos
	mientras Longitud(vector_clave_R[j]) < 4 Hacer
		escribir "Usa 4 caracteres como mínimo para la contraseña";
		esperar 1 Segundos;
		escribir "ingrese una contraseña ";
		leer vector_clave_R[j];
		Borrar Pantalla;
	FinMientras
	
	Borrar Pantalla;
	bandera_R[j] <- "Alta";
	escribir "¡ Felicidades su registro fue Exitoso !";
	esperar 2 segundos;
	Borrar Pantalla;
FinFuncion

Funcion  Login(vector_palabra_L, vector_clave_L, pos1_L Por Referencia, pos2_L Por Referencia, dim_L, bandera_L)
	definir palabra_L, clave_L Como Caracter;
	escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
	escribir "******************** LOGIN ********************";
	//Coincidencias de usuario y contraseña 
	repetir 
		escribir "Ingrese Ususario";
		leer palabra_L;
		escribir "Ingrese contraseña";
		leer clave_L;
		Borrar pantalla;
		si (busqueda_lineal(vector_palabra_L, palabra_L, pos1_L, dim_L) = Falso) o (busqueda_lineal(vector_clave_L, clave_L, pos2_L, dim_L) = Falso) Entonces
			escribir "el usuario o la comtraseña es incorrecto:";
		FinSi	
		si (busqueda_lineal(vector_palabra_L, palabra_L, pos1_L, dim_L) = Verdadero) y (busqueda_lineal(vector_clave_L, clave_L, pos2_L, dim_L) = Verdadero) y (pos1_L <> pos2_L) Entonces
			escribir "el usuario o la comtraseña es incorrecto:";
		FinSi
		esperar 1 segundos;
		Borrar pantalla;
	hasta que  (busqueda_lineal(vector_palabra_L, palabra_L, pos1_L, dim_L) = Verdadero) y (busqueda_lineal(vector_clave_L, clave_L, pos2_L, dim_L) = Verdadero) y (pos1_L = pos2_L)
	//Verificacion de borrado logico
	Si bandera_L[pos1_L] = "Baja" Entonces
		escribir "Usted esta dado de baja en el sistema:";
		esperar 2 Segundos;
		Borrar pantalla;
	SiNo
		escribir "Ingreso al sistema";
		esperar 1 Segundos;
		Borrar pantalla;
		
	FinSi
	
FinFuncion

Funcion Menu(vector_palabra_M, vector_clave_M, cero_M, dim_M)
	definir x, j, pos1_M, pos2_M como entero;
	// Definición de la bandera del borrado logico
	definir bandera_M Como Caracter;
	Dimension bandera_M[dim_M];
	//inicializando
	Inicializacion(bandera_M, dim_M);
	pos1_M <- 0;
	pos2_M <- 0;
	j <- 0;
	//Menu Principal
	Repetir
		escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";	
		escribir "******************** MENU ********************";
		escribir "Opcion 1: Registro";
		escribir "Opcion 2: Login";
		escribir "Opcion 3: Modificar";
		escribir "Opcion 4: Baja";
		escribir "Opcion 5: Administrativo:";
		escribir "Opcion 6: cerrar:";
		escribir "ingrese la opcion que desea realizar:";
		leer x;
		esperar 1 Segundos;
		Borrar Pantalla;		
		//Selección
		segun x hacer 
			1: 
				Registro(vector_palabra_M, vector_clave_M, j, bandera_M);
				j <- j + 1;
				
			2: //Condicion de verificacion de Registro previo
				si (comparacion(vector_palabra_M, cero_M, dim_M) = Verdadero) o (comparacion(vector_clave_M, cero_M, dim_M) = Verdadero) Entonces
					escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
					Escribir "Ustede no a realizado el registro:";
					esperar 1 segundos;
					Borrar Pantalla;
				SiNo
					Login(vector_palabra_M, vector_clave_M, pos1_M, pos2_M, dim_M, bandera_M);
				FinSi
				
			3: //Condicion de verificacion de Registro previo
				si (comparacion(vector_palabra_M, cero_M, dim_M) = Verdadero) o (comparacion(vector_clave_M, cero_M, dim_M) = Verdadero) Entonces
					escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
					Escribir "Ustede no a realizado el registro:";
					esperar 1 segundos;
					Borrar Pantalla;
				SiNo
					Modificar(vector_palabra_M, vector_clave_M, pos1_M, pos2_M, dim_M, bandera_M);
				FinSi
			4: //Condicion de verificacion de Registro previo
				si (comparacion(vector_palabra_M, cero_M, dim_M) = Verdadero) o (comparacion(vector_clave_M, cero_M, dim_M) = Verdadero) Entonces
					escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
					Escribir "Ustede no a realizado el registro:";
					esperar 1 segundos;
					Borrar Pantalla;
				SiNo
					Baja(vector_palabra_M, vector_clave_M, pos1_M, pos2_M, dim_M, bandera_M);
				FinSi
			5: //Condicion de verificacion de Registro previo
				si (comparacion(vector_palabra_M, cero_M, dim_M) = Verdadero) o (comparacion(vector_clave_M, cero_M, dim_M) = Verdadero) Entonces
					escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
					Escribir "Ustede no a realizado el registro:";
					esperar 1 segundos;
					Borrar Pantalla;
				SiNo
					Administracion(vector_palabra_M, vector_clave_M, bandera_M, j);
				FinSi
				
			De Otro Modo:
				escribir "Fin del proceso";
		FinSegun
	Hasta Que  x >= 6
FinFuncion

//Programa principla
Proceso Trabajo
	//Definicion de variables globales
	definir vector_palabra, vector_clave, cero Como Caracter;
	definir dim  Como Entero;
	//constante que nos cambia la longuitud del vector usuario y contraseña
	dim <- 20;
	Dimension vector_palabra[dim], vector_clave[dim], Cero[dim];
	
	
	
	//Inicialización 
	Inicializacion(vector_palabra, dim);
	Inicializacion(vector_clave, dim);
	Inicializacion(cero, dim);
	
	//Menu
	Menu(vector_palabra, vector_clave, cero, dim);
	

FinProceso
