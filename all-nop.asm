%include "header.inc"


.loop:

%rep 9
    nop2
    nop2
    nop2
    nop2
    nop2
    nop2
    nop2
    nop2
%endrep

    nop2
    nop2
    nop2
    nop2

    nop2
    nop2
    ;nop2
    ;nop2

    dec rcx
    jne .loop

%include "footer.inc"



