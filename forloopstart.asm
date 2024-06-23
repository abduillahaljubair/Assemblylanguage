.model small
.stack 100h
.code
main proc
     mov ah,1
     int 21h
     mov bl,al
     
     mov cl,'1'
     for:
     
             
     cmp cl,bl  ; 1<=n
     jg exit     ; 1>n hole exit
     
                 ;jodi na hoi tailr print korbe i
     mov ah,2
     mov dl,cl
     int 21h
     inc cl
     
     jmp for
     
     
     
     



 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
