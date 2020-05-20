
;Problem 9


;.MODEL SMALL
;.STACK 100H
;.DATA
;MSG DB 0DH,0AH,'TYPE A CHARACTER : $'
;MSG1 DB 0DH,0AH,'THE ASCII CODE OF $'
;MSG2 DB ' IN HEX IS $'
;.CODE
;MAIN PROC
;    MOV AX,@DATA
;    MOV DS,AX
;    
;    LEA DX,MSG
;    MOV AH,9
;    INT 21H
;    
;    MOV AH,1
;    INT 21H
;    MOV BH,AL
;    MOV BL,AL
;    
;    LEA DX,MSG1
;    MOV AH,9
;    INT 21H
;    
;    MOV AH,2
;    MOV DL,BH
;    INT 21H
;    
;    LEA DX,MSG2
;    MOV AH,9
;    INT 21H
;    
;    MOV CL,4 
;    SHR BL,CL
;    ADD BL,30H
;    
;    MOV AH,2
;    MOV DL,BL
;    INT 21H 
;    
;    AND BH,0FH
;    CMP BH,09H
;    JG CHAR
;    
;      
;    ADD BH,30H
;    MOV AH,2
;    MOV DL,BH 
;    INT 21H
;    JMP FIN
;     
;     CHAR:
;    
;    ADD BH,37H
;    MOV AH,2
;    MOV DL,BH 
;    INT 21H 
;    FIN:
;    
;    MAIN ENDP
;END MAIN 

   ;Problem 8

 ;
;.MODEL SMALL
;.STACK 100H
;.DATA
;MSG DB 'TYPE A CHARACTER : $'
;MSG1 DB 0DH,0AH,'THE ASCII CODE OF $'
;MSG2 DB ' IN BINARY IS $'
;MSG3 DB 0DH,0AH,'THE NUMBER OF 1 BITS IS $;'
;.CODE                                     
;MAIN PROC                         
;    MOV AX,@DATA
;    MOV DS,AX
;    
;    LEA DX,MSG
;    MOV AH,9
;    INT 21H
;    
;    MOV AH,1
;    INT 21H
;    MOV BH,AL
;    MOV BL,30H
;    LEA DX,MSG1
;    MOV AH,9
;    INT 21H 
;    MOV AH,2
;    MOV DL,BH
;    INT 21H
;    
;    LEA DX,MSG2
;    MOV AH,9
;    INT 21H
;    
;    MOV CX,8
;    L1:
;    SHL BH,1
;    JC PRINT1
;    JNC PRINT0
;    PRINT1:
;    MOV AH,2
;    MOV DL,31H
;    INT 21H
;    INC BL
;    JMP LAST
;    PRINT0:
;    MOV AH,2
;    MOV DL,30H
;    INT 21H
;    LAST:
;    LOOP L1
;    
;    LEA DX,MSG3
;    MOV AH,9
;    INT 21H 
;    MOV AH,2
;    MOV DL,BL
;    INT 21H
;    MAIN ENDP
;END MAIN