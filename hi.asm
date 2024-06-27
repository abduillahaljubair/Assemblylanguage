.model small
.stack 100h
.data 
a db 10,13,"the loop until the input is  $"
.code
main proc
   mov ax,@data
   mov ds,ax
             
   mov ah,9
   lea dx,a
   int 21h          
             
   mov cx,26 ;it means that the top function will executed 26 times 
   mov ah,2
   mov dl,65
           
   top:
   int 21h
   inc dl
   loop top        
           
           
  
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    