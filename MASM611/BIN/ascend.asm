data segment
list dw 0003h, 0005h, 0002h, 0007h
count equ 4h
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov dx, count-1
l0:mov cx,dx
mov si, offset list
l1:
mov ax, [si]
cmp [si+2], ax
jnl pr1
xchg [si+2],ax
xchg ax, [si]
pr1:
add si, 2
loop l1
dec dx
jnz l0
hlt
code ends
END START

