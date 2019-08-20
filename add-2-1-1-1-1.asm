%include "header.inc"

.loop:

%rep 20
    add  rax, 1 ; 2-cycle chain
    add  rax, 2 ; 2-cycle chain
    add  rsi, 3
    add  rdi, 4
    add  rbx, 5
    add  rdx, 6
%endrep

    dec rcx
    jne .loop

%include "footer.inc"



