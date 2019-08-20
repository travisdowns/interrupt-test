%include "header.inc"

lea rax, [rsp]
mov [rsp], rax

.loop:

%rep 10
    mov  rax, [rax]
    nop
    nop
    add  rax, 0
    nop
    nop
    nop
%endrep

    dec rcx
    jne .loop

%include "footer.inc"



