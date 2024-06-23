.model small
.stack 100h
.code
main proc
   
    mov cx,26 ;26 bar cholbe mani 26 bar print hobe
    mov ah,2  ;print er jonno
    mov dl,65;a print hobe ;'A' dewa jete pare
     
    top:
    int 21h
    inc dl
    loop top  ;26 bar porjonto print hobe
              ;jmp dewa jabe na karon jump cx er condition er jaigai nai



 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
