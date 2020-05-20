
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    SUB AL,30H 

    MOV BH,AL
    INT 21H
    SUB AL,30H

    MUL BH 
   
    AAM 

    ADD AH,30H
    ADD AL,30H

    MOV BX,AX
   
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
   
    MAIN ENDP
END MAIN