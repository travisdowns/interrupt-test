%include "header.inc"

mov eax, 1
mov ebx, 1

.loop:

%rep 10
    div bl
    times 2 nop
%endrep


    dec rcx
    jne .loop

%include "footer.inc"


