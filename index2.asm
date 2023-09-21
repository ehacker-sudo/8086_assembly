TITLE Input_And_Do_A_Math_Then_print_the_Result
.MODEL SMALL
.STACK 3
.DATA
    num1 db
    num2 db
    res  db
    msg1 db "Hay nhap so thu nhat la: $"
    msg2 db "Hay nhap so thu hai la: $"
    msg3 db "Ket qua cua phep cong la: $"
.CODE
index2:
; khoi tao du lieu
           mov AX,@data
           mov DS,AX           
           
; hien thi msg1
           lea DX,msg1
           mov AH,9h
           int 21h    
           
; doc vao 1 ki tu vao num1
           mov AH,1h         
           int 21h
           sub AL,30h
           mov num1,AL       
           
;ve dau dong va xuong dong
           mov AH,2
           mov DL,0dh
           int 21h
           mov DL,0ah
           int 21h
    
; hien thi msg2
           LEA DX,msg2    
           mov AH,9h     
           int 21h    

; doc vao 1 ki tu vao num2
           mov AH,1h   
           int 21h
           sub AL,30h
           mov num2,AL
           
; thuc hien cong
           add AL,num1       
           mov res,AL        
           mov AH,0          
           aaa             
           add AH,30h     
           add AL,30h     
           mov BX,AX 
           
;ve dau dong va xuong dong
           mov AH,2
           mov DL,0dh
           int 21h
           mov DL,0ah
           int 21h
           
; hien thi msg3           
           LEA DX,msg3
           mov AH,9h
           int 21h

; hien thi chu so dau tien
           mov AH,2h      
           mov DL,BH                                
           int 21h
           
; hien thi chu so thu hai
           mov AH,2h 
           mov DL,BL
           int 21h
;Ve Dos    
           mov AH,4ch
           int 21h
END index2