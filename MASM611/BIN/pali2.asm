data segment
str db "madam$"
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


mov cx,count
lea si,str

l9:mov al,[si]
   cmp [di],al
   je res1
   mov bx,00
   jmp halt

res1:inc si
     inc di
     mov bx,01
     loop l9

halt:hlt
code ends
end start





