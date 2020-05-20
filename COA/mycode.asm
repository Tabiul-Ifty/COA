.model samll
.stack 100h
.data
.code
main proc 
    
  ;  MOV CX,10
;    
;    TOP:
;    
;    MOV BL,5
;    
;    PRINT:
;    MOV AH,2
;    MOV DL,2Ah
;    INT 21H
;    
;    DEC BX
;    CMP BL,0
;    JG PRINT
;    
;    MOV AH,2
;    MOV DL,0DH
;    INT 21H
;    MOV DL,0AH
;    INT 21H  
;    
;    
;    
;    
;    LOOP TOP

     MOV CX,4 
     MOV BH,1
     
     START:
     MOV BL,1 
     
     PRINT:
     
     MOV AH,2
     MOV DL,2Ah
     INT 21H
     
     INC BL
     CMP BL,BH
     JLE PRINT
     
     MOV AH,2
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H
     
     INC BH
     
     LOOP START
    
       
     