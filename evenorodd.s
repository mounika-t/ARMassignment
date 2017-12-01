     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
       MOV R1,#43      ;the number that to be checked for even or odd is sored in R1
       MOV R2,#2       
       UDIV R3,R1,R2   ;number is divided by 2
       MLS R3,R3,R2,R1  ;doing R1- R3*R2 and storing in R3
       CMP R3,#0       ;comparing R# with 0
        BNE LOOP        ;branch to loop if not 0
       MOV  R3,#1       ;else store R3 as 1 indicating R1 is even
	    B STOP
LOOP   MOV R3,#0     ;store R3 as 0 indicating R1 is odd
STOP   B STOP
      ENDFUNC
	  END
