/***
* Organización de Computadoras y Assembler 
* Universidad Del Valle de Guatemala
* Autores: Alejandro Azurdia y Daniel Cabrera
* Carnet: 21242 y 20289
* Fecha: 10 de Mayo de 2022
***/

.data
.align 2

    // nombre
    nombre: .asciz "nombre"
    letrasEnNombre: .word 0
    vocalesEnNombre: .word 0
    ultimaLetraNombre: .asciz "a"


    // apellido
    apellido: .asciz "apellido"
    letrasEnApellido: .word 0
    vocalesEnApellido: .word 0
    ultimaLetraApellido: .asciz "a"

    // mensajes a consola
    pedirNombre: .asciz "Ingrese su nombre: \n"
    pedirApellido: .asciz "Ingrese su apellido: \n"
    darPts: .asciz "Puntos: \n"

    // variables de formato
    fnumero: .asciz "%d"
    fstring: .asciz "%s"

.text
.align 2
.globl main
    .type main, %function

    main: 
        stmfd sp!, {lr}

       


