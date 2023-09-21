TITLE Get_Input_Char_Then_Check
.MODEL small
.STACK 100
.DATA
    ASCII DB '123456789'
    MSG1  DB 'Vao 1 so 1->9 : $'
    MSG2  DB 'Ban vao so : $'
    MSG3  DB 'Ban da vao ki tu:  $'
    keyb  DB  0 

.CODE
 Vd4:   
; khoi tao du lieu
           mov AX,@data
           mov DS,AX           
           
; hien thi msg1
           LEA DX,msg1
           MOV AH,9h
           INT 21h 



; doc vao 1 ki tu tu ban phim, ki tu doc vao nam trong al
    mov ah,1
    int 21h 
    mov keyb,al


;ve dau dong va xuong dong
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h

    ;mov al,keyb
    lea si,ASCII

    mov cx,9
 v_lap: 
    mov bl,[si]
    inc si
    cmp keyb,bl ; Tim xem ki tu nhap vao co phai la so tu 1->9 khong?        
    loopne v_lap ; cx=cx-1, -> v_lap neu cx<>0 va ZF=0
    cmp cx,0
    je  khongso

; ra thong bao ban da vao 1 so tu 1->9


    lea dx,MSG2
    mov ah,9
    int 21h
    
    mov dl,keyb
    mov ah,2
    int 21h
    jmp ketthuc

; ra thong bao ban da vao 1 ki tu khac so
 khongso:lea dx,MSG3
    mov ah,9
    int 21h
    mov dl,keyb
    mov ah,2
    int 21h
  
 ;Ve Dos
 ketthuc:mov ah,4ch
        int 21h     
    
 END vd4
