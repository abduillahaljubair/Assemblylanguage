.model small
.stack 100h
.data 
a db ?
b db ?
c db ?
.code
main proc 
    mov ah,1
    int 21h
    mov a,al;amra jani input gula ascii code onusare sajano thake,so amra eikhane ja kisu deina keno sob number hobe ascii coder so sei ascii code number ta jodi biyog dile jog kora jabe
    sub a,48 ;jodi 5 input dei tahole a=53 store hobe, seikhan theke -48 korle main number ta pawa jacche
    mov bh,a
    
    mov ah,1
    int 21h
    mov b,al
    sub b,48
    mov bl,b
    
    mov ah,1
    int 21h
    mov c,al
    sub c,48
    mov ch,b
    
    ;add a,b eivabe direct add kora jai nah
    add bh,bl
    add bh,ch
    add bh,48
    
    
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main