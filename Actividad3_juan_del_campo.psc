Algoritmo Actividad3_juan_del_campo
	Definir dato como entero
	dato<-0
	
	//Asignaremos cada ejemplo a una funcion que llamaremos Segun 
	//el ejemplo que queramos ver.
	Escribir "1. Array Unidimensional"
	Escribir "2. Array Bidimensional"
	
	leer dato
	Segun dato Hacer
		caso 1: arrayUnidimensional()
		caso 2: arrayBidimensional()
		De Otro Modo:
			Escribir "Por favor seleccione un metodo valido"
	FinSegun
	
FinAlgoritmo
Funcion arrayUnidimensional()
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir notas, total Como real
	Definir i Como Entero
	Dimension notas[4]
	total<-0
	
	//Bucle For para meter las notas en la arrayUnidimensional
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Escribir "Dime la nota " ,i
		Leer notas[i]
	FinPara
	
	//Bucle For para Sumar las notas de nuestra arrayUnidimensional
	Para i<-1 Hasta 4 Hacer
		total<-total + notas[i]
	FinPara
	
	Escribir "La suma de las nota es " total
	Escribir "La media de las notas es " total/4
FinFuncion
Funcion arrayBidimensional()
//	DECLARACION DE VARIABLES E INICIALIZACION
	Definir notas,total Como Real
	Definir i, j como entero
	Dimension notas[4,4]
	total<-0
	
	//	Añadir nuestras notas a cada alumno, al ser una arrayBidimensional en nuestra primera columna(i) añadiremos el numero de alumno, y mediante otro
	//	for añadiremos en nuestra segunda columno(j) las notas.
	para i<-0 hasta 3 Con Paso 1 Hacer
		Escribir "Intoduce las notas para cada alumno " ,i, ":" 
		para j<-0 hasta 3 con paso 1 Hacer 
			leer  notas(i,j)
		FinPara
		Escribir "-----------------------------------------"//Linea de separacion entre nAlumnos
	FinPara
	
	Escribir ""//Linea de separacion entre el bucle de meter los datos y el bucle de sacar los datos
	Escribir "Media de las notas de cada alumno:"
	
	//	Almacenaremos en una variable las notas de cada alumno para sacar su media, despues de sacar la media del primer alumno
	//	resetearemos la variable total donde estaban almacenadas la suma de las notas del primer alumno para almacenar las del siguiente alumno
	//	Repetimos el numero de veces que tenemos de alumnos
	para i<-0 hasta 3 Con Paso 1 Hacer
		para j<-0 hasta 3 con paso 1 Hacer
			total<-total+notas(i,j)//Almacenamos en la variable total las notas de un alumno
		FinPara
		Escribir "La media de los notas de cada alumno " ,i, " es de " ,total/4 //media de notas de un alumno
		total<-0//reseteamos la variable total para proceder con el siguiente alumno
		Escribir "-----------------------------------------"//Linea de separacion entre media de alumnos
	FinPara
FinFuncion
	