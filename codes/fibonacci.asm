;----------------------------;
;   Sequência de Fibonacci   ;
;----------------------------;
INICIO: LDI 0
        STA FH  ;Endereços FH e EH são as variáveis
        OUT
        LDI 1
        STA EH
        OUT
LOOP:   ADD FH
        JIC INICIO
        STA FH
        OUT
        ADD EH
        STA EH
        OUT
        JMP LOOP