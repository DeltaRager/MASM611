DATA segment 
MAT1 DW 0022h, 0011h, 0020h, 0033h, 0016h, 0011h, 0013h
MAT2 DW 0020h, 0013h, 0010h, 0023h, 0015h, 0042h, 0031h
RESMAT DW 7 DUP(0)
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
mov cx, 07h
mov bx, cx
mov ax, Data
mov ds, ax
mov ax, 00h
RPT: ADD ax, MAT1[SI]
ADD ax, MAT2[SI]
mov RESMAT[SI], ax
mov ax, 00h
add SI, 02h
loop RPT
hlt
Code ENDS
END START          
