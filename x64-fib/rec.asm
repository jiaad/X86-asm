;rec
section .text
  global rec
rec: 
  mov r12, 1
  mov rax, 0
  cmp rdi, 1
  jle .base

  cmp rdi, 2
  cmove rax, r12
  je .base
  
  dec rdi
  push rdi
  call rec
  pop rdi
  push rax


  dec rdi
  push rdi
  call rec
  pop rdi
  push rax

  dec rdi
  call rec

  pop rcx
  pop rbx
  add rax, rcx
  add rax, rbx


  ret


.base:
  ret
;  push rbx
;  push r15
;  mov rbx, rdi 
;  mov r15, rdi 
;  mov rax, 1 ; return value is 1
;  cmp rdi, 1 ; compare rdi to 1 if(n <= 1)
;  jle .L46 ; less or equal
;  lea rdi, [rbx - 1]  ; for the first argumaent
;  call rec
;  lea rdi, [r15 - 2]
;  call rec
;  add rax, rbx
;  add rax, r15
;  
;.L46:
;  pop r15
;  pop rbx
;  ret
;rec:
;  push rbx
;  mov rbx, rdi ; store n in callee saved register
;  mov rax, 1 ; reutrn value is 1
;  cmp rdi, 1 ; compare rdi to 1 if(n <= 1)
;  jle .L46 ; less or equal
;  lea rdi, [rdi - 1] ; for the first argumaent
;  call rec
;  imul rax, rbx
;  
;.L46:
;  pop rbx
;  ret
