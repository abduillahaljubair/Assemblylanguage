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
   
   mov bl,a
   
   shl bl,1
   shl bl,2
   shl bl,3
    
   shr bl,2
   shr bl,3
   
   ror bl,2
   ror bl,1
   
   rol bl,1
   rol bl,2



  exit:
  mov ah,4ch
  int 21h
  main endp
end main