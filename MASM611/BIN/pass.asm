data segment
passward db 'failsafe'
destr db 'failsafe'
message db 'strings are equal'
data ends
code segment
assume cs:code,ds:data,es:data
start:
        mov ax,data
        mov ds,ax
        mov es,ax
        lea si,passward
        lea di,destr
        mov cx,08
        cld
        repe cmpsb
        jne notequal
        mov ah,09
        mov dx,offset(message)
        int 21h
        notequal:
                mov ax,4c00h
                int 21h
hlt               
code ends
end start

