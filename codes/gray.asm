;------------------;
;   Contador Gray  ;
;------------------;
INICIO: LDI 1
        ADD CONT
        STA CONT
        SHR
        XOR CONT
        OUT
        JMP INICIO
CONT:   0