.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    cmp bl,bh
    jge L1    ;a>=b  hole L1 execute hobe otherwise L2
              ;jle holo a<=b &jl holo a<b
    jmp L2
    
    L1:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit:     ;;jump korbe exit
    
    L2:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit:     ;;exit jump korbe
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
