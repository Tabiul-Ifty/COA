.model small
.stack 100h
.data
msg db 'Enter A Hex Digit : $'
msg1 db 0dh,0ah,'In Decimal It Is : $'  
;Conversion of hex to dicimal...
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
    
    lea dx, msg1
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,31h
    int 21h
    
    sub bl,11h
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h  
    
    main endp
end main
