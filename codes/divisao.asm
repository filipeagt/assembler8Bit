;----------------------------------------------------------------;
;   Divisão: Dividendo no endereço FH / divisor no endereço EH   ;
;----------------------------------------------------------------;
        STA CH  ;Inicializa o contador em 0
LOOP:   LDA FH
        SUB eh
        JIM end
        STA FH
        lda CH
        ADD DH
        STA CH
        JMP LOOP
END:    LDA CH  ;Substituir CH por FH para exibir o resto da divisão 
        OUT
HALT:   JMP HALT
        0       ;Contador
        1       ;Constante de incremento
        3       ;Divisor
        7       ;Dividendo