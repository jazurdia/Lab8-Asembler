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

    // puntuacion
    puntuacion: .word 0

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

        // pedir nombre
        bl pedirCadena // r0 devuelve el nombre
        //str r0, =nombre
        ldr r1, =nombre
        str r0, [r1]

        // pedir apellido
        bl pedirCadena
        //str r0, =apellido
        ldr r1, =apellido
        str r0, [r1]

        mov r0, #0
        mov r1, #0
        mov r2, #0
        mov r3, #0

        // contar las letras de nombre
        ldr r0, =nombre
        ldr r1, [r0] // r0 = cadena de texto con el nombre. 
        bl contador_de_letras
        
        ldr r4, =letrasEnNombre // carga letras el nombre
        str r3, [r4] // asigna el valor de letras en nombre en la variable. 

        mov r0, #0
        mov r1, #0
        mov r2, #0
        mov r3, #0
        mov r4, #0

        // contar las letras de apellido
        ldr r0, =apellido
        ldr r1, [r0]
        bl contador_de_letras

        ldr r4, =letrasEnApellido
        str r3, [r4]

        mov r0, #0
        mov r1, #0
        mov r2, #0
        mov r3, #0
        mov r4, #0

        // contar las vocales de nombre

        ldr r0, =nombre
        ldr r1, [r0]
        bl contador_de_vocales

        ldr r4, =vocalesEnNombre
        str r1, [r4]
        ldr r5, =ultimaLetraNombre
        str r3, [r5]

        mov r0, #0
        mov r1, #0
        mov r2, #0
        mov r3, #0

        // contar las vocales de apellido

        ldr r0, =apellido
        ldr r1, [r0]
        bl contador_de_vocales

        ldr r4, =vocalesEnApellido
        str r3, [r4]
        ldr r5, =ultimaLetraApellido
        str r1, [r5]

        mov r0, #0
        mov r1, #0
        mov r2, #0
        mov r3, #0
        mov r4, #0
        mov r5, #0

        // cargar variables para puntudador. 

        ldr r2, =ultimaLetraNombre
        ldr r2, [r2]


        ldr r5, =ultimaLetraApellido
        ldr r5, [r5]

        // calcular puntos - cantidad de letras
        ldr r0, =letrasEnNombre
        ldr r0, [r0]
        ldr r3, =letrasEnApellido
        ldr r3, [r3]
        ldr r6, =puntuacion
        ldr r6, [r6]

        cmp r0, r3
        addeq r6, r6, #1

        // calcular puntos - cantidad de vocales
        ldr r0, =vocalesEnNombre
        ldr r0, [r0]
        ldr r3, =vocalesEnApellido
        ldr r3, [r3]
        ldr r7, =puntuacion
        ldr r7, [r7]

        cmp r0, r3
        addeq r7, r7, #1

        // calcular puntos - ultima letra
        ldr r0, =ultimaLetraNombre
        ldr r0, [r0]
        ldr r3, =ultimaLetraApellido
        ldr r3, [r3]
        ldr r8, =puntuacion
        ldr r8, [r8]

        cmp r0, r3
        addeq r8, r8, #1

        ldr r9, =puntuacion
        str r8, [r9]


      
        // ¿Cómo guardo en esta variable?
        // imprimir darPts usando Syscalls
        mov r7, #4 // Syscall 4 - print
        mov r0, #1 // 1 = stdout (salida estandar)
        ldr r1, =darPts // r1 = dirección de la cadena
        // darPts "puntos: \n"
        mov r2, #9  // r2 = tamaño de cadena
        swi 0 // llama a Syscall 4

        mov r7, #4 // Syscall 4 - print
        mov r0, #1 // 1 = stdout (salida estandar)
        ldr r1, =puntuacion // r1 = dirección de la cadena
        mov r2, #1  // r2 = tamaño de cadena
        swi 0 // llama a Syscall 4

        //fin

    salir:
        mov r3, #0
        mov r1, #0
        ldmfd sp!, {lr}
        bx lr
        @@ salida


















       


