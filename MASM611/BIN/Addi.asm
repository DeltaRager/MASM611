codeseg segment
assume cs:codeseg
start:
mov ax,02h
mov bx,02h
add ax,bx
hlt
codeseg ends
end