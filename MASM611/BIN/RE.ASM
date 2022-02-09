        code segment
        assume cs:code,ds:code
        org 1000h
start1: mov si,1042h
        mov ah,07h
        mov bh,07h
        mov cx,0000h
        mov dx,184fh
        int 10h
st1:    mov ah,02h
        mov bh,00h      
        call getclm
        call delay
        int 10h
        mov ah,09h
        mov dx,1037h
        int 21h
        mov ah,01h
        int 16h
        jz st1
        mov ah,4ch
        int 21h

getclm: mov dh,0bh
        mov dl,[si]
        inc si
        cmp dl,4fh
        je start1
        ret

data:   DB "RELTEN RENU"        

ne:    db 00h,0ah,14h,1eh,28h,32h,3ch,46h,4fh     

delay:  push cx
        push bx
        mov bl,0ffh
v1:     mov cx,0ffffh
v2:     loop v2
        dec bl
        jnz v1
        pop bx
        pop cx
        ret
        code ends
        end


