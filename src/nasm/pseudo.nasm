;---------------------------------------------------------
; Transcreva o pseudocódigo a seguir para assembly do Z01.1:
;
; 
;    if ( RAM[1] == 1 && RAM[2] > 2 ):
;        RAM[5] = 1
;    else
;        RAM[6] = -2
;
;---------------------------------------------------------

;Pra RAM 1 fazer -1 e se jne 
;Pra RAM 2 fazer -2 e se jg 

leaw $1,%A
movw (%A),%D
decw %D
leaw $END,%A
jne
nop
leaw $2, %A
movw (%A),%D
decw %D
decw %D
leaw $END,%A
jle
nop

leaw $1, %A
movw %A, %D
leaw $5, %A
movw %D, (%A)

END:
    leaw $6,%A
    movw (%A),%D