.model small
.stack 100H           

.data     
       a db ?
       input DB "Enter an uppercase letter : $"
       output DB "Its corresponding lowercase letter : $"

.code
main proc
     
     mov ax,@data
     mov ds,ax
     
     mov ah,9
     lea dx,input
     int 21h
     
     mov ah,1
     int 21h
     mov a,al
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     mov ah,9
     lea dx,output
     int 21h
     
     add a,32
     
      mov ah,2
      mov dl,a
      int 21h

     
    mov ah,4ch
    main endp
end main    