data segment
nae db "gopi$"
reg db ?
data ends
code segment
assume cs:code,ds:data
start:
 mov ax,data
 mov ds,ax
 lea si,nae
 lea di,reg
 mov al,'$'
 mov bl,00h
 mov dl,00h
 mov cx,04h
 l1:
   mov bl,[si]
   inc si
   cmp si,cx
 loop l1
   mov [reg],bl
   mov dl,[reg]
   hlt
   code ends
   end start

