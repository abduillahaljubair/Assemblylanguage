include 'emu8086.inc'
.model small
.stack 100h
.data 
a db 10,13,"the loop until the input is  $"
n dw 11001010b
.code
main proc
   mov ax,@data
   mov ds,ax
      
   ;clear a register bx to store the data 
   ;loop start
   ;input 0/1
   ;check if its enter ?
   ;if enter end loop
   ;bx SHL
   ;Store the input bx register lsb bit and thenm again loop call

   
   mov bx,0 ;bx ke clear korlam  
    mov ah,1
    for:
   
    int 21h ;input
    cmp al,0dh
    je end_for 
    sub al,48
    shl bx,1
    or bl,al
    jmp for 
    
    end_for:
    printn 
    printn
    mov ah,2    
    mov dl,bl
    add dl,48
    int 21h
    
    
   
  exit:
  mov ah,4ch
  int 21h
  main endp
end main 


  
  
;bx = 0: Initially, bx is cleared to store the binary number.
;cx = 0: Counter cx is initialized to count the number of bits entered.
;ah = 1: Set up to read a character from input.
 
 

;Iteration 1 (Input '1'):
;int 21h: Reads character '1' (ASCII 49) into al.
;cmp al,0dh: Compares al with 13 (Enter key). They are not equal.
;sub al,48: Converts ASCII '1' to binary 1 (al = 1).
;shl bx,1: Shifts bx left by 1 bit (bx = 0).
;or bl,al: Stores al (1) into the least significant bit of bl (bx = 0001).

 
 

;Iteration 2 (Input '0'):
;int 21h: Reads character '0' (ASCII 48) into al.
;cmp al,0dh: Compares al with 13 (Enter key). They are not equal.
;sub al,48: Converts ASCII '0' to binary 0 (al = 0).
;shl bx,1: Shifts bx left by 1 bit (bx = 0010).
;or bl,al: Stores al (0) into the least significant bit of bl (bx = 0010). 



;Iteration 3 (Input '0'):
;int 21h: Reads character '0' (ASCII 48) into al.
;cmp al,0dh: Compares al with 13 (Enter key). They are not equal.
;sub al,48: Converts ASCII '0' to binary 0 (al = 0).
;shl bx,1: Shifts bx left by 1 bit (bx = 0100).
;or bl,al: Stores al (0) into the least significant bit of bl (bx = 0100).

 
 
;Iteration 4 (Input '1'):
;int 21h: Reads character '1' (ASCII 49) into al.
;cmp al,0dh: Compares al with 13 (Enter key). They are not equal.
;sub al,48: Converts ASCII '1' to binary 1 (al = 1).
;shl bx,1: Shifts bx left by 1 bit (bx = 1000).
;or bl,al: Stores al (1) into the least significant bit of bl (bx = 1001).
 
 
 

;End of Input (Enter):
;int 21h: Reads Enter key (ASCII 13) into al.
;cmp al,0dh: Compares al with 13 (Enter key). They are equal.
;je end_for: Jumps to end_for.
;Printing the Binary Number:
;The program now enters the print_loop to print the binary number stored in bx.
;mov dl,bl: Moves the binary value in bl to dl.
;and dl,1: Masks dl with 00000001 to isolate the least significant bit.
;add dl,48: Converts the binary value in dl to its ASCII representation ('0' or '1').
;push dx: Pushes dl onto the stack.
;shr bx,1: Shifts bx right by 1 bit to process the next bit.
;dec cx: Decrements the bit counter cx.
;jnz print_loop: Jumps back to print_loop if cx is not zero, continuing to process bits.
;Output:    

;After processing all bits, the program prints each bit from the stack until the stack is empty, displaying the binary number "1001".