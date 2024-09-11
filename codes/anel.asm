;-------------------;
;   Contador anel   ;
;-------------------;
start:  LDI 1
loop:   OUT
        SHL
        JNZ loop
        JMP start
