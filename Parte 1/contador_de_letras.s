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

    @@ Suponemos que:
    @@ r0 = cadena de texto
    @@ r1 = letras de la cadena de texto
    

    #Iniciamos el programa
    ldr r1, =r0
    ldr r1, [r1]

    add r3, r3, #1 @@ contador de letras

    ldrb r2, [r1, #4]
    cmp r2, #0x00
    bne comparadorv2_2

    str r3, r0

    mov pc, lr
