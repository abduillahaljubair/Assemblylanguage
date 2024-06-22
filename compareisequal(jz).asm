.model small
.stack 100h
.code
main proc

    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'a'
    jz L1         ;compare ta jodi soman hoi taile jz use hobe 
    cmp bl,"A"
    jz L1
    
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
