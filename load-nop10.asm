%include "header.inc"

lea rax, [rsp]
mov [rsp], rax

.loop:

%rep 10
    mov  rax, [rax]
    times 10 nop
%endrep

    dec rcx
    jne .loop

%include "footer.inc"



