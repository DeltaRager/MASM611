data segment 
str db 'carac$'
msg1 db 'yes$'
msg2 db 'no$'
data ends
code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov cl, 00h
lea si, str
rpt:mov ah, [si]
cmp ah, '$'
je loop1
inc cl
inc si
jmp rpt
loop1: dec si
lea di, str
shr cl, 1
rpt2: mov al, [di]
mov ah, [si]
cmp al, ah
jne loop2
dec si
inc di
loop rpt2
lea dx, msg1
mov ah, 09h
int 21h
jmp stop
loop2:lea dx,msg2
mov ah, 09h
int 21h
stop: mov ah, 4ch
int 21h
hlt
code ends
end start