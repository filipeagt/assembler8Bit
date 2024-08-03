;-------------------;
;   Raiz Quadrada   ;
;-------------------;
        LDI 1
        STA EH
INICIO: LDA FH
        SUB EH
        JIC AQUI
        LDA EH
        SHR
        OUT
HALT:   JMP HALT
AQUI:   STA FH
        LDI 2
        ADD EH
        STA EH
        JMP INICIO
        1   ;Variável auxiliar
        64  ;Valor para ser calculado (Se finalizar o programa em 0, tem raiz exata)