; Preenche a memória RAM
; com um contador progresssivo. O valor
; da RAM[2] tem o tamanho total do vetor.
; O vetor deve começar em RAM[3]
;
; RAM[0] e RAM[1] podem ser usados livremente
;
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  
; RAM[1]:     | RAM[1]:  
; RAM[2]:  4  | RAM[2]:  4
; RAM[3]:  0  | RAM[3]:  0 -
; RAM[4]:  0  | RAM[4]:  1 | vetor
; RAM[5]:  0  | RAM[5]:  2 | 
; RAM[6]:  0  | RAM[6]:  3 -
; RAM[7]:  0  | RAM[7]:  0

leaw $2, %A 
movw (%A),%D 
movw %D, $contador_n
incw %D
movw %D, $proxRAM
leaw $0, $contador_valor

Loop:
    
    leaw $proxRAM, %A ; N sei como manda pro valor dentro do proxRAM
    movw (%A), %D 
    movw %D, %A ;Valor do ProxRam no A

    ;leaw $3, %A
    ;subw %D %A, %A ;Criando o Contador valor apartir do ProxRam

    leaw $contador_valor, %A
    movw (%A),%D

    movw %D, (%A) ;Quero mover o valor do contador_valor para o valor do proxRAM

    leaw $contador_valor, %A
    movw (%A), %D
    incw %D
    leaw $contador_n, %A
    subw %D, (%A), %D
    movw %D, (%A) ;ja diminuindo o  contador_n
    leaw $END, %A
    je %D
    nop
    ;Fazendo os +1 necessarios
    leaw $contador_valor, %A
    movw (%A),%D
    incw %D 
    movw %D, (%A)

    leaw $proxRAM, %A 
    movw (%A),%D
    incw %D 
    movw %D, (%A)
    ;Reinicia o Loop
    leaw $Loop, %A

END:

