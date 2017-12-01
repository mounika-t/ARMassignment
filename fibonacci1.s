     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R0,#0      ;storing 0 in R0
		MOV R1,#1      ; storing 1 in R0 as series starts with 1 
		MOV R2,#1       ; this is for no  of numbers to be considered  in fibonacci seires
		MOV R3,#0X20000000   ; the series is stored from this mem. loction
		MOV R4,#0          ; register that contains value in series      
LOOP1   CMP R2,#10     ;so r2 is compared with 10 considering only 1st 10 no's in series
	 BLT LOOP      ;if it is less then fibonacci series is found
	 B STOP
LOOP    ADD R4,R0,R1   ;adding previous 2no's and storing in r4
        STR R4,[R3]      ;storing the value in memory location 0X20000000
        MOV R0,R1         ; copying the contents of R1  to R0  for finding next no
	MOV R1,R4         ;  copying the contents of R4  to R1  for finding next no
        ADD R2,R2,1        ; increementing the count value
	B LOOP1            ; branching to loop1 again
STOP	B STOP
        ENDFUNC
    END	 
        
