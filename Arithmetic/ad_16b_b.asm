TITLE Print_A_String
.MODEL SMALL
.STACK 100
.DATA
    var1 dw 9348H
    var2 dw 1845H
    result dw ?
    carry dw 00H
.code
lession1:
    MOV AX,@data
    MOV DS,AX
    
    mov ax,var1
           mov bx,var2
           
           add al,bl
           daa               ;decimal adjust after addition
           mov cl,al
           
           mov al,ah         ;since daa works on al register
           add al,bh
           daa
           mov ch,al       
           
           jnc skip          ;jump to skip if carry flag is 0
           mov carry,01H
           
    skip:  mov result,cx
           
           int 03H
           
        mov ah,4ch
        int 21h   
END lession1