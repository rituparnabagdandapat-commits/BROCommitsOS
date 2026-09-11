[org 0x7c00]
mov si, msg
mov ah, 0x0e
.loop:
 lodsb
 cmp al, 0
 je halt
 int 0x10
 jmp.loop
halt: jmp $
msg db "BroOS V2 by Reyaansh is Working!",0
times 510-($-$$) db 0
dw 0xaa55
