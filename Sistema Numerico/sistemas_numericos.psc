//Sistemas_numericos es un programa que realize el pasaje:
//1) de base 10 a base {2, 8, 16}
//2) de base {2, 8, 16} a base 10
//3) de base {2, 8, 16} a base {2, 8, 16}

//Funcion que realiza el pasaje de decimal a binario, antes de la coma
Funcion binario <- deci_bin_antes(num_int,base_out)
	Definir s1,s2, binario Como Cadena;
	Definir num Como Entero;
	s1<- ' ';
	s2 <- ' ';
	num <- ConvertirANumero(num_int);
	//proceso de conversion por divisiones sucesivas 
	Repetir
		s1 <- ConvertirATexto(num mod base_out) ;
		num <- Trunc(num / base_out);
		si base_out = 16 Entonces
			segun ConvertirANumero(s1) hacer
				10: s1 <- 'A';
				11: s1 <- 'B';
				12: s1 <- 'C';
				13: s1 <- 'D';
				14: s1 <- 'E';
				15: s1 <- 'F';
			FinSegun
		FinSi
		s2 <- concatenar(s1,s2);
	Hasta Que num < base_out
  //Agresgo el ultimo cociente 
  binario <- Concatenar(ConvertirATexto(num),s2);
FinFuncion

//Funcion que realiza el pasaje de binario a decimal, antes de la coma
Funcion decimal <- bin_deci_antes(num_int,base_int)
	Definir decimal, i Como Entero;
	Definir letra Como Caracter;
	decimal <- 0;
	//CIclo de conversion
	para i <- 1 Hasta Longitud( num_int)  Con Paso 1 Hacer
		letra <- Subcadena(num_int, Longitud(num_int) -i,Longitud(num_int) -i);
		//Seleccion de base
		Si base_int = 16  Entonces
			//Seleccion de letra condicionado por la base 16
			Si  letra = 'A' entonces
				letra <- '10';
			SiNO Si letra = 'B' entonces
					letra <- '11';
				SiNO Si letra = 'C' entonces
						letra <- '12';
					SiNO Si letra = 'D' entonces
							letra <- '13';
						SiNO Si letra = 'E' entonces
								letra <- '14';
							SiNO Si letra = 'F' entonces
									letra <- '15';
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		decimal <- decimal + (base_int ^ (i-1)) * ConvertirANumero(letra);
	FinPara
FinFuncion

//Busqueda del punto decimal
Funcion punto <- busqueda_punto(num_int, pos Por Valor)
	Definir punto como logico;
	Definir i Como Entero;
	punto <- Falso;
	//Busqueda lineal
	Para i <- 0 Hasta Longitud(num_int) Con Paso 1 Hacer
		Si Subcadena(num_int, i, i) = '.' Entonces
			punto <- Verdadero;
			pos <- i;
		FinSi
	FinPara
	Escribir pos;
FinFuncion

//Funcion que realiza el pasaje de decimal a binario, despues de la coma
FUncion despues_db <- deci_bin_despues(num_int,base_out)
	
FinFuncion

//Funcion que realiza el pasaje de binario a decimal, despues de la coma
Funcion despues_bd <- bin_deci_despues(num_int,base_int)
	
FinFuncion

//Procedimiento de pantalla inicial
SubProceso portada
	Escribir'                      ¡QUE BRUTO!  ';
	Escribir'********************************************************';
	Escribir'||||||  ||||||  ||||  ||  ||||||   ||||   ||      ||||||';
	Escribir'||  ||  ||  ||  ||||  ||  ||      ||  ||  ||      ||    ';
	Escribir'||||||  ||  ||  || || ||  || |||  ||||||  ||      ||||||';
	Escribir'||      ||  ||  ||  ||||  ||  ||  ||  ||  ||      ||    ';
	Escribir'||      ||||||  ||  ||||  ||||||  ||  ||  ||||||  ||||||';
	Escribir ' ';
	Escribir'         ||||||  ||||||  |||||   ||||||';
	Escribir'         ||      ||      ||  ||  ||  ||';
	Escribir'         ||      |||||   ||||||  ||  ||';
	Escribir'         ||      ||      ||  ||  ||  ||';
	Escribir'         ||||||  ||||||  ||  ||  ||||||';
	Escribir'????????????????????????????????????????????????????????';
	esperar 1 Segundos;
	Borrar Pantalla;
FinSubProceso

SubProceso Validacion(num_int,base_int, base_out)
	Definir i, j, pos Como Entero;
	Definir delante, despues Como Caracter;
	Definir correcto Como Logico;
	pos <- 0;
	correcto <- Falso;
	//Validacion de base de entrada, solo se admiten valores: {2, 8, 16}
	Repetir
	Si (base_int = 2) o (base_int = 8) o (base_int = 16) o (base_int = 10)   Entonces
		correcto <- Verdadero;
	SiNo 
		Escribir 'Ingrese de vuelta la base de entrada';
		leer base_int;
	FinSi
    Hasta Que 	correcto = Verdadero;
	correcto <- Falso;
	//Validacion de base de salida, solo se admiten valores: {2, 8, 16}
	Repetir
	Si (base_out = 2) o (base_out = 8) o (base_out = 16) o (base_out = 10)   Entonces
		correcto <- Verdadero;
	SiNo 
		Escribir 'Ingrese de vuelta la base de salida';
		leer base_out;
	FinSi
	Hasta Que correcto = Verdadero;
	//Validacion del numero de entrada, solo se admite valores por digito del 0 al 9 y un punto (.) como separacion decimal
	//En caso que la base es 16, se admiten letras {A; B; C; D; E; F}
	correcto <- Falso;
	repetir 
		Para i <- 0 Hasta Longitud(num_int) Con Paso 1 Hacer
			Para j <- 0 Hasta 9 Con Paso 1 Hacer
				Si  (Subcadena(num_int,i,i) = ConvertirATexto(j) ) o (Subcadena(num_int,i,i) = '.') Entonces
					correcto <- Verdadero;
				Finsi
			FinPara
		FinPara
		SI correcto = Falso Entonces
			Escribir 'Ingrese de vuelta numero entrada';
			leer num_int;
		FinSi
		
	Hasta Que correcto = Verdadero
	

	
	
	//Validacion de numero de entrada "num_int"
	Si busqueda_punto(num_int, pos) = Verdadero Entonces
		Si base_int = 16 Entonces
			delante <- Subcadena(num_int,0,pos -1);
			despues <- Subcadena (num_int, pos +1,Longitud(num_int));
			
		SiNo Si base_int <> 16 Entonces
				Escribir' ';
			FinSi
		FinSi
	SiNo Si busqueda_punto(num_int, pos) = Verdadero Entonces
			Si base_int = 16 Entonces	
			Escribir' ';
			SiNo Si base_int <> 16 Entonces
				Escribir' ';
				FinSi	
			FinSi	
		FinSi
	FinSi
FinSubProceso

//Programa principal
Proceso sistemas_numericos
	Definir  base_int, base_out, pos Como Entero;
	Definir num_int como caracter;
	//Pantalla inicial
	portada();
	//Ingreso de valores por teclado
	
	Escribir 'Ingrese el numero:';
	Leer num_int;
	Escribir 'Ingrese la base de entrada ';
	Leer base_int;
	Escribir 'Ingrese la base de salida:';
	Leer base_out;
	//Validacion de datos de entrada
	validacion(num_int, base_int, base_out);
	
		//De base {2, 4, 8} a base 10
		Si (base_out = 10 y base_int= 2) o (base_out = 10 y base_int= 8) o (base_out = 10 y base_int= 16) Entonces
			Escribir bin_deci_antes(num_int, base_int);
			// De base 10 a base {2, 4, 8}
			SiNo Si (base_out = 2 y base_int= 10) o (base_out = 8 y base_int= 10) o (base_out = 16 y base_int= 10) Entonces
				Escribir deci_bin_antes(num_int, base_out);
			FinSi
		FinSi
FinProceso














