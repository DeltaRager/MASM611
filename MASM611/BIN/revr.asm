data segment
str db "Microprocessors$"
rev db 06 dup(0)
count dw 0
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea si,str
lea di,rev
repet:
cmp [si],'$'
je l1
inc count
inc si
jmp repet
l1:
mov cx,count
lea si,str
add di,count
mov [di],'$'
l2:
dec di
mov al,[si]
mov [di],al
inc si
loop l2
hlt
code ends
end start 

`
