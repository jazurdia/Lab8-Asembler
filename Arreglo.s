/* -----------------------------------------------
* UNIVERSIDAD DEL VALLE DE GUATEMALA 
* Organizaci�n de computadoras y Assembler
* Ciclo 1 - 2022
*	Daniel Cabrera
*	Javier Azurdia
* Arreglo.s
 ----------------------------------------------- */
 
.data
.align 2

cantidad_Leche: .word 20
precio_Leche: .word 18
cantidad_Solicitada_Leche: .word 0

cantidad_Galletas: .word 32
precio_Galletas: .word 25
cantidad_Solicitada_Galletas: .word 0

cantidad_Mantequilla: .word 15
precio_Mantequilla: .word 10
cantidad_Solicitada_Mantequilla: .word 0

cantidad_Queso: .word 15
precio_Queso: .word 35
cantidad_Solicitada_Queso: .word 0

cantidad_Pan: .word 20
precio_Pan: .word 4
cantidad_Solicitada_Pan: .word 0

cantidad_Jalea: .word 18
precio_Jalea: .word 26
cantidad_Solicitada_Jalea: .word 0

cantidad_Yogurt: .word 35
precio_Yogurt: .word 8
cantidad_Solicitada_Yogurt: .word 0

cantidad_Manzana: .word 35
precio_Manzana: .word 19
cantidad_Solicitada_Manzana: .word 0

nombre: .asciz "                   "
op: .byte ' '
cantidad: .word 0
total: .word 0

formatoNum:	.asciz "%d"
formatoC:	.asciz "%c"
formatoS:	.asciz " %s"
formatoNombre: .asciz "Ingrese su nombre: "
formatoError: .asciz "Ha ocurrido un error"
formatoIngreso: .asciz "Ingrese el numero del alimento que desea comprar: "
formatoAlimento: .asciz "Ingrese la cantidad de producto que desea: "
formatoMenu: .asciz "Menu: \n1. Leche\n2. P. Galletas\n3. Mantequilla\n4. Queso\n5. Uni. Pan\n6. Jalea \n7. Uni. Yogurt\n8. Lb. Manzana\n9. Salir"


formatoSalida1: .asciz "Nombre del cliente: %s \n"
formatoSalida2: .asciz "Producto		Precio		Cantidad		SubTotal\n"
formatoLeche: .asciz "Leche			Q.18		%d			"
formatoGalleta: .asciz "\nGalletas		Q.25		%d			"
formatoMantequilla: .asciz "\nMantequilla		Q.10		%d			"
formatoQueso: .asciz "\nQueso			Q.35		%d			"
formatoPan: .asciz "\nPan			Q.4		%d			"
formatoJalea: .asciz "\nJalea			Q.26		%d			"
formatoYogurt: .asciz "\nYogurt			Q.8		%d			"
formatoManzana: .asciz "\nManzana			Q.19		%d			"
formatoTotal: .asciz "\n\nTotal a pagar: %d\n"