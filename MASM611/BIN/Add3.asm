codeseg segment
assume cs:codeseg
start:
mov al,02h
mov bl,02h
add al,bl
hlt
codeseg ends
end
