;-----------------------------;
; Shift-left and Shift-right ;
;-----------------------------;
start:  LDI 1
left:   OUT
        SHL
        JIM right       ;Esse comentário é um teste
        JMP left
right:  OUT
        SHR
        JNZ right
        JMP start       ;Retorna ao início
        170             ;Você pode salvar literais
