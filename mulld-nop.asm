%include "header.inc"

.loop:

%rep 10
    vpmulld xmm0, xmm0, xmm0
    nop
    vpmulld xmm0, xmm0, xmm0
    nop
%endrep

    dec rcx
    jne .loop

%include "footer.inc"



