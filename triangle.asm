            global          _main
            section         .text

_main:
            mov             rdx, output     ; rdx holds adress of the next byte to write
            mov             r8, 1           ; initial line length
            mov             r9, 0           ; number of stars written in one line so far

line:
            mov             byte [rdx], '*' ; write signle star
            inc             rdx             ; advance ptr to next cell to write
            inc             r9              ; count number so far in line
            cmp             r9, r8          ; did we reach number of line for this line
            jne             line            ; not yet, keep writting on this line -> jne == jump not equal (the prev one)

linedone:
            mov             byte [rdx], 10  ; write a new line char
            inc             rdx             ; and move pointer to where next char goes
            inc             r8              ; next char will be one char long
            mov             r9, 0           ; reset count of stars written on this line
            cmp             r8, maxlines    ; did we finish the last line
            jng             line

done:
            mov             rdi, 1
            mov             rax, 0x02000004
            mov             rsi, output
            mov             rdx, datasize
            syscall
            mov             rax, 0x02000001
            xor             rdi, rdi
            syscall

            section         .bss
maxlines    equ             10
datasize    equ             44
output      resb            datasize

