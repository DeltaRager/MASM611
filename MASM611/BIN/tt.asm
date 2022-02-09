code ends
assume cs:code,ds:data
start:
mov ax,01
mov dx,ax

l1:
inc bx
mul bx
cmp bx,cx
jnz l1
hlt
code e3nds
end 