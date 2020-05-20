B.model huge
.stack 100h
.data
msg db 'The sum of :$'
msg1 db ' & $'
msg2 db ' is: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    lea dx,msg 
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al
    
    
  
    lea dx,msg1 
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov cl,al
    
    
    
    lea dx,msg2 
    mov ah,9
    int 21h 
    
    
    add bl,cl
    sub bl,30h
    mov ah,2
    mov dl,bl
    int 21h
    
       
   
    main endp
end main