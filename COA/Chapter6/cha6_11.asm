.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0DH,0AH,'ENTER A HEX DIGIT : $'
MSG1 DB 0DH,0AH,'IN DECIMAL IS IT $'
MSG2 DB 0DH,0AH,'DO YOU WANT TO DO IT AGAIN ? $'
MSG3 DB 0DH,0AH,'ILLEGAL CHARECTER - ENTER 0...9 OR A...F : $'
MSG4 DB 0DH,0AH,'SORRY RELOAD THE PROGRAM  $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    INPUT:
    MOV CL,30H
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    CMP AL,46H
    JG  ANOTHER
    MOV BH,AL 
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    JMP STEP 
    AGAIN:
    ANOTHER:
    INC CL
    CMP CL,33H
    JE FINISH
    
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
    JG CHAR
    
    MOV AH,2
    MOV DL,BH
    INT 21H 
    JMP FIN
    CHAR:
    MOV AH,2
    MOV DL,31H
    INT 21H
    SUB BH,11H
    MOV DL,BH
    INT 21H
    FIN:
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    CMP AL,59H
    JE INPUT
    CMP AL,79H
    JE INPUT
    
    FINISH:
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    
    
    
    
    MAIN ENDP
END MAIN