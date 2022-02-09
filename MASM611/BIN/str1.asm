data segment
str db'micromca$'
data ends
code segment
assume ds:data,cs:code
start:
mov dx,data
mov ds,ax
mov ah,09h
mov dx,offset(str)
int 21h
hlt
code ends
end start
