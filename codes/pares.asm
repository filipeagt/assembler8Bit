;----------------------------------------;
;   Exibe os número pares em sequência   ;
;----------------------------------------;
        LDI 0
LOOP:   OUT
        ADD 4H  ;Soma o conteudo do endereço 4H ao acc
        JMP LOOP
        2       ;Endereço 4H