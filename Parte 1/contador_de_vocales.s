/***
* Organización de Computadoras y Assembler 
* Universidad Del Valle de Guatemala
* Autores: Alejandro Azurdia y Daniel Cabrera
* Carnet: 21242 y 20289
* Fecha: 10 de Mayo de 2022
***/

.text
.align 2
.global contador_de_vocales

contador_de_vocales:
    @@ r0 = cadena de texto
    @@ r1 = contador
    @@ r2 = caractere de la cadena de texto bit a bit
    @@ r3 = ultima letra de la cadena de texto

    add r1, r1, #1 // incrementa el contador
    ldrb r2, [r0, #4] // lee el caracter bit a bit

    cmp r2, #0x61 // compara el caracter
    addeq r1, r1, #1 // si es una vocal incrementa el contador
    cmp r2, #0x65 
    addeq r1, r1, #1
    cmp r2, #0x69
    addeq r1, r1, #1
    cmp r2, #0x6F
    addeq r1, r1, #1
    cmp r2, #0x75
    addeq r1, r1, #1
    cmp r2, #0x79
    addeq r1, r1, #1
    cmp r2, #0x7A
    addeq r1, r1, #1
    cmp r2, #0x41
    addeq r1, r1, #1
    cmp r2, #0x45
    addeq r1, r1, #1
    cmp r2, #0x49
    addeq r1, r1, #1

    str r2, [r3] // guarda el caracter en la ultima letra de la cadena

    add r2, r2, #4 // lee el siguiente bit

    cmp r2, #0x00 // compara el caracter
    bne contador_de_vocales

    mov pc, lr




    



