%include "header.inc"

nop

.loop:

%rep 10
    mov  eax, 1
    mov  ebx, 2
    mov  edi, 3
    mov  edx, 4
    mov  r8d, 5
    mov  r9d, 6
    mov r10d, 7
    mov r11d, 8
%endrep

    mov  eax, 1
    mov  ebx, 2
    mov  edi, 3
    mov  edx, 4

    mov  r8d, 5
    mov  r9d, 6
    nop

%rep 9
    mov  eax, 1
    mov  ebx, 2
    mov  edi, 3
    mov  edx, 4
    mov  r8d, 5
    mov  r9d, 6
    mov r10d, 7
    mov r11d, 8
%endrep



    ;mov r11d, 8
    ;mov r12d, 9

    ;mov  eax, 1

    dec rcx
    jne .loop

%include "footer.inc"



