%include "header.inc"

.loop:

%rep 10
    add  eax, 1
    add  ebx, 2
    add  edi, 3
    add  edx, 4
    add  r8d, 5
    add  r9d, 6
    add r10d, 7
    add r11d, 8
%endrep

    dec rcx
    jne .loop

%include "footer.inc"



