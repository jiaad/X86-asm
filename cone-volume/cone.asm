default rel

section .text
global volume
volume:
  ; radius -> xmm0
  ; height -> xmm1
  ; pi -> 3.14
  ; 1/3 -> 0.33
  ; (1/3) * 3.141 * (radius square)* height 
  ;
  mulss xmm0, xmm0
  mulss xmm0, xmm1
  mulss xmm0, [pi]
  mulss xmm0,  [nu]
 	ret

section .data
pi: dd 3.14159265359
nu: dd 0.3333333333333

