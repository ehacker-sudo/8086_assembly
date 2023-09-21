TITLE Print_A_String
.MODEL SMALL
.STACK 100
.DATA 
    a db 1,2,3,4,4
    msg db "Tong la : $"
.CODE
index1:
; khoi tao du lieu
        mov AX,@data
        mov DS,AX  
    
        lea bx,a 
        mov ah,00
        mov al,00  
    
        mov cl,5    
        l1:
            add al,byte ptr[bx]
            inc bx
            dec cl
            cmp cl,00
            jnz l1
        
        mov ah,0          
        aaa             
        add ah,30h     
        add al,30h     
        mov bx,ax

; hien thi msg        
        lea dx,msg 
        mov ah,9
        int 21h
        
; hien thi chu so dau tien
        mov ah,2h           ;print first digit
        mov dl,bh                                
        int 21h
           
; hien thi chu so thu hai
        mov ah,2h             ;print second digit
        mov dl,bl
        int 21h
           
        mov ah,4ch
        int 21h
END index1