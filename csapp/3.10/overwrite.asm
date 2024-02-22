section .text

global overwrite

overwrite:
    sub rsp, 10
    mov byte [rsp], 0
    mov byte [rsp + 1], 1
    mov byte [rsp + 2], 1
    mov byte [rsp + 3], 2
    mov byte [rsp + 4], 2
    mov byte [rsp + 5], 2
    mov byte [rsp + 6], 2
    mov byte [rsp + 7], 2
    mov byte [rsp + 8], 2
    mov byte [rsp + 9], 2
    mov byte [rsp + 12], 2 ; this line gives the seg fault
    add rsp, 10
    ret
