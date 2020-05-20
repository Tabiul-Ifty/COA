.model samll
.stack 100h
.data
msg db 'The sum of $'
msg1 db ' & $'
msg2 db 'is : $'
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
    mov ch,al
    
    lea dx,msg2
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,31h
    int 21h
             
    add bl,ch   
    sub bl,3Ah      
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main 