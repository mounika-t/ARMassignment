 PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	  MOV R1,#27   ;the no's for which gcd to be found stored in R! &R2
	  MOV R2,#24
	  CMP R1,R2     ;compare R1 and R2
	  BNE LOOP1     ; if they are not equal go to loop1
	  B STOP
LOOP1       ITE GT        
           SUBGT R1,R1,R2    ;If R1 > R2 do R1-R2 and stored in R1
	  SUBLE R2,R2,R1     ;else R2-R1 and stored in R2
	  CMP R1,R2           ; again compare R2 and R2
	  BNE LOOP1           ; if they are unequal repeat the process
STOP B STOP
     ENDFUNC
	 END
		 
