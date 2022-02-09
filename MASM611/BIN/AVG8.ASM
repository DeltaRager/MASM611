DATA SEGMENT
NUM1 DB 09H
NUM2 DB 03H
NUM3 DB 03H
AVG DB ?
Data ends
Code segment
Assume CS:Code, DS:Data
Start: MOV AX, Data
       MOV DS, AX
       MOV AL, NUM1
       ADD AL, NUM2
       ADD AL, NUM3
       MOV AH, 0H
       MOV DL, 03H
       DIV DL
       MOV AVG, AL
       HLT
       Code ends
       End start
