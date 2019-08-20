; nasm that declares the _start symbol and sets up
; the test conditions:
;
; if an argument is passed, parses it as a base-10
; integer and leaves its value in rcx, otherwise
; puts 1_000_000 there
;
; subtracts 128 from rsp

GLOBAL _start
_start:
	mov		rcx, 10_000_000
	cmp		QWORD [rsp], 1 ; argc
	je    	.atoi_done
	xor		ecx, ecx
	mov   	rdx, [rsp + 16]   ; argv[1]
.atoi_loop:
	movzx 	eax, BYTE [rdx]	; argv[1][0]
	cmp		eax, 0
	je 		.atoi_done
	imul	rcx, 10
	sub		rax, '0'
	add		rcx, rax
	inc		rdx
	jmp		.atoi_loop
.atoi_done:

	sub		rsp, 128
