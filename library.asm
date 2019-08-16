int 0x20 ; Exiting early means it never runs this so it fuctions as a lib?

display_letter:
    ; save everything in place
    push ax
    push bx
    push cx
    push dx
    push si
    push di
    mov ah,0x0e ; Terminal output
    mov bx,0x000f ; Set graphics and video
    int 0x10 ; interrupt to display char
    ; put everything back where it was
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    ret

read_keyboard:
    push bx
    push cx
    push dx
    push si
    push di
    mov ah,0x00 ; Initialize read
    int 0x16 ; Perform read via hardware interrupt -> (is this an interrupt that forces a wait on i/o?)
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    ; why was the popping of these registers reversed from the pushing?
    ret
