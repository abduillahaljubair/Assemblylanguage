.model small
.stack 100h
.data
a db "non-negative $"
b db "negative $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;mov ah,1
    ;int 21h
    ;mov bl,al
    
    ;cmp bl,0
    
    mov bx,-1
    
    
    cmp bx,0
    jge L1    ;a>=b  hole L1 execute hobe otherwise L2
              ;jle holo a<=b &jl holo a<b
    jmp L2
    
    L1:
    ;mov ah,2
    ;mov dl,10
    ;int 21h
    ;mov dl,13
    ;int 21h
    mov ah,9
    lea dx,a
    int 21h
    jmp exit:     ;;jump korbe exit
    
    L2:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit:     ;;exit jump korbe
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
