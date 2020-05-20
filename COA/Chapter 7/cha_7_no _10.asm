.MODEL SMALL
.STACK 100H
.DATA 
MSG DB 'TYPE A HEX NUMBER (O TO FFFF) : $'
MSG1 DB 0DH,0AH,'ILLEGAL HEX DIGIT, TRY AGAIN : $'
MSG2 DB 0DH,0AH,'IN BINARY IT IS $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    
    XOR BX,BX
    MOV CL,4 
    MOV CH,30H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
     
    L1:
    MOV AH,1 
    INT 21H
    CMP AL,0DH 
    JE OU
    CMP AL,39H
    JG LETTER
    AND AL,0FH
    INC CH
    JMP SHIFT
    
    LETTER:
    SUB AL,37H
    INC CH
    SHIFT:
    SHL BX,CL
    
    OR BL,AL
    
    JMP L1 
   
    OU:
    CMP CH,34H
    JE PRINT
    TOP:
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    XOR BX,BX
    MOV CL,4 
    MOV CH,30H
    
     L3:
    MOV AH,1 
    INT 21H
    CMP AL,0DH 
    JE OUTER
    CMP AL,39H
    JG LETTE
    AND AL,0FH
    INC CH
    JMP SHIF
    
    LETTE:
    SUB AL,37H
    INC CH
    SHIF:
    SHL BX,CL
    
    OR BL,AL
    
    JMP L3 
   
    OUTER:
    CMP CH,34H
    JE PRINT
    JL TOP 
    
    PRINT: 
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV CX,16
    L4:
    SHL BX,1
    JC PRINT1
    JNC PRINT0
    PRINT1:
    MOV AH,2
    MOV DL,31H
    INT 21H
    JMP LAST
    PRINT0:
    MOV AH,2
    MOV DL,30H
    INT 21H
    LAST:
    LOOP L4
    
    
    
     
    
    MAIN ENDP
END MAIN