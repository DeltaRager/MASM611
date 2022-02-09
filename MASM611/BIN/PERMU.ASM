codeseg segment
assume cs:codeseg,ds:dataseg
start:
      mov ax,dataseg
      mov ds,ax
      lea si,num
      mov ax,[si]
      call fact
      lea di,res
      mov [di],ax
      mov ax,[si]
      lea si,r
      sub ax,[si]
      call fact
      lea di,res1
      mov [di],ax
      lea si,res
      lea di,res1
      mov ax,[si]
      mov bx,[di]
      div bx
      lea di,p
      mov [di],ax
      hlt
      fact proc near
      mov ch,00
      mov ah,00
      mov cx,ax
      mov ax,01
      l1:
         mul cx
         loop l1
      ret
      fact endp
codeseg ends
dataseg segment
num db 05h
r db 03h
res db ?
res1 db ?
p db ?
dataseg ends
end
