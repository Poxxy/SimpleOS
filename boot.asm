mov ah, 0x0e
mov al, 'H'
int 0x10
mov ah, 0x0e
mov al, 'e'
int 0x10
mov ah, 0x0e
mov al, 'l'
int 0x10
mov ah, 0x0e
mov al, 'l'
int 0x10
mov ah, 0x0e
mov al, 'o'
int 0x10
mov ah, 0x0e
mov al, ' '
int 0x10
mov ah, 0x0e
mov al, 'W'
int 0x10
mov ah, 0x0e
mov al, 'o'
int 0x10
mov ah, 0x0e
mov al, 'r'
int 0x10
mov ah, 0x0e
mov al, 'l'
int 0x10
mov ah, 0x0e
mov al, 'd'
int 0x10
mov ah, 0x0e
mov al, '!'
int 0x10
mov ah, 0x0e
mov al, ' '
int 0x10

mov ah, 0x0e
mov al, 65 ; represents 'A', begin alphabet here.
int 0x10

loop: ;increase decimal number reprsenting ASCII until at Z.
    inc al
    cmp al, 'Z' + 1
    je exit
    int 0x10
    jmp loop

exit:
    jmp $ ;begin OS loop

times 510-($-$$) db 0 ;fill first 510 bytes with empty data
db 0x55, 0xaa ;55 aa are the required ending for an operating system.