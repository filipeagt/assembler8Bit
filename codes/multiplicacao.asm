;-----------------------------------------------;
;   Multiplica variáveis nos endereços 11 e 12  ;
;-----------------------------------------------;
        LDI 0
        STA 12
LOOP:   LDA 12
        ADD 14
        STA 12
        LDA 15
        SUB 13
        STA 15
        JNZ LOOP
        LDA 12
        OUT
HALT:   JMP HALT
        0   ;Variável resultado
        1   ;Constante de decremento
        7   ;fator 1
        6   ;fator 2 deve ser diferente de 0