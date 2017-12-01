    PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV R0,#45   ; the three no's from which largest no to be found are stored in R0,R1,R2
	MOV R1,#50
	MOV R2,#10
	MOV R3,#0    ; The largest of 3 is stored in R# so intialized to 0   
	CMP R0,R1     ;compare R0 an R1
	BLT LOOP1     ;if Ro is less then go to loop1
	CMP R0,R2      ; otherwise compare R0 and R2
	BGT LOOP2
LOOP1 CMP R1,R2      ; compare R1 and R2
      BGT LOOP3      ;If R1 is greater goto loop3
	  MOV R3,R2    ; otherwise R2 is largest so move r2 to r3
	  B STOP
LOOP2  MOV R3,R0     ;R0 is largset so move ro to r3
      B STOP
LOOP3 MOV R3,R1     ;R1 is largset so move r1 to r3
      B STOP
STOP B STOP	  
	  ENDFUNC
	  END
		  
