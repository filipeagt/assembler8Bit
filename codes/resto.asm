;-------------------------------------------------------------------------;
;   Resto da divisão: Dividendo no endereço 15 / divisor no endereço 14   ;
;-------------------------------------------------------------------------;
        STA 12  ;Inicializa o contador em 0
LOOP:   LDA 15
        SUB 14
        JIM END
        STA 15
        LDA 12
        ADD 13
        STA 12
        JMP LOOP
END:    LDA 15  ;Substituir 15 por 12 para exibir o resultado da divisão 
        OUT
HALT:   JMP HALT
        0       ;Contador
        1       ;Constante de incremento
        3       ;Divisor
        7       ;Dividendo