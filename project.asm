
mov ah,11h
int 16h
jnz exit
.model small
.stack 100h
.data
.code
main proc
mov ax,@data
mov ds,ax

mov ah,0h
mov al,10h
int 10h
mov dx,300
;belly
   mov cx,25
   l3:
   mov si,cx
   mov cx,25
   l1:
     add cx,20
     mov al,1001b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,20
   loop l1
   inc dx
   mov cx,si
   loop l3
mov dx,305
;left arm
   mov cx,7
   ll3:
   mov si,cx
   mov bp,dx
   mov cx,15
   ll1:
     add cx,6
     mov al,1110b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,6
     inc dx
   loop ll1
   mov dx,bp
   inc dx
   mov cx,si
   loop ll3
mov dx,319
;right arm
   mov cx,7
   l4:
   mov si,cx
   mov bp,dx
   mov cx,15
   l5:
     add cx,45
     mov al,1110b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,45
     dec dx
   loop l5
   mov dx,bp
   inc dx
   mov cx,si
   loop l4
mov dx,325
;legs
   mov cx,20
   l6:
   mov si,cx
   mov cx,5
   l7:
     add cx,25
     mov al,1110b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,25
   loop l7
   inc dx
   mov cx,si
   loop l6

    mov dx,325
    mov cx,20
   l8:
   mov si,cx
   mov cx,5
   l9:
     add cx,35
     mov al,1110b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,35
   loop l9
   inc dx
   mov cx,si
   loop l8

; neck
 mov dx,293
    mov cx,7
   l10:
   mov si,cx
   mov cx,7
   l11:
     add cx,29
     mov al,1110b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,29
   loop l11
   inc dx
   mov cx,si
   loop l10

;head
 mov dx,278
    mov cx,15
   l12:
   mov si,cx
   mov cx,15
   l13:
     add cx,25
     mov al,1010b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,25
   loop l13
   inc dx
   mov cx,si
   loop l12
;eye
mov dx,281
    mov cx,2
   l14:
   mov si,cx
   mov cx,2
   l15:
     add cx,28
     mov al,1000b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,28
   loop l15
   inc dx
   mov cx,si
   loop l14

    mov dx,284
    mov cx,2
   l18:
   mov si,cx
   mov cx,2
   l19:
     add cx,32
     mov al,1000b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,32
   loop l19
   inc dx
   mov cx,si
   loop l18

    mov dx,281
    mov cx,2
   l16:
   mov si,cx
   mov cx,2
   l17:
     add cx,35
     mov al,1000b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,35
   loop l17
   inc dx
   mov cx,si
   loop l16

;mov dx,50
;flag
 ;  mov cx,300
  ; l20:
  ; mov si,cx
  ; mov cx,7
  ; l21:
   ;  add cx,620
    ; mov al,1111b
    ; mov bh,0
    ; mov ah,0CH
    ; int 10h
    ; sub cx,620
   ;loop l21
   ;inc dx
  ; mov cx,si
  ; loop l20

mov dx,50
;monster
   mov cx,50
   l22:
   mov si,cx
   mov cx,75
   l23:
     add cx,280
     mov al,0100b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,280
   loop l23
   inc dx
   mov cx,si
   loop l22


mov dx,300
;monster
   mov cx,50
   l20:
   mov si,cx
   mov cx,50
   l21:
     add cx,580
     mov al,1010b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,580
   loop l21
   inc dx
   mov cx,si
   loop l20



;mov dx,50

 ;  mov cx,70
  ; l22:
   ;mov si,cx
  ; mov cx,100
   ;l23:
    ; add cx,510
    ; mov al,1010b
    ; mov bh,0
     ;mov ah,0CH
     ;int 10h
    ; sub cx,510
   ;loop l23
   ;inc dx
   ;mov cx,si
   ;loop l22

mov dx,295
;hurdle

   mov cx,20
   l26:
   mov si,cx
   mov cx,45
   l27:
     add cx,140
     mov al,1100b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,140
   loop l27
   inc dx
   mov cx,si
   loop l26

   mov cx,35
   l24:
   mov si,cx
   mov cx,25
   l25:
     add cx,150
     mov al,1100b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,150
   loop l25
   inc dx
   mov cx,si
   loop l24

mov dx,330
;enemy

   mov cx,20
   ll26:
   mov si,cx
   mov cx,20
   ll27:
     add cx,240
     mov al,1101b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,240
   loop ll27
   inc dx
   mov cx,si
   loop ll26

mov dx,275
;hurdle2

   mov cx,20
   l28:
   mov si,cx
   mov cx,45
   l29:
     add cx,390
     mov al,1100b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,390
   loop l29
   inc dx
   mov cx,si
   loop l28

   mov cx,55
   l30:
   mov si,cx
   mov cx,25
   l31:
     add cx,400
     mov al,1100b
     mov bh,0
     mov ah,0CH
     int 10h
     sub cx,400
   loop l31
   inc dx
   mov cx,si
   loop l30
.exit

main endp
end main