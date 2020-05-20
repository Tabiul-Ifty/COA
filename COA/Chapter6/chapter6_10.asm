.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0DH,0AH,'ENTER A HEX DIGIT : $'
MSG1 DB 0DH,0AH,'IN DECIMAL IS IT $'
MSG2 DB 0DH,0AH,'DO YOU WANT TO DO IT AGAIN ? $'
MSG3 DB 0DH,0AH,'ILLEGAL CHARECTER - ENTER (0-9) OR (A-F) : $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    ENTER:
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    CMP AL,46H
    JG  STEP2
    MOV BH,AL 
    JMP STEP 
    AGAIN:
    STEP2:
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    MOV AH,1
    INT 21H
    CMP AL,46H
    JG AGAIN
    MOV BH,AL
    STEP:
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    CMP BH,40H
    JG CHARECTER
    
    MOV AH,2
    MOV DL,BH
    INT 21H 
    JMP FINISH
    CHARECTER:
    MOV AH,2
    MOV DL,31H
    INT 21H
    SUB BH,11H
    MOV DL,BH
    INT 21H
    FINISH:
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    CMP AL,59H
    JE ENTER
    CMP AL,79H
    JE ENTER
    
    
    
    
    
    MAIN ENDP
END MAIN