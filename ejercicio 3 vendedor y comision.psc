Algoritmo sin_titulo
	Definir empleado Como Caracter 
	Definir sueldo,venta1,venta2,venta3,tc,comision,pts,ptd Como Real
	Escribir "Nombre del empleado: "
	leer empleado
	escribir "cantidad de sueldo: "
	leer sueldo
	Escribir "primera venta del mes: "
	leer venta1
	escribir "segunda venta del mes: "
	leer venta2
	escribir "tercera venta del mes: "
	leer venta3
	Escribir "el tipo de cambio es: "
	leer tc
	comision=(venta1+venta2+venta3)*0.1
	Escribir "Su comision de este mes es un total de: ",comision
	pts=comision+sueldo
	Escribir "Su pago total en soles de este mes sera de: ",pts
	ptd=pts/tc
	Escribir "Su pago total en dolares de este mes sera de: ",ptd
	
	
FinAlgoritmo
