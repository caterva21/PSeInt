//Implementar un login y alta de usuario
Funcion Registro(palabra_R por Referencia,clave_R Por Referencia)
	escribir "******************** Registro ********************";
	escribir "ingrese el usuario para registrarse:";
	leer palabra_R;
	Borrar Pantalla;
	escribir "ingrese una contraseña ";
	leer clave_R;
	Borrar Pantalla;
	
	//Ciclo de verificación de contraseña con mas de 4 digitos
	mientras Longitud(clave_R) < 4 Hacer
		escribir "Usa 4 caracteres como mínimo para la contraseña";
		esperar 1 Segundos;
		escribir "ingrese una contraseña ";
		leer clave_R;	
		Borrar Pantalla;
	FinMientras
	
	Borrar Pantalla;
	escribir "¡ Felicidades su registro fue Exitoso !";
	esperar 2 segundos;
	Borrar Pantalla;
FinFuncion

Funcion  Login(palabra_L Por Referencia,clave_L Por Referencia)
	definir p, c Como Caracter;

	escribir "******************** LOGIN ********************";
	
		//Ciclo de coincidencias de usuario y contraseña 
		repetir 
			escribir "Ingrese Ususario";
			leer p;
			escribir "Ingrese contraseña";
			leer c;
			Borrar pantalla;
				si (p <> palabra_L) o (c <> clave_L) Entonces
					escribir "el usuario o la comtraseña es incorrecto:";
				FinSi
			esperar 2 segundos;
			Borrar pantalla;
		hasta que (p = palabra_L) y (c = clave_L)
		
	escribir "Ingreso al sistema";
	esperar 2 Segundos;
	Borrar pantalla;
FinFuncion

Funcion Menu(palabra_M, clave_M)
	definir x como entero;
	//cartelera del Menu
	Repetir
	escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";	
	escribir "******************** MENU ********************";
	escribir "Opcion 1: Registro";
	escribir "Opcion 2: Login";
	escribir "Opcion 3: cerrar";
	escribir "ingrese la opcion que desea realizar:";
	leer x;
	esperar 1 Segundos;
	Borrar Pantalla;		
	
				//selección
				segun x hacer 
						1: escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
							Registro(palabra_M, clave_M);
						2: escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
							
							//Condicion de verificacion de Registro previo
							si (palabra_M = " ") o (clave_M = " ") Entonces
								Escribir "Ustede no a realizado el registro:";
								esperar 2 segundos;
								Borrar Pantalla;
							SiNo
								Login(palabra_M, clave_M);
							FinSi
						De Otro Modo:
							escribir "Fin del proceso";
				FinSegun
	Hasta Que  x >= 3
FinFuncion

//Programa principla
Proceso Trabajo
	//Definicion de variables globales
	definir palabra, clave Como Caracter;
	//Inicialización de las variables
	palabra <- " ";
	clave <- " ";
	
	Menu(palabra,clave);
FinProceso
