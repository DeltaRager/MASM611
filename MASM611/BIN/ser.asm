data segment
arr1 db 05h,03h,08h,02h,00h,09h
data ends
code segment
assume cs:code,ds:data
mov si,offset arr1
mov ax,0003h
mov cx,0006h
mov bx,0000h


label3: inc si
        inc si
cmp [si],ax
jz label1
dec cx
jnz label3
cmp cx,0000h
jz label2
label1: mov bx,ax
label2: hlt
code ends
end

