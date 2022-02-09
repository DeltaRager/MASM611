data segment
arr db 7,6,3,8,9
small db ?
large db ?
count db 5
data ends

code segment
assume cs:code,ds:data
start:
   mov ax,data
   mov ds,ax
   lea bx,arr
   lea si,arr
   mov ch,count
   
outer: mov al,[bx]
       mov cl,ch
       mov si,bx

inn:   cmp al,[si]
       jg swap

cont:  inc si
       dec cl   
       jnz inn
       
       inc bx
       dec ch
       jnz outer
       jmp halt

swap:xchg al,[si]
     mov [bx],al
     jmp cont
   
halt: mov al,[arr]
      mov small,al
      mov al,[arr+4]
      mov large,al
 
hlt
code ends
end