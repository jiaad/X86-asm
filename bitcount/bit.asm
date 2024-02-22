                global        bitcount
                section      .text

bitcount:

                and rax, 0 
                mov rbx, rdi
                jmp calculate

calculate:
                test rdi, rdi ; test id 0
                jz  END

                and rdi, 0x01
                jz  NO_BIT 
                jmp ADD_RAX
                ret

ADD_RAX:
                add rax, 1
                shr rbx, 1
                mov rdi, rbx
                jmp calculate
                ret
NO_BIT:
                shr rbx, 1
                mov rdi, rbx
                jmp calculate
                ret
END:
                ret
