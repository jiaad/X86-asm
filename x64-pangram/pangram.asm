section .text
global pangram

  ;
  ;
  ;
  ;
  ; while c != 0
  ; if c < 0x40: continue
  ; rax = rax | (1 << (rsi & 0x1f))
  ; and rax, MASK
  ; rax == mask
  ;
  ;
  ;
  


pangram:
	; rdi: source string
  mov rbx, 0x07fffffe
  xor rax, rax ; HASH SET

loop:
   mov cl, [rdi] ; c = rsi
   inc rdi 

   cmp cl, 0
   je  done


   cmp cl, 0x40
   jl  loop

   and cl, 0x1f
   mov edx , 1
   shl rdx, cl 
   or  rax, rdx
   jmp loop

done:
  and rax, rbx
  cmp rax, rbx
  je ispql
  xor rax, rax

  ret

ispql:
  mov rax, 1
  ret
