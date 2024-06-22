.model small
.stack 100h
.code
main proc

    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'a'
    jnge L1
    cmp bl,'z'
    jnle L1
    jmp L2
    
    L2:
    mov ah,2
    mov dl,bl
    sub dl,32
    int 21h
    jmp exit
    L1:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
