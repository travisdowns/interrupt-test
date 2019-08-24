%include "header.inc"

fld dword [one]
fld dword [two]

.loop:

%rep 10
    fstp st0
    fld dword [two]
    fscale
    times 2 nop
%endrep

    dec rcx
    jne .loop

%include "footer.inc"

section .data
one:
dd 1.5
two:
dd 2.5

