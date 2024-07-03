include 'emu8086.inc'
.model small
.stack 01feh ;sp pointer eikhan theke suru hobe
.code
main proc
     mov ax,"A"   
     mov bx,"B"
     mov cx,"C"
     
     
               ;jokhon stack call korbe ,stack pointer(sp) 2 kore komte thakbe
               ;  memory
     
     push ax   ;SP=01fc thakbe   ;[sp]=A
     push bx   ;SP=01fc thakbe   ;[sp]=B
     push cx   ;SP=01fc thakbe   ;[sp]=C
     
     ;eivabe thakbe
comment@ 
     
            C ;last in first out
            B
            A
            
 @
     
     pop dx ; dx e thakbe C   ;01fc+2=memory
     pop bx ; bx e thakbe B
     
     
    