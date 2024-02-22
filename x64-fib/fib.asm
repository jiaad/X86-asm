section .text
global fib
fib:
  push rbx
  mov rbx, rdi
  mov eax, 1
  cmp rdi, 1
  jle .L46
  lea rdi, [rbx - 1]
  call fib
  lea rdi, [rbx - 1]
  call fib
  add rax, rbx

.L46:
  pop rbx
  ret
