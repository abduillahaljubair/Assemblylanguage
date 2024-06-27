include 'emu8086.inc'
.model small
.stack 100h
.data 
a db 10,13,"the loop until the input is  $"
n db ?
.code
main proc
   mov ax,@data
   mov ds,ax
             
   mov ah,1
   int 21h    ;input 
   sub al,48  ;+48 add kore ashbe er jonno al-48 minus hoye exact value boshbe 
   mov n,al
   
   mov bh,1; int i=1
   printn
   
 loop1:
   cmp bh,n ; i<n
   jg loop1_exit
   mov bl,1 ;int j=1
     loop2:
       cmp bl,n ;j<n
       jg loop2_exit
       mov ah,2
       mov dl,'*' ;print 
       int 21h
       inc bl     ;j--
       jmp loop2  ;again called loop2 jokhon loop2 ta sesh hoye jabe tokhon abar call loop1 call dite hobe 
       
       
        loop2_exit:
        printn
        inc bh
        jmp loop1
        
 loop1_exit:
    mov ah,4ch
    int 21h
    main endp
 end main
 
 
    
; OUTPUT(input=5)    
; *****
; *****
; *****
; *****
; *****

   
   
  