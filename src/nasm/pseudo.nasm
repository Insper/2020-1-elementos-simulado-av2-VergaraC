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


leaw $1,%A
movw (%A),%D
subw %D, %A, %D
leaw $END,%A
jne %D
nop
leaw $2, %A
movw (%A),%D
subw %D, %A, %D
leaw $END,%A
jle %D
nop

leaw $1, %A
movw %A, %D
leaw $5, %A
movw %D, (%A)
leaw $END2, %A
jmp
nop
END:
    leaw $2, %A
    negw %A
    movw %A, %D
    leaw $6,%A
    movw %D,(%A)

END2: