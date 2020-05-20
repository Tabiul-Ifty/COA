.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'TYPE A BINARY NUMBER ,UP TO 16 DIGITS : $'
MSG1 DB 0DH,0AH,'IN HEX IT IS  $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX ,MSG
    MOV AH,9
    INT 21H
    
    
    INPUT:
    
    MOV AH,1
    INT 21H
    CMP AL,0DH
    JE JUMP
    AND AL,0FH
    SHL BX,1
    OR BH,AL
    JMP INPUT
    
    JUMP:
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    
    
    MOV CL,4
    SHR BH,CL
    CMP BH,09H
    JG CHARECTER
    ADD BH,30H
    MOV AH,2
    MOV DL,BH 
    INT 21H
    JMP OUTPUT2
     
    CHARECTER:
    
    ADD BH,37H
    MOV AH,2
    MOV DL,BH 
    INT 21H 
    OUTPUT2:
    
     
    MOV CH,BH
    
    AND CH,0FH
    CMP CH,09H
    JG CHAR
    
      
    ADD CH,30H
    MOV AH,2
    MOV DL,CH 
    INT 21H
    JMP FINISH
     
    
    CHAR:
    
    ADD CH,37H
    MOV AH,2
    MOV DL,CH 
    INT 21H 
    FINISH:
    
    MAIN ENDP
END MAIN