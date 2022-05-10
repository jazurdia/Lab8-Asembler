/***
* Organización de Computadoras y Assembler 
* Universidad Del Valle de Guatemala
* Autores: Alejandro Azurdia y Daniel Cabrera
* Carnet: 21242 y 20289
* Fecha: 10 de Mayo de 2022
***/

.text
.align 2
.global puntuador

puntuador:
    // se hará un stack previamente.
    // {letrasEnNombre, vocalesNombre, ultimaLetraNombre, 
    // letrasEnApellido, vocalesApellido, ultimaLetraApellido}

    //r0 = letrasEnNombre
    //r1 = vocalesNombre
    //r2 = ultimaLetraNombre
    //r3 = letrasEnApellido
    //r4 = vocalesApellido
    //r5 = ultimaLetraApellido

    pop{r0 - r5}

    ldr r6, =pts

    cmp r0, r3
    addeq r6, r6, #1
    cmp r1, r4
    addeq r6, r6, #1
    cmp r2, r5
    addeq r6, r6, #1
    str r6, =pts

    mov r0, =pts
    ldr r0, [r0]
    mov r1, #0
    mov r2, #0
    mov r3, #0
    mov r4, #0
    mov r5, #0
    mov r6, #0

    // devuelve el puntaje en r0

    mov pc, lr
    
.data
.align 2
    pts: .word 0
