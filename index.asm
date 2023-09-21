TITLE Print_A_String
.MODEL SMALL
.STACK 100
.DATA 
    message db "Hello World!$"
.CODE
index1:
; khoi tao du lieu
    mov AX,@data
    mov DS,AX
    
; hien thi message
    lea DX,message 
    mov AH,09H
    int 21h

; Ve Dos    
    mov AH,4ch
    int 21H
END index1