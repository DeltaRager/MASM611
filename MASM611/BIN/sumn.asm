CODE SEGMENT
ASSUME CS:CODE
START:
MOV CX,05H
MOV AX,0000
MOV BX,AX
LABEL1:
INC BX
ADD AX,BX
CMP BX,CX
JNZ LABEL1
HLT
CODE ENDS
END
