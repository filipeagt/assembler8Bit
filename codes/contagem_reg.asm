;-------------------------;
;   Contagem Regressiva   ;
;-------------------------;
        LDI 0
LOOP:   SUB VALOR
        OUT
        JMP LOOP
VALOR:  1