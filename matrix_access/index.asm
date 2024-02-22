            global        my_index 
            section       .text
  my_index:
          ;mov   rax, rdx
          ;imul  rax, rcx ; rax = rsi * rdx
          ;add   rax, r8
          imul   ecx, edx
          add    ecx, r8d
        ;  imul   ecx, 4
          mov    eax, [rdi + 4 * rcx]
          ret
          ;````hmov   rdi, rax

          ;mov              
; rdi is the matrix
; rsi = matrix rows number
; edx = matricx cols number
; ecx = row index 
; r8d = col index 
