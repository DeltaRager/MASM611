
code segment
assume cs:code
start:
mov ax,02
mov bx,05
add ax,bx
mov cx,ax
sub ax,ax
add ax,bx
sub cx,ax
mov bx,cx
mov ax,cx
mul bx
mov dx,ax
mov ax,cx
hlt
code ends
end start

