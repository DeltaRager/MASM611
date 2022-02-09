assume cs:code,ds:data

data segment
arr db 01h,20h,30h,40h,50h
rs db ?
data ends

code segment
start:
mov bx,data
mov bx,cs
mov ds,bx
mov ax,00h
lea bx,arr
add ax,[bx]
jp ad
jnp ap
ad:
mov rs,00h
jmp halt
ap:
mov rs,01h
halt:hlt

code ends
end
