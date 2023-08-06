//Dado 3 numeros determinar 
//1) si los 3 numeros son iguales
//2) ordenados acendentemente
//3) ordenados decendentemente
//4) ordenados desordenado
Proceso anidado
	Definir num1 , num2 , num3 Como Entero;
	
	escribir 'Ingre tres numeros:';
	leer num1, num2, num3;
	Si (num1 <> num2) y (num2 <> num3) y ( num1<> num3) Entonces
		Si (num1 < num2 ) y (num2 < num3) Entonces
			Escribir 'Acendente';
			//aca si pones Si en ves de Sino  te sale por pantalla acendente y desordenado
		sino Si (num1 > num2 ) y (num2 > num3) Entonces
				Escribir 'decendente';
			Sino 
				Escribir 'desordenado';
			FinSi
		FinSi
	Sino si (num1 = num2) y (num2 = num3) y ( num1= num3) Entonces
			
			Escribir 'Iguales';
		FinSi
FinSi
	
	
	
	
	
FinProceso
