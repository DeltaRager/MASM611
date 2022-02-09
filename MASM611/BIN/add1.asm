code segment
assume cs:code
mov al,15h
mov bl,03h
mov ah, 0h
div bl  
hlt
code ends
end

