; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = SW9 OFF ON ON ON OFF !SW3 !SW2 ON OFF
; LED = $21184
; SW  = $21185

leaw $AND9, %A
movw $A, %D
move $512, (%A)
andw 


