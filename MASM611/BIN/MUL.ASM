DATA SEGMENT
NUM1 DB 05H
NUM2 DB 06H
RES DB ?
DATA ENDS

ASSUME CS: CODE, DS: DATA
CODE SEGMENT
START:
        MOV AX, DATA
        MOV DS, AX
        MOV BL, NUM1
        MUL NUM2
        MOV BH, 00H
        MOV RES, BL
        HLT
CODE ENDS
END START


