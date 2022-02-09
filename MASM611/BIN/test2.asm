code segment
assume cs:code
start:
mov ax,02
mov bx,05
mul bx
div ax
hlt
code ends
end start

