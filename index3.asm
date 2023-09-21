TITLE Input_A_Char_Then_print_the_Result
.MODEL small
.STACK 100
.DATA
    msg1 db 'Hay nhap 1 ky tu vao tu ban phim $'
    msg2 db 'Hay hien thi ky tu vua nhap ra man hinh $'
    keyb db 
    
.CODE
index3:   
; khoi tao du lieu
    mov AX,@data
    mov DS,AX

; hien thi msg1
    lea DX,msg1
    mov AH,09H
    int 21h
     
;ve dau dong va xuong dong
    mov AH,2
    mov DL,0dh
    int 21h
    mov DL,0ah
    int 21h

; doc vao 1 ki tu tu ban phim
    mov ah,1h
    int 21h 
    mov keyb,al ;ki tu doc nam trong al


;ve dau dong va xuong dong
    mov AH,2
    mov DL,0dh
    int 21h
    mov DL,0ah
    int 21h

; hien thi msg2
    lea DX,msg2
    mov AH,09H
    int 21h
    
;ve dau dong va xuong dong
    mov AH,2
    mov DL,0dh
    int 21h
    mov DL,0ah
    int 21h

; hien thi 1 ki tu vua nhap ra ban phim   
    mov DL,keyb
    mov AH,2
    int 21h
  
;Ve Dos
    mov AH,4ch
    int 21h     
    
END index3
