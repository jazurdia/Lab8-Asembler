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



    str r1, =cadena2 // msj
    mov r1, #0
    str r2, =tamCadena2 // tamaño msj
    mov r2, #0

    mov r7, #4 // Syscall 4 - print
    mov r0, #1 // 1 = stdout (salida estandar)
    ldr r1, =cadena2 // r1 = dirección de la cadena
    ldr r2, =tamCadena2 // r2 = tamaño de cadena
    swi 0 // llama a Syscall 4

    // debería imprimir "ingrese..."

    mov r7, #3 // Syscall 3 - read
    mov r0, #0 // 0 = stdin (entrada estandar)
    ldr r2, =tamCadena
    ldr r1, =cadena
    swi 0 // llama a Syscall 3

    // se ha leido una cadena de tamaño n en cadena

    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov r3, #0
    mov r7, #0

    ldr r0, =cadena

.data
.align 2

cadena2: .asciz "msj"  // mensaje de solicitud de cadena
tamCadena2: .word 20 // tamaño del mensaje

cadena: .asciz "lectura de cadena"  //candena de entrada
tamCadena: .word 20 // tamaño de la cadena de entrada





    


