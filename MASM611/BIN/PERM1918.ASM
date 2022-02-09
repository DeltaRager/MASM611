DATA SEGMENT
NUM DB 02H
DATA ENDS
CODE SEGMENT
        ASSUME DS: DATA, CS:CODE
START:
        MOV AX, DATA
        MOV DS, AX
        LEA SI, NUM
        MOV CX, 06H
        MOV AX, 01H
        MOV BX, AX
L1:     INC BX
        MUL BX
        CMP BX, CX
        JNZ L1
        SUB CX, [SI]
        MOV BX, 00H
        INC SI
        MOV [SI], AX
        MOV AX, 01H
L2:     INC BX
        MUL BX
        CMP BX, CX
        JNZ L2
        MOV BX, AX
        MOV AX, [SI]
        DIV BX
        HLT
CODE ENDS
END START
