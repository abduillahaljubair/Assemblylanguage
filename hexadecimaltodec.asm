.model small
.stack 100h
.data
a db ?
input db "enter a hex=$"
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
    
    
    sub a,17 ;A,B,c,D,f ei gulai 1 fixed 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,49 ;1 er jonno 
    int 21h
    
    mov ah,2
    mov dl,a ;1 er jonno 
    int 21h  
    
    mov ah,4ch
    int 21h
    main endp
end main