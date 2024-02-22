overwrite-test:
	nasm -fmacho64  overwrite.asm --prefix _ -o overwrite.o && gcc memory-bound.c overwrite.o -o overwrite.out && ./overwrite.out
