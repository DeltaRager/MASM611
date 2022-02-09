dataseg segment
fac db 08,06,04,02
res dw 00
dataseg ends

codeseg segment
assume cs:codeseg,ds:dataseg
start:
        mov ax,dataseg
        mov ds,ax

        lea si,fac
        call fact
        add res,ax
        inc si
        call fact
        sub res,ax
        inc si
        call fact
        add res,ax
        inc si
        call fact
        sub res,ax
        hlt

  fact proc near
        mov ax,01h
        mov cl,[si]
  re: mul cx
        loop re

        ret
  fact endp

  codeseg ends
  end start