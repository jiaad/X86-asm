          global          _main
          section        .text

_main:
          mov             rax, 0x02000004
          mov             rdi, 1
          mov             rsi, 90
          mov             rbx, 90
          add             rsi, rbx
          mov             rdx, rsi
          syscall
          mov             rax, 0x02000001
          mov             rdi, rdi
          syscall