DATA SEGMENT
ARR DB 10H,20H,30H,40H,50H
RES DB 05H DUP(0)
DATA ENDS
ASSUME CS:CODE,DS:DATA
CODE SEGMENT
START:
MOV BX,DATA
MOV DS,BX
MOV BX,OFFSET ARR
MOV DI,OFFSET RES
MOV AX,[BX]
MOV CX,00H
ADD AX,CX
JP L1
L1:MOV DI,00H
JMP HALT
JMP L2
L2:MOV DI,01H
HALT:HLT
CODE ENDS
END