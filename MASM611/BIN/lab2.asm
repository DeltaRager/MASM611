code segment
assume cs:code
mov al, 05h
mov bl, 03h
add al, bl
hlt
code ends
end