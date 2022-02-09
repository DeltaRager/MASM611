code segment
assume cs:code
mov ax, 5000h
mov ds, ax
start:
mov si, 500h
mov di, 600h
mov cx, 05h
rpt:mov al, [si]
mov [di], al
inc si
inc di
loop rpt
hlt
code ends
end start
