%include "header.inc"

nop

.loop:

%rep 19
    lea  rax, [rax]
    lea  rbx, [rbx]
    lea  rdi, [rdi]
    lea  rdx, [rdx]
    lea   r8, [r8]
    lea   r9, [r9]
    lea  r10, [r10]
    lea  r11, [r11]
%endrep

    lea  rax, [rax]
    lea  rbx, [rbx]
    lea  rdi, [rdi]
    lea  rdx, [rdx]

    lea   r8, [r8]
    lea   r9, [r9]
    lea  r10, [r10]
    ;lea  r11, [r11]
    ;lea r11d, [8]

    ;mov  eax, 1

    dec rcx
    jne .loop

%include "footer.inc"



