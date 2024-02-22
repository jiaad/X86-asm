            global          _main
            section         .text

_main:
            mov             rdx, 10         
            mov             rcx, 0         
            mov             r8, 0         

count:
            dec             rdx             
            add             rcx, rdx 
            cmp             r8, rcx          
            jne             count            

done:
            mov             rdi, 1
            mov             rax, 0x02000004
            mov             rsi, rcx
            syscall
            mov             rax, 0x02000001
            xor             rdi, rdi
            syscall
