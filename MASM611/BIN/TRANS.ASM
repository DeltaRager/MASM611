        code segment
        assume cs:code,ds:code 
        
                org 1000h
                MOV SI,1500H
		MOV AL,36H
		OUT 16H,AL
		MOV AL,05H
		OUT 10H,AL
		MOV AL,01H
		OUT 10H,AL
	RELOAD:	MOV CL,05H
	CHECK:	IN AL,0AH
		TEST AL,04H
		JZ CHECK
		MOV AL,[SI]
		OUT 08,AL
		INC SI
		CMP AL,3FH
		JNZ RELOAD
		LOOP CHECK
		INT 02

        code ends
                end
