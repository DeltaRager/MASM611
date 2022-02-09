code segment
assume cs:code
start:mov cx, 2000h
mov ds, cx
mov ax, [500]
mov cx, 3000
mov ds, cx
add ax, [600]
mov cx, 5000
mov ES, cx
mov [700], ax
hlt
code ends
end start

