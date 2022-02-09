data segment
arr db 02h,05h,06h,09h,03h,04h
res db ? dup(0)
data ends
code segment
assume cs:code,ds:data
start:
      mov ax,data
      mov ds,ax
      lea si arr
      lea di res
      mov al,[si]
      mov [di]bp,al
      hlt 
      code ends
      end start
