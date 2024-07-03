include 'emu8086.inc'
.model small
.stack 100h ;sp pointer eikhan theke suru hobe
.data
.code
main proc
    
    ;PRINT" Enter:"
    
   
    xor cx,cx ;cx counter 0 kore felbo
    
    intput:
       mov ah,1
       int 21h 
       cmp al,13
       je exit_input
       push ax
       inc cx          ;output kotobar hobe seitai bhujacche
       jmp intput
       
       exit_input:
       
        ;printn"OUTPUT:"
         output:
           mov ah,2
            pop dx
           int 21h
           loop output  
                      
  exit:
    mov ah,4ch
    int 21h
    main endp
end main
                      
                      
                      
       