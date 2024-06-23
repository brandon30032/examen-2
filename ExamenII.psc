Función op <- menu
	Limpiar Pantalla
	Escribir '****************************'
	Escribir '* 1. Formula cuadratica    *'
	Escribir '* 2. Tabla de multiplicar  *'
	Escribir '* 3.        Salir          *'
	Escribir '****************************'
	Escribir 'Seleccione la opcion deseada: '
	Leer op
FinFunción

Función FormulaCuadratica
	Definir a, b, c, discriminante, x1, x2 Como Real
	Escribir 'Ingrese el valor de a'
	Leer a
	Si a<>0 Entonces
		Escribir 'Ingrese el valor de b'
		Leer b
		Escribir 'Ingrese el valor de c'
		Leer c
		discriminante <- b^2-4*a*c
		Si discriminante>=0 Entonces
			x1 <- (-b+raiz(discriminante))/(2*a)
			x1 <- (-b-raiz(discriminante))/(2*a)
			Escribir 'Las soluciones para x1 y x2 serian: '
			Escribir ' X1 = ', x1
			Escribir ' X2 = ', x2
		SiNo
			Escribir 'el discriminante es negativo'
		FinSi
	SiNo
		Escribir 'El valor de a no puede ser 0'
	FinSi
	Escribir 'Presione una tecla para continuar'
	Esperar Tecla
FinFunción

Función TablaDeMultiplicar
	Definir tabla Como Entero
	Escribir 'Ingrese el numero para el cual quiere ver la tabla'
	Leer tabla
	Para multiplicador<-1 Hasta 10 Con Paso 1 Hacer
		producto <- tabla*multiplicador
		Escribir tabla, 'X', multiplicador, '=', producto
	FinPara
	Escribir 'Presione una tecla para continuar'
	Esperar Tecla
FinFunción

Algoritmo ExamenII
	Repetir
		op <- menu()
		Según op Hacer
			1:
				FormulaCuadratica()
			2:
				TablaDeMultiplicar()
			3:
				Escribir 'Programa terminado'
			De Otro Modo:
				Escribir 'La opcion indicada no es valida'
		FinSegún
	Hasta Que op=3
FinAlgoritmo
