; cleanup

.end:
    add rsp, 128 ; not strictly necessary
	xor edi, edi
	mov eax, 231    ; exit(0)
	syscall
