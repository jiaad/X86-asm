global short_access

section   .text
access:
  ; rdi -> array
  ; rsi -> to the index
  ; rax -> result
  mov eax,   [rdi + 4 * rsi]
  ret
  
