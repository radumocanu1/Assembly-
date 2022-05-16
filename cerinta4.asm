.data
	matrix: .space 1600
	nrcoloane: .space 4
	nrlinii: .space 4
	n: .space 4
	formatScanf: .asciz "%d"
	input: .space 1000
	delim: .asciz " "
	formatPrintf: .asciz "%d "
	formatPrintf2: .asciz "%s"
	terminator: .asciz "\n"
	nroperatie: .space 4
	nrelemente: .space 4
	
	
.text

.global main

main:
	pushl $input
	call gets
	popl %ebx

	pushl $delim
	pushl $input
	call strtok
	popl %ebx
	popl %ebx
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	movl %eax, nrlinii
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	movl %eax, nrcoloane
	movl nrlinii, %ebx
	mul %ebx
	movl %eax, nrelemente
	
	movl $matrix, %esi
	xorl %ecx, %ecx
et_for2:
	
	pushl %ecx
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	
	
	pushl %eax
	call atoi
	popl %ebx
	
	popl %ecx
	
	cmp $0, %eax
	je continuare
	
	movl %eax, (%esi, %ecx, 4)
	incl %ecx

	jmp et_for2
	
continuare:

	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	pushl %ebx
	
	movl %eax, nroperatie
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	movl %eax, %edi
	
	pushl nrlinii
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	pushl nrcoloane
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx	
	
		
	xorl %ecx, %ecx
	movb (%edi, %ecx, 1), %al
	
	cmp $97, %al
	je add
	cmp $109, %al
	je mul
	cmp $115, %al
	je sub
	cmp $100, %al
	je div
	
add:
	cmp nrelemente, %ecx
	je et_exit
	
	
	movl (%esi, %ecx, 4), %eax
	add nroperatie, %eax
	
	pushl %ecx
	
	pushl %eax
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	
	incl %ecx
	
	jmp add
mul:
	cmp nrelemente, %ecx
	je et_exit
	
	
	movl (%esi, %ecx, 4), %eax
	movl nroperatie, %edx
	mul %edx
	pushl %ecx
	
	pushl %eax
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	
	incl %ecx
	
	jmp mul
sub:
	cmp nrelemente, %ecx
	je et_exit
	
	
	movl (%esi, %ecx, 4), %eax
	sub nroperatie, %eax
	
	pushl %ecx
	
	pushl %eax
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	
	incl %ecx
	
	jmp sub
div:
	cmp nrelemente, %ecx
	je et_exit
	
	xorl %edx, %edx
	
	movl (%esi, %ecx, 4), %eax
	movl nroperatie, %ebx
	div %ebx
	
	pushl %ecx
	
	pushl %eax
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	
	incl %ecx
	
	jmp div
et_exit:
	pushl $terminator
	pushl $formatPrintf2
	call printf
	popl %ebx
	popl %ebx
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
