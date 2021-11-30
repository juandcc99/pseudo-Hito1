Algoritmo Actividad2_juan_del_campo
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir dato como entero
	dato<-0
	
	//La diferencia entre while y do while, es que en el bucle
	//while se evalua la condicion y despues se realiza el codigo mientras
	//que en el do while primero se realiza el codigo y despues se evalua la condicion
	
	//Asignaremos cada ejemplo a una funcion que llamaremos Segun 
	//el ejemplo que queramos ver.
	Escribir "1. Condicional If"
	Escribir "2. Condicional If Else"
	Escribir "3. Condicional If Else If"
	Escribir "4. Conidcional Switch Case"
	Escribir "5. Bucle For"
	Escribir "6. Bucle While"
	Escribir "7. Bucle Do While"
	leer dato
	Segun dato Hacer
		caso 1: condicionalIf()
		caso 2: condicionalIfElse()
		caso 3:	condicionalIfElseIf()
		caso 4: switchCase()
		caso 5: for()
		caso 6: while()
		caso 7: doWhile()
		De Otro Modo:
			Escribir "Por favor seleccione un metodo valido"
	FinSegun
	
FinAlgoritmo

Funcion condicionalIf()
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir n1 Como entero
	n1<-0
	
	Escribir "EJEMPLO DE CONDICIONAL SIMPLE"
	Escribir "Cual es tu edad"
	Leer n1
	
	si n1 >=18 Entonces 
		Escribir "Eres mayor de edad"
	FinSi
	Escribir "Fin del algoritmo"
FinFuncion

funcion condicionalIfElse()
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir n1, n2, n3, nota Como Real
	n1<-0
	n2<-0
	n3<-0
	
	Escribir "EJEMPLO DE CONDICIONAL DOBLE"
	Escribir "Dime tus notas"
	Leer n1,n2,n3
	nota<-(n1+n2+n3)/3
	
	si	nota>=5 Entonces
		Escribir "Tu nota es " ,nota, ".Has aprobado"
	SiNo
		Escribir "Tu nota es " ,nota, ".Has suspendido"
	FinSi
	Escribir "Fin de la evaluación"
FinFuncion
Funcion condicionalIfElseIf()
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir presupuesto Como Entero
	presupuesto<-0
	
	Escribir "EJEMPLO DE CONDICIONAL MULTIPLE"
	Escribir "Que presupuesto mensual hay"
	Leer presupuesto
	si	(presupuesto>10000) Entonces
		Escribir "Plan de gestion activa"
	SiNo
		si (presupuesto<=10000 y presupuesto>=8000) Entonces
			Escribir "Plan de gestion pasiva"
		SiNo
			si (presupuesto<8000) Entonces
				Escribir "No hay plan"
			FinSi
		FinSi
	FinSi
FinFuncion
Funcion switchCase()
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir dia Como Entero
	dia<-0
	
	Escribir "EJEMPLO DE CONDICIONAL MULTIPLE (SWITCH CASE)"
	Escribir "Dime un dia de la semana(Entre 1 y 7)"
	Leer dia
	Segun dia hacer
		caso 1: escribir "Lunes"
		caso 2: escribir "Martes"
		caso 3: escribir "Miercoles"
		caso 4: escribir "Jueves"
		caso 5: escribir "Viernes"
		caso 6: escribir "Sabado"
		caso 7: escribir "Domingo"
		De Otro Modo: escribir "Dime un día válido"
	finsegun
FinFuncion
Funcion for()
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir mensaje como cadena
	Definir contador, i como entero
	mensaje<-""
	contador<-0
	
	Escribir "EJEMPLO DE BUCLE FOR"
	Escribir "Dime un mensaje"
	leer mensaje
	Escribir "Dime un numero de veces para escribir el mensaje"
	leer contador
	
	Para i<-1 hasta contador Hacer
		Escribir mensaje
	FinPara
FinFuncion
Funcion while()
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir dato, nAzar Como Entero
	nAzar<-azar(10)+1
	dato<-0
	
	Escribir "EJEMPLO DE BUCLE WHILE"
	Escribir "Dime un numero entre 1 y 10"
	mientras dato<>nAzar Hacer
		Leer dato
		si dato<>nAzar Entonces
			Escribir "Numero Incorrecto. Vuelva a intenarlo:"
		FinSi
	FinMientras
	Escribir "Numero Correcto"
FinFuncion
Funcion doWhile()
	//DECLARACION DE VARIABLES E INICIALIZACION
	Definir contraseña Como entero
	Definir user Como cadena
	user<-""
	contraseña<-0
	
	Escribir "EJEMPLO DE BUCLE DO WHILE"
	Escribir "Dime el nombre de Usuario"
	Repetir
		Leer user
		user<-Minusculas(user)
		si (user<>"invitado") Entonces
			Escribir "Usuario incorrecto, Vuelva a escribir el Usuario:"
		FinSi
	Hasta Que (user=="invitado")
	
	Escribir "Dime la contraseña"
	Repetir
		Leer contraseña
		si (contraseña<>123) Entonces
			Escribir "Contraseña incorrecta, Vuelva a escribir la contraseña:"
		FinSi
	Hasta Que (contraseña==123)
	Escribir "Acceso aprobado"
FinFuncion
