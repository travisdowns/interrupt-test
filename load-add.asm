%include "header.inc"

lea rax, [rsp]
mov [rsp], rax

.loop:

%rep 10
    mov  rax, [rax]
    nop
    nop
    nop
    nop
    nop
    add  rax, 0
%endrep

    dec rcx
    jne .loop

%include "footer.inc"



