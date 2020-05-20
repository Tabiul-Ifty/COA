.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0DH,0AH,'***********$'
MSG1 DB 0DH,0AH,'****$'
MSG2 DB '****$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    MOV DL,3FH 
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CH,AL 
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
     LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,BH
    INT 21H
    MOV DL,CH
    INT 21H 
    LEA DX,MSG2
    MOV AH,9
    INT 21H
     LEA DX,MSG
    MOV AH,9 
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    
    MAIN ENDP
END MAIN