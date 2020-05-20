.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0DH,0AH,'$'
.CODE
MAIN PROC
      mov cx,127 
      mov bl,0
       
      print: 
      
      mov ah,2
      inc cx
      cmp cx,255  
      ja exit 
      mov dx,cx 
      int 21h 
      mov dx,32d 
      int 21h
      jmp go  
      
      go: 
      
      inc bl 
      cmp bl,10 
      je nl  
      jmp print  
      
      nl: 
      
      mov ah,2
      mov dl,0dh
      int 21h
      mov dl,0ah 
      int 21h
      mov bl,0 
      jmp print 
      
      exit:

    
    MAIN ENDP
END MAIN
    