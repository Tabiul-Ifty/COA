.model smasll
.stack 100h
.data
 msg db 0dh,0ah ,'**********$'
 msg1 db 0dh,0ah,'***$'
 msg2 db '****$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,3fh
    int 21h
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CH,AL 
    INT 21H
    
    lea dx,msg
    mov ah,9
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    lea dx,msg1
    int 21h
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,BH
    INT 21H
    MOV DL,CH
    INT 21H 
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    lea dx,msg
    mov ah,9
    int 21h
    int 21h
    int 21h 
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    
    