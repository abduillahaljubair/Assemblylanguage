.model small
.stack 100h
.data
a db ?
b db ?
input db "enter two number=$"
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
    mov bl,a
     
    mov ah,1
    int 21h
    mov b,al
    sub b,48
    mov bh,b 
    
    sub bl,bh
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main