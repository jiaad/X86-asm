section .text
global binary_convert
binary_convert:
  xor rax, rax
  jmp loop

loop:
  mov cl, BYTE [rdi]
  cmp cl, 0 ; if c == '\0'
  je  end

  inc rdi ; c = s++

  shl rax, 1

  cmp cl, 49 ; c == '0'
  jl  loop; continue

  add rax, 1 ; or OR rax, 1
  jmp loop

end:
  ret
