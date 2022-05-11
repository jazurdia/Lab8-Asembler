/***
* Organización de Computadoras y Assembler 
* Universidad Del Valle de Guatemala
* Autores: Alejandro Azurdia y Daniel Cabrera
* Carnet: 21242 y 20289
* Fecha: 10 de Mayo de 2022
***/

.text
.align 2
.global pedirCadena



// Función que pide una cadena de caracteres al usuario
// Se debe definir el tamaño de la cadena mensaje y de la cadena de entrada.
pedirCadena:
    // r1 = dirección de la cadena (msj)
    // r2 = tamaño de cadena (msj)
    
    ldr r0, =cadena2 // "msj"
    // r1 "Ingrese su nombre \n"
    ldr r3, =tamCadena2

    mov r7, #4 // Syscall 4 - print
    mov r0, #1 // 1 = stdout (salida estandar)
    ldr r1, =cadena2 // r1 = dirección de la cadena
    mov r2, #30 // r2 = tamaño de cadena
    swi 0 // llama a Syscall 4

    // debería imprimir "ingrese..." e

    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov r3, #0
    mov r7, #0

    ldr r2, =tamCadena

    mov r7, #3 // Syscall 3 - read
    mov r0, #0 // 0 = stdin (entrada estandar)
    mov r2, #5
    ldr r1, =cadena // r1 = dirección de la cadena
    swi 0 // llama a Syscall 3

    // se ha leido una cadena de tamaño n en cadena

    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov r3, #0
    mov r7, #0

    mov r7, #0 // Syscall 0 - exit
    swi 0 // llama a Syscall 0
    ldr r0, =cadena  
    
    mov pc, lr
    bx lr

    // devuelve la cadena ingresada en r0

.data
.align 2

cadena2: .asciz "Ingrese su nombre/apellido: \n"  // mensaje de solicitud de cadena
tamCadena2: .word 30 // tamaño del mensaje

cadena: .asciz " "  //candena de entrada
tamCadena: .word 10 // tamaño de la cadena de entrada





    


