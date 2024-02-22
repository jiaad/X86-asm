            global          _main
            section         .text
_main:
            mov             rax, 0x02000004 ; Sys call for write -> pre agreed -> rax is to tell what it should do write | read
            mov             rdi, 1          ; file handle 1 is stdout
            mov             rsi, message    ; adress of string to output
            mov             rdx, 10         ; number of bytes
            syscall                         ; invoke the OS to do the write
            mov             rax, 0x02000001 ; system call for exit
            xor             rdi, rdi        ; exit code for exit
            syscall                         ; invoke OS to exit
            section         .data
message:    db               "Hello, World", 10
