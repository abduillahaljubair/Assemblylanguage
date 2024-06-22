.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
   ;1 
   MOV AX,7FFFH
   MOV BX,0001H
   ADD AX,BX    
  
       
   ;2   
   MOV AL,00H
   DEC AL
   
   ;3
   MOV AL,7FH
   NEG AL
   

   ;4
   MOV AX,1ABCH
   MOV BX,712AH
   XCHG AX,BX 
    


   
    EXIT:
     
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN