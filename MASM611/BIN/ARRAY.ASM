data segment
array DW 1008h, 400h, 305h, 300h, 2005h
data ends

code segment
assume cs:code, ds:data
start:
    mov cl, 05h
    mov ax, data
    mov ds, ax
    mov ax, 0h
 rpt:mov dx, 0h
 add dx, array[si]
     add ax, array[si]
    inc si
    loop rpt
    hlt
    code ends
    end start


