global sum_to_n
section .text

sum_to_n:
    mov rax, rdi       ; Set rax to n
    add rdi, 1         ; Increment n by 1
    imul rax, rdi      ; Multiply n by (n + 1)
    shr rax, 1         ; Divide the result by 2
    

    ret

; sum_to_n(6)
; rax = 6
; rdi += 1
; rax = rax * rdi
; rax = 42 = 0b101010
; 42 >> q = 0b010101  == 21
