code segment
assume cs:code
mov ax, 05h
mov bx, 06h
mul bx
hlt
code ends
end
