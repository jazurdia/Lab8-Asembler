/***
* Organización de Computadoras y Assembler 
* Universidad Del Valle de Guatemala
* Autores: Alejandro Azurdia y Daniel Cabrera
* Carnet: 21242 y 20289
* Fecha: 10 de Mayo de 2022
***/


.text
.align 2
.global contador_de_letras

contador_de_letras:

    // Suponemos que:
    // r1 = cadena de texto

    //"carla"

    //Iniciamos el programa
    //ldr r1, =r0
    //ldr r1, [r1] //cargar cadena de texto

    add r3, r3, #1 @@ contador de letras

    ldrb r2, [r1, #4] //
    cmp r2, #0x00
    bne contador_de_letras

    //str r3, r0

    //devuelve el contador de letras r3

    mov pc, lr
