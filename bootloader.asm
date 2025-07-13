[BITS 16]
[ORG 0x7C00]

start:
	cli
	xor ax, ax
	mov ds, ax
mov es,ax
mov ss, ax
mov sp, 0x7c00
sti

load:
mov bx, 0x8000
mov ah, 0x02
mov al, 4
mov ch, 0
mov dh, 0
mov cl, 2
int 0x13

jmp 0x0000:0x8000

times 510 - ($ - $$) db 0
dw 0xAA55
