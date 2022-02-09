data segment
data ends
code segment
assume cs:code,ds:data
start:
mov ax,02
mov bx,05
add ax,bx
mov cx,ax
sub cx,bx
mov bx,cx
sub ax,bx
mov cx,ax
mul bx
mov dx,ax
mov ax,cx
hlt
code ends
end start
