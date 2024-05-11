.model small
.stack 100h
.data
a db "Enter first number:$"
b db "Enter second number:$"
c db ?
d db ?
.code
main proc
    
    
     mov ax, @data
     mov ds, ax    
     
     mov ah,9
     lea dx,a
     int 21h
     
     
     mov ah,1
     int 21h   ;c input nilam
     mov c,al
     
     mov ah,2
     mov dl,10
     int 21h   ;new line
     mov dl,13
     int 21h
     
     mov ah,9
     lea dx,b
     int 21h
     
     mov ah,1
     int 21h   ;c input nilam
     mov d,al

     
     ;xchg bh,bl
     mov bl,c
     mov bh,d ;eivabe oo xchane kora jai
     mov c,bh
     mov d,bl
     
   
     
     mov ah,2
     mov dl,10
     int 21h   ;new line
     mov dl,13
     int 21h
     
     mov ah,2
     mov dl,c  
     int 21h
     
     mov ah,2
     mov dl,d
     int 21h
    
     exit:
     mov ah,4ch
     int 21h
     main endp
end main