data segment 
arr db 0ffh,0A0h,80h,20h,0FEh,10h,20h,40h
data ends
code segment 
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea di,arr
mov cl,04
l1:mov al,[di]
add al,[di+1]
jc l2

mov byte ptr[di+1],00
k1:
mov [di],al 


inc di
inc di

dec cl
jnz l1
jmp hlt1

l2:mov byte ptr[di+1],01
 jmp k1

hlt1:hlt
code ends 
end start

               