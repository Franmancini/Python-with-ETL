Algoritmo sin_titulo
	definir nombre, producto Como Caracter
	definir DNI, precio, cantidad, tc, tps, tpd, IGV, subtotal Como Real
	Escribir "Nombre del cliente: "
	leer nombre
	escribir "Dni del cliente: "
	leer DNI
	escribir "Tipo de producto: "
	leer producto
	escribir "Establecer precio: "
	leer precio
	escribir "Cantidad de productos: "
	leer cantidad
	Escribir "el tipo de cambio actual es: "
	leer tc
	IGV=precio*0.18
	Escribir "El IGV es: ",IGV
	subtotal=precio
	Escribir "El subtotal es: ",subtotal
	tps=subtotal+IGV
	Escribir "El total a pagar en soles es: ",tps
	tpd=tps/tc 
	Escribir "El total a pagar en dolares es: ",tpd
	
	
FinAlgoritmo
