data segment
str db "microprocessors$"
rev db 16 dup(0)
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
   mov ah,0H
   jmp halt

res1:inc si
     inc di
     mov ah,01H
     loop l9

halt:hlt
code ends
end





