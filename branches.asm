%include "header.inc"

lea rax, [rsp]
mov [rsp], rax

cmp eax, eax ; set flags

.loop:

%assign i 0
%rep 10

    mov  rax, [rax]
	nop
	nop
    nop
    nop
	je  .jump %+ i
    nop
    nop
	.jump %+ i:

%assign i i+1
%endrep

    dec rcx
    jne .loop

%include "footer.inc"



