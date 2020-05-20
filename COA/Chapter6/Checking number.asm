.model small
.stack 100h
.data
str1 db ' zero $'
str2 db ' positive $'
str3 db ' negative $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,30h
    
    jl negative
    je zero
    jg positive
    
     negative: 
       
     mov ah,1
     int 21h
     mov cl,al
     
     jmp display1 
     
     zero:
      
     jmp display2  
     
     positive: 
     
     jmp display3
     
     display1: 
     
     lea dx,str3
     mov ah,9
     int 21h
     
     jmp end_case
     
     display2:
     
     lea dx,str1
     mov ah,9
     int 21h
     
     jmp end_case 
     
     display3: 
     
     lea dx,str2
     mov ah,9
     int 21h
     
     jmp end_case  
     
     end_case :
     
     mov ah,4ch
     int 21h
     
     main endp
end main