%include "header.inc"

mov r8, rcx ; need rcx for movs

sub rsp, 2*1024
and rsp, -64

.loop:

%rep 10
    lea rdi, [rsp + 2 * 1024]
    lea rsi, [rsp +     1024]
    mov rcx, 128
    rep movsd
    times 10 nop
%endrep


    dec r8
    jne .loop

%include "footer.inc"



