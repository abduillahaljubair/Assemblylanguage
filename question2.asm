.model small
.stack 256           

.data  ;VARIABLE DECLARATION   
       a db ?
       b db ?
       input DB "Enter two digits(0-9) : $"
       statement DB "The digits are: $"
       output DB "Sum of these digits : $"

.code
main proc  ;INT MAIN      
        
        mov ax,@data
        mov ds,ax      
        
        mov ah,9
        lea dx,input
        int 21h
        
        mov ah,1
        int 21h
        mov a,al   
        
        mov ah,2
        mov dl,20h 
        int 21h
        
        mov ah,1
        int 21h
        mov b,al
        
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h  
        
        mov ah,9
        lea dx,statement
        int 21h 
        
        mov ah,2
        mov dl,a 
        int 21h  
        mov dl,20h 
        int 21h
        mov dl,26h 
        int 21h
        mov dl,20h 
        int 21h
        mov dl,b 
        int 21h
        
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        sub a,48 
        sub b,48
        mov bh,a
        add bh,b 
        add bh,48      
        
        mov ah,9
        lea dx,output
        int 21h
                 
        mov ah,2
        mov dl,bh
        int 21h
        
        mov ah,4ch
        int 21h  
    
main endp

end main
