%include "header.inc"

and rsp, -64

lea rax, [rsp]
mov [rsp], rax

lea rbx, [rsp]
mov r8, 0

.loop:

%rep 10
    vpmulld xmm0, xmm0, xmm0
    vpmulld xmm0, xmm0, xmm0
    vpmulld xmm0, xmm0, xmm0
    vpmulld xmm0, xmm0, xmm0
    lock add QWORD [rbx], 1
%endrep

    dec rcx
    jne .loop

%include "footer.inc"



