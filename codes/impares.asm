;------------------------------------------;
;   Exibe os número ímpares em sequência   ;
;------------------------------------------;
        LDI 1
LOOP:   OUT
        ADD 4H  ;Soma o conteudo do endereço 4H ao acc
        JMP LOOP
        2