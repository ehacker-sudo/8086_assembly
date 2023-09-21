TITLE Print_A_String
.MODEL SMALL
.STACK 100
.DATA
    ; cho tr??c 1 chu?i trong code 
    message db "H?y nh?p 1 k? t? v?o t? b?n ph?m$"
.code
lession1:
    MOV AX,@data
    MOV DS,AX
    ; nap offset MSG1 vao dx
    bien:
    LEA DX,message
    ; hien thi message
    hienthi:
        mov AH,09H
        INT 21h
    ;Ve Dos
    ketthuc: 
        MOV AH,4CH
        INT 21H
END lession1