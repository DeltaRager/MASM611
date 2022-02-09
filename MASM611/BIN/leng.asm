data segment
string DB "malayalam address$"
len equ $-string-1
msg DB "The length of the string is: $"

data ends
Assume cs:code, ds:data
code segment
start:
mov ax, data
mov ds,ax
mov al, '$'
LEA SI, string
XOR cx, cx
loop1:
cmp [si], al
je loop2
inc si
inc cl
jmp loop1
loop2:
lea dx, msg
mov ah, 09h
int 21h
mov dl,cl
add dl, 30h
mov ah, 02h
int 21h
mov ah, 4ch
int 21h
hlt
code ends
end start