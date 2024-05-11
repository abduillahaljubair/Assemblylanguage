.model small
.stack 100h
.data
a db ?
b db ?
input db "enter two number=$"
output db "the result is=$"
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,input
    int 21h
    
    mov ah,1
    int 21h
    mov a,al
    sub a,48
  
    
    mov ah,1
    int 21h
    mov b,al
    sub b,48
    mov bl,b
    
    mov al,a
    
    mul bl  ;al=al*bl
    
    aam
    
    mov bx,ax
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,output
    int 21h
    
    mov ah,2
    mov dl,bh
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
    
          
          
    mov ah,4ch
    int 21h      
    main endp
end main