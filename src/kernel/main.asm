;org 0x7C00
;bits 16

;main:
 ;hlt
;.halt:
 ;jmp .halt

;times 510-($-$$) db 0
;dw 0xAA55

;org 0x7c00
;bits 16

;main:
 ;mov ah, 0x0e ;int 10/ah=0eh ->Scrolling Teletype Bios routine

 ;mov al, 'H'
 ;int 0x10
 ;mov al, 'e'
 ;int 0x10
 ;mov al, 'l'
 ;int 0x10
 ;mov al, 'l'
 ;int 0x10
 ;mov al, 'o'
 ;int 0x10
 
;.halt:
 ;jmp .halt

;times 510-($-$$) db 0 ;
;dw 0xaa55

org 0x7c00
bits 16

main:
 mov ah, 0x0e
; mov al, the_secret
 ;int 0x10
 
 ;mov al, [the_secret]
 ;int 0x10
 
; mov bx, the_secret
 ;add bx, 0x7c00
 ;mov al, [bx]
 ;int 0x10
 
 mov al, [0x7c1e]
 int 0x10

.halt:
 jmp .halt

the_secret:
 db "X"

times 510-($-$$) db 0
dw 0xaa55
