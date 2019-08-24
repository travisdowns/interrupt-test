%include "header.inc"

%define BUFSIZE (16 * 1024 * 1024)

    mov r8, rcx

    vpcmpeqd ymm0, ymm0, ymm0
    ;vpxor ymm3, ymm3, ymm3
    vmovdqu  ymm3, [offsets]
    lea rdx, [buffer]

    ; write to the buffer so it doesn't use a single shared zero page
    mov rdi, rdx
    mov rcx, BUFSIZE
    rep stosb

    xor edi, edi

.loop:

%rep 10
    vmovdqa ymm2, ymm0
    lea rsi, [rdx + rdi]
    vgatherdps ymm1, [rsi + ymm3*1], ymm2
    ;mov rax, [rsi]
    times 10 nop
    add rdi, 64 * 8
    and rdi, (BUFSIZE - 1)
%endrep

    dec r8
    jne .loop

%include "footer.inc"

section .data
offsets:
%assign i 0
%rep 8
dd i * 64
%assign i i + 1
%endrep

section .bss
buffer:
resb (BUFSIZE + 1000)


