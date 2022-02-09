data segment
password db 'failsafe';
deststr db 'feelsafe';
message db 'string are equal'
data ends
code segment
assume cs:code,ds:data,es:data
mov ax,data
mov ds,ax
lea si,password
lea di,deststr
mov cx,08
cld
repe cmpsb
jne noteequal
mov ah,09
mov dx,
int 2h
noteequal:mov ax,4000h
int 21h
code ends
end
hlt

