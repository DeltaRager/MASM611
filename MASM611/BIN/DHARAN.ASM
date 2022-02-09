data segment
org 2000h
array db 01h,02h,03h
count equ 3
data ends
code segment
org 500h
assume cs:code, ds:data
start: mov ax, data         
mov ds, ax
mov ax, 0h
mov si, 2000h
mov cx, count
mov bx, 0
add ax, 0h
rpt:add al, ds:[si]
inc si
loop rpt
mov ds:[si],ax                                                                                                                                                                                                                                                
hlt
code ends
end start  


