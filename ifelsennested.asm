.model small
.stack 100h
.data
a db 10,13,"Greater than 5 $"
b db 10,13,"equal to 5 $"
c db 10,13,"less than 5$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,53
    je L1
    jg L2
    jl L3
    
    L1:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit
    L2:
    mov ah,9
    lea dx,a
    int 21h
    jmp exit
    L3:
    mov ah,9
    lea dx,c
    int 21h
    jmp exit
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
