data segment
par dw 1235h
data ends

code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax

or par,0000h
pushf
pop ax
and ax,0004
cmp ax,0004
je eve
mov [par+2],00h
jmp halt
eve:mov [par+2],01h
halt: hlt
code ends
end start