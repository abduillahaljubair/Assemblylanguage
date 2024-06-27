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
   
   mov bh,0101b ;samner 0 gula na dileo hobe 
   or  bh,0010b 
   
   add bh,48
   
   mov ah,2
   mov dl,bh
   int 21h
   
  exit:
  mov ah,4ch
  int 21h
  main endp
end main