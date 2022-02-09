data segment
str db "Microprocessors$"
rev db 16 dup(0)
count dw ?
data ends

code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax

mov si,offset str
mov di,offset rev

mov al,'$'
l1: cmp [si],'$'
    je len
    inc count
    inc si
    jmp l1

len:add di,count
    mov si,offset str
    mov cx,count

    mov [di],'$'

l2: dec di
    mov al,[si]
    mov [di],al
    inc si
    loop l2
    hlt
    code ends
    end start