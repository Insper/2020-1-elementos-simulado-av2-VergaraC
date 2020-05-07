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
    leaw $contador_valor, %A
    movw (%A),%D
    leaw $proxRAM, %A ; N sei como manda pro valor dentro do proxRAM
    movw %D, %A


    leaw $contador_valor, %A
    movw (%A), %D
    incw %D
    leaw $contador_n, %A
    leaw $END, %A
    subw %D, (%A), %D
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

