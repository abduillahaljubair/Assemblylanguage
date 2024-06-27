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