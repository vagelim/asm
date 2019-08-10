    org 0x0100

start:
    mov bx,string

repeat:
    mov al,[bx]
    test al,al
    je end
    mov ah,0x0e ; prints in colors
    mov bx,0x00f; this output all uparrows in an infinite loop. this is why bx was pushed/popped
    int 0x10
    inc bx
    jmp repeat

end:
    int 0x20

string:
    db "Hello, world",0
