data segment
array dw 0003h, 0005h, 0002h, 0007h, 0f08h
M DW 5h
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
dec m
mov cx, m
mov si, 0
mov bx, array[si]
add si, 2
l1: mov dx, array[si]
cmp bx, dx
jae big
mov bx,dx
big:add si, 2
loop l1
hlt
code ends
END START

