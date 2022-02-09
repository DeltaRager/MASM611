
code segment
assume cs:code                                                                                                                                                                                                                                          
start:mov ax, 0003h
mov bx, 0002h
add ax, bx
mov si, 2000h
mov ds:[si],ax                                                                                                                                                                                   
hlt
code ends
end start

