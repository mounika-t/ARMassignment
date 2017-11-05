 PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	  MOV R1,#27
	  MOV R2,#24
	  CMP R1,R2
	  BNE LOOP1
	  B STOP
LOOP1 ITE GT
      SUBGT R1,R1,R2
	  SUBLE R2,R2,R1
	  CMP R1,R2
	  BNE LOOP1
STOP B STOP
     ENDFUNC
	 END
		 