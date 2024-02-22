global access

section   .text
access:
  ; rdi -> array
  ; rsi -> to the index
  ; rax -> result
  ; mov rax, [rdi + 2 * rsi]  ; short
  mov rax, [rdi + 4 * rsi]  
  ret
