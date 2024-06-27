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
   
   mov bh,11110011b ;samner 0 gula na dileo hobe 
   not bh  ;00001100=12
   
   add bh,2    ;12+2=14
   
   mov ah,2
   mov dl,bh  ;ascii print
   int 21h
   
  exit:
  mov ah,4ch
  int 21h
  main endp
end main