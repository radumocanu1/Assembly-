.data
	input: .space 1000
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%d\n"
	delim: .asciz " "
	curent: .space 4
	operatie: .space 4
	ok: .long 0
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
	
	
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	pushl %eax
	
et_for2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	
	cmp $0, %eax
	je et_exit
	
	
	movl %eax, %edi
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	cmp $0, %eax
	jne numar
	
	

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
	popl %eax
	popl %ebx
	add %ebx, %eax
	pushl %eax
	jmp et_for2
	
mul:
	popl %eax
	popl %ebx
	mul %ebx
	pushl %eax
	jmp et_for2
sub: 
	popl %eax
	popl %ebx
	sub %eax, %ebx
	pushl %ebx
	jmp et_for2 
div:	
	movl $0, %edx
	popl %ebx
	popl %eax
	div %ebx
	pushl %eax
	jmp et_for2
numar:
	
	pushl %eax
	jmp et_for2

et_exit:
	popl %eax
	pushl %eax
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
