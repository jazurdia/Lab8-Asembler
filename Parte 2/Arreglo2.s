/* -----------------------------------------------
* UNIVERSIDAD DEL VALLE DE GUATEMALA 
* Organización de computadoras y Assembler
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
formatoMenu: .asciz "Menu: \n1. Leche\n2. P. Galletas\n3. Mantequilla\n4. Queso\n5. Uni. Pan\n6. Jalea \n7. Uni. Yogurt\n8. Lb. Manzana\n9. Salir\n"


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

.text
.align 2
.global main
.global salir
.type main,%function

main:
	stmfd sp!,{lr}
	
	mov r7, #4 // Syscall 4 - print
    mov r0, #1 // 1 = stdout (salida estandar)
    ldr r1, =formatoNombre // r1 = dirección de la cadena
    mov r2, #20// r2 = tamaño de cadena
    swi 0 // llama a Syscall 4


	ldr r0, =formatoS
	ldr r1, =nombre
	bl scanf
	
	b menu2
	

salir:
	mov r7, #4 // Syscall 4 - print
    mov r0, #1 // 1 = stdout (salida estandar)
    ldr r1, =formatoSalida1 // r1 = dirección de la cadena
    mov r2, #23// r2 = tamaño de cadena
    swi 0 // llama a Syscall 4
	
	mov r7, #4 // Syscall 4 - print
    mov r0, #1 // 1 = stdout (salida estandar)
    ldr r1, =formatoSalida2 // r1 = dirección de la cadena
    mov r2, #37 // r2 = tamaño de cadena
    swi 0 // llama a Syscall 4
	

	@@ Ciclo de Leche
	ldr r0, =formatoLeche
	ldr r1, =cantidad_Solicitada_Leche
	ldr r1, [r1]
	bl printf

	ldr r0, =formatoNum
	ldr r2, =precio_Leche
	ldr r2, [r2]
	ldr r1, =cantidad_Solicitada_Leche
	ldr r1, [r1]
	mul r1, r1, r2
	bl printf

	@@ Ciclo de Galletas
	ldr r0, =formatoGalleta
	ldr r1, =cantidad_Solicitada_Galletas
	ldr r1, [r1]
	bl printf

	ldr r0, =formatoNum
	ldr r2, =precio_Galletas
	ldr r2, [r2]
	ldr r1, =cantidad_Solicitada_Galletas
	ldr r1, [r1]
	mul r1, r1, r2
	bl printf

	@@ Ciclo de Mantequilla
	ldr r0, =formatoMantequilla
	ldr r1, =cantidad_Solicitada_Mantequilla
	ldr r1, [r1]
	bl printf

	ldr r0, =formatoNum
	ldr r2, =precio_Mantequilla
	ldr r2, [r2]
	ldr r1, =cantidad_Solicitada_Mantequilla
	ldr r1, [r1]
	mul r1, r1, r2
	bl printf

	@@ Ciclo de Queso
	ldr r0, =formatoQueso
	ldr r1, =cantidad_Solicitada_Queso
	ldr r1, [r1]
	bl printf

	ldr r0, =formatoNum
	ldr r2, =precio_Queso
	ldr r2, [r2]
	ldr r1, =cantidad_Solicitada_Queso
	ldr r1, [r1]
	mul r1, r1, r2
	bl printf

	@@ Ciclo de Pan
	ldr r0, =formatoPan
	ldr r1, =cantidad_Solicitada_Pan
	ldr r1, [r1]
	bl printf

	ldr r0, =formatoNum
	ldr r2, =precio_Pan
	ldr r2, [r2]
	ldr r1, =cantidad_Solicitada_Pan
	ldr r1, [r1]
	mul r1, r1, r2
	bl printf

	@@ Ciclo de Jalea 
	ldr r0, =formatoJalea
	ldr r1, =cantidad_Solicitada_Jalea
	ldr r1, [r1]
	bl printf

	ldr r0, =formatoNum
	ldr r2, =precio_Jalea
	ldr r2, [r2]
	ldr r1, =cantidad_Solicitada_Jalea
	ldr r1, [r1]
	mul r1, r1, r2
	bl printf

	@@ Ciclo de Yogurt
	ldr r0, =formatoYogurt
	ldr r1, =cantidad_Solicitada_Yogurt
	ldr r1, [r1]
	bl printf

	ldr r0, =formatoNum
	ldr r2, =precio_Yogurt
	ldr r2, [r2]
	ldr r1, =cantidad_Solicitada_Yogurt
	ldr r1, [r1]
	mul r1, r1, r2
	bl printf

	@@ Ciclo de Manzana
	ldr r0, =formatoManzana
	ldr r1, =cantidad_Solicitada_Manzana
	ldr r1, [r1]
	bl printf

	ldr r0, =formatoNum
	ldr r2, =precio_Manzana
	ldr r2, [r2]
	ldr r1, =cantidad_Solicitada_Manzana
	ldr r1, [r1]
	mul r1, r1, r2
	bl printf

	@@ Total
	ldr r0, =formatoTotal
	ldr r1, =total
	ldr r1, [r1]
	bl printf


	mov r0, #0
	mov r3, #0
	
	ldmfd sp!,{lr}
	bx lr
