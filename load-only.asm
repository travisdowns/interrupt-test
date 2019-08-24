%include "header.inc"

lea rax, [rsp]
mov [rsp], rax


.loop:

times 100 mov rax, [rax]

    dec rcx
    jne .loop

%include "footer.inc"



