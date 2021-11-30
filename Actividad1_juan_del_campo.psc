Algoritmo Actividad1_juan_del_campo
	//	Configurar Pseint con tipado fuerte y programa con declaracion de variables
	
	//	En un primer lugar configuraremos pseint en tipado fuerte, para ello nos iremos a configurar->Opciones de lenguaje
	//	En segundo lugar seleccionaremos personalizado y marcaremos las casillas:
	//	no permitir utilizar variables o posiciones sin inicializar y obiglar a definir los tipos de variables
	
	//	Definicion de variables
	Definir producto como cadena
	Definir unidades Como Entero
	Definir precio Como Real
	definir enStock Como Logico
	Definir etiqueta Como Caracter
	
	//Inicializacion de cada una de las variables
	unidades<-0
	precio<-0.0
	producto<-""
	etiqueta<-'A'
	enStock<-Verdadero

	
	//	Pedimos y asignamosn valores a las variable
	Escribir "Dime las Unidades"
	Leer unidades
	
	Escribir "Dime el precio"
	leer precio
	
	Escribir "Dime qué producto quieres"
	Leer producto
	
	Escribir "Etiqueta del producto"
	Leer etiqueta
	
	Escribir "Esta en Stock(Verdadero o Falso)"
	Leer enStock
	
	Escribir "-----------------------------------"
	Escribir ""
	//Mostrar por consola
	Escribir "Las unidades son " ,unidades
	Escribir "Precio del prodcuto " ,precio
	Escribir "El producto es " ,producto
	Escribir "Stock: " ,enStock
	Escribir "Etiquetado " ,etiqueta
	
	Escribir "-----------------------------------"
	Escribir ""
	
	
	//	Funciones de cadena
	
	Definir mensaje,cant Como caracter
	Definir x Como Entero
	
	mensaje<-""
	Escribir "Dime una palabra"
    Leer mensaje
	Dimension cant[Longitud(mensaje)]
	//Le decimos que en el for la x aumente hasta la longitud de nuestra palabra
	Escribir "Letra a letra:"
    Para x<-0 Hasta Longitud(mensaje)-1 Hacer
		cant[x]<-Subcadena(mensaje, x,x)	//guardamos en la array cada letra de la palabra escrita
		Escribir cant[x]	//escribimos letra a letra
    FinPara
	
FinAlgoritmo
