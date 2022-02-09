data segment 
arr db 09,04,02,16,03
small db  ?
large db  ?
count db 5
data  ends

code segment
assume cs:code,ds:data
   start:
     mov ax,data
     mov ds,ax

     lea bx,arr
     lea si,arr

      mov ch,5
outer: mov al,[bx]
       mov  cl,ch
       mov si,bx

inn:cmp al,[si]
       jg swap
cont: inc si
      dec cl
      jnz inn

      inc bx
      dec ch
      jnz outer

      jmp halt

swap:mov dl,al
     mov al,[si]
     mov [bx],al
     mov[si],dl
     jmp cont

halt:mov al,[arr]
     mov small,al
     mov al,[arr+4]
     mov large,al
     hlt
     code ends
     end start
