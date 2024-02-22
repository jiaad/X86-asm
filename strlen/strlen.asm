global my_strlen
section .text

my_strlen:
  xor rax, rax ; RIP instruction contains the first instruction for the given address
  mov rax, [rsp + rdi]
  ret


  ; rbp and rsp are stack pinter
  ; call stakc is in virtual memory
  ; malloc in heap
  ; registers in cpu
  ; when we push to the stack it actually remove 8 bytes from the program and allocate to the stack
  ; ISA is oerformed by ALU
  ; LEA : load effective address -> permet de 
