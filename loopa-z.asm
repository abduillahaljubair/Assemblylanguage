.model small
.stack 100h
.code
main proc
   
     mov bl,65
   
     for:
     
             
     cmp bl,64 
     jl exit     
     cmp bl,90
     jg exit
               
     mov ah,2
     mov dl,bl
     int 21h
     inc bl
     
     jmp for
     
     
     
     



 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
