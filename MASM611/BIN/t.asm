data segment
farr dw 250
cel dw ?
data ends

code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax

or farr,0000h
cmp farr,50
jb exit
cmp farr,250
ja exit

mov ax,farr
sub ax,32
mov bx,5
mul bx
mov bx,9
div bx
mov cel,ax

exit: hlt
code ends
end start