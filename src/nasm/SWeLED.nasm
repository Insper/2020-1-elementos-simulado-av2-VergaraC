; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = SW9 OFF ON ON ON OFF !SW3 !SW2 ON OFF     226 fixo
; LED = $21184
; SW  = $21185


leaw $226, %A
movw %A, %D
leaw $21184,%A
movw %D, (%A) ;Acendi o Fixo

leaw $512, %A
movw %A, %D
leaw $21185, %A 
andw (%A), %D, %D
leaw $21184,%A
addw %D,(%A), (%A) ;SW 9 Feito

leaw $8, %A
movw %A, %D
leaw $21185, %A 
andw (%A), %D, %D
notw %D
leaw $1015, %A
subw %D, %A, %D
leaw $21184,%A
addw %D,(%A), (%A) ;SW 3 Feito

leaw $4, %A
movw %A, %D
leaw $21185, %A 
andw (%A), %D, %D
notw %D
leaw $1019, %A
subw %D, %A, %D
leaw $21184,%A
addw %D,(%A), (%A) ;SW 2 Feito


