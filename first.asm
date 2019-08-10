    org 0x0100

start:
    mov bx,string

repeat:
    mov al,[bx]
    test al,al
    je end
    mov al,0x0e ; this caused a crash
    ; mov bx,0x000f ; modifying this value has no consequence in DOSBox
    int 0x10
    inc bx
    jmp repeat

end:
    int 0x20

string:
    db "Hello, word",0
