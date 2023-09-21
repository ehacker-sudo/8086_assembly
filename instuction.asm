TITLE Input_And_Do_A_Math_Then_print_the_Result
.MODEL SMALL
.STACK 100
.DATA
    num1 db
    num2 db
    res  db
    msg1 db "Hay nhap so thu nhat la: $"
    msg2 db "Hay nhap so thu hai la: $"
    msg3 db "Ket qua cua phep cong la: $"
.CODE
lession2:
; khoi tao du lieu
           MOV AX,@data
           MOV DS,AX           
           
; hien thi msg1
           LEA DX,msg1         ;load address of msg1 into dx  ; nap dia chi cua msg1 vao dx
           MOV AH,9h           ;interrupt to display contents of dx ; hien thi
           INT 21h    
           
; doc vao 1 ki tu tu ban phim
           MOV AH,1h           ;read a character from console ; doc 1 ki tu tu ban phim 
           INT 21h
           SUB AL,30h          ;convert number into bcd from ascii form ; chuyen ki tu thanh dang so
           MOV num1,AL         ;store number as num1  ; ki tu doc vao nam trong al           
           
;ve dau dong va xuong dong
           MOV AH,2
           MOV DL,0dh
           INT 21h
           MOV DL,0ah
           INT 21h
    
; hien thi msg2
           LEA DX,msg2         ;load address of msg2 into dx ; nap dia chi cua msg2 vao dx
           MOV AH,9h           ;interrupt to display contents of dx ; hien thi
           INT 21h    

; doc vao 1 ki tu tu ban phim la 1 chu so, ki tu doc vao nam trong al                      
           MOV AH,1h           ;read a character from console
           INT 21h
           SUB AL,30h          ;convert number into bcd from ascii form
           MOV num2,AL         ;store number as num2
           
; thuc hien cong
           ADD AL,num1         ;add num1 to num2
           MOV res,AL          ;store sum in res
           MOV AH,0            ;clear garabage value (ah to be used later)
           aaa                 ;converts hex to bcd and stores values in ah and al 
           ADD AH,30h          ;first digit converted into bcd
           ADD AL,30h          ;second digit converted from ascii to bcd
           MOV BX,AX           ;save value of ax into bx
           
;ve dau dong va xuong dong
           MOV AH,2
           MOV DL,0dh
           INT 21h
           MOV DL,0ah
           INT 21h
           
; hien thi msg3           
           LEA DX,msg3         ;print ms3
           MOV AH,9h
           INT 21h

; hien thi chu so dau tien
           MOV AH,2h           ;print first digit
           MOV DL,BH                                
           INT 21h
           
; hien thi chu so thu hai
           MOV AH,2h            ;print second digit
           MOV DL,BL
           INT 21h
;Ve Dos    
           MOV AH,4ch
           INT 21h
END lession2