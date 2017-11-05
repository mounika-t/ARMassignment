     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R0,#0
		MOV R1,#1
		MOV R2,#1
		MOV R3,#0X20000000
		MOV R4,#0
LOOP1   CMP R2,#10
	    BLT LOOP
	    B STOP
LOOP    ADD R4,R0,R1
        STR R4,[R3]
        MOV R0,R1
		MOV R1,R4
		ADD R2,R2,1
	    B LOOP1
STOP	B STOP
        ENDFUNC
    END	 
        