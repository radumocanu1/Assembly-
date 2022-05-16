.data

	sir1: .space 300
	sir2: .space 1200
	sir3: .space 2
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%s\n"
	formatPrintf2: .asciz "%s "
	index: .long 0
	index2: .long 0
	contor: .space 4 
	suma: .space 4
	suma2: .space 1
	putere: .space 4
	formatPrintfNegativ: .asciz "-%d "
	formatPrintfPozitiv: .asciz "%d "
	formatPrintf3: .asciz "%s"
	endl: .asciz "\n"
	let: .asciz "let "
	add: .asciz "add "
	sub: .asciz "sub "
	mul: .asciz "mul "
	div: .asciz "div "
	
.text
.global main
main:
	pushl $sir1
	pushl $formatScanf
	call scanf
	popl %ebx
	popl %ebx
	movl $sir1, %edi
	movl $sir2, %esi
	xorl %ecx, %ecx
et_for:

	movb (%edi, %ecx, 1), %al
	cmp $0, %al
	je et_text
	cmp $48, %al
	je cif0
	cmp $49, %al
	je cif1
	cmp $50, %al
	je cif2
	cmp $51, %al
	je cif3
	cmp $52, %al
	je cif4
	cmp $53, %al
	je cif5
	cmp $54, %al
	je cif6
	cmp $55, %al
	je cif7
	cmp $56, %al
	je cif8
	cmp $57, %al
	je cif9
	cmp $65, %al
	je cif10
	cmp $66, %al
	je cif11
	cmp $67, %al
	je cif12
	cmp $68, %al
	je cif13
	cmp $69, %al
	je cif14
	cmp $70, %al
	je cif15
	
cif0:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif1:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif2:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif3:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif4:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif5:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif6:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif7:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif8:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif9:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif10:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif11:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif12:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif13:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif14:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
cif15:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	addl $4, index
	popl %ecx
	
	incl %ecx
	
	jmp et_for
et_text:
	xorl %ecx, %ecx	
	
et_for2:
	
	movb (%esi, %ecx, 1), %al
	cmp $0, %al
	je et_exit
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $48, %al
	je et_0
	jmp et_operatie
	 
	 
	 
et_0:
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $49, %al
	je et_variabila
	jmp et_numar
	 																																																																

et_numar:
	movl $8, %edi
	movl $0, suma
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $49, %al
	je formarenegativ
	
formarepozitiv:
	cmp $0, %edi
	je et_afis1
	sub $1, %edi
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $49, %al
	je et_initial1
	jmp formarepozitiv
	
	
	
et_initial1:
	movl $1, %eax
	movl $2, %ebx
	movl %edi, %edx
	
	

et_putere:
	
	cmp $0, %edx
	je introducere
	sub $1, %edx
	pushl %edx
	mul %ebx
	popl %edx
	jmp et_putere
introducere:
	addl %eax, suma
	jmp formarepozitiv
et_afis1:
	pushl %ecx
	movl suma, %eax
	pushl %eax
	pushl $formatPrintfPozitiv
	call printf
	popl %ebx
	popl %ebx
	pushl $0
	call fflush
	popl %ebx
	popl %ecx
	incl %ecx
	
	jmp et_for2
	
formarenegativ:	
	cmp $0, %edi
	je et_afis2
	sub $1, %edi
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $49, %al
	je et_initial2
	jmp formarenegativ
	
et_initial2:
	movl $1, %eax
	movl $2, %ebx
	movl %edi, %edx
	
et_putere2:
	cmp $0, %edx
	je introducere2
	sub $1, %edx
	pushl %edx
	mul %ebx
	popl %edx
	jmp et_putere2
introducere2:
	addl %eax, suma
	jmp formarenegativ
et_afis2:
	pushl %ecx
	movl suma, %eax
	pushl %eax
	pushl $formatPrintfNegativ
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	popl %ecx
	incl %ecx
	
	jmp et_for2
	

et_operatie:
	add $8, %ecx
	movb (%esi, %ecx, 1), %al
	cmp $49, %al
	je afis_div
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $48, %al
	je et_02
	jmp et_12
et_02:
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $48, %al
	je afis_let
	jmp afis_add
et_12:
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $48, %al
	je afis_sub
	jmp afis_mul
	
afis_sub:
	pushl %ecx
	mov $4, %eax
	mov $1, %ebx
	mov $sub, %ecx
	mov $4, %edx
	int $0x80
	
	
	pushl $0
	call fflush
	popl %ebx
	popl %ecx
	incl %ecx
	jmp et_for2

afis_mul:
	pushl %ecx
	mov $4, %eax
	mov $1, %ebx
	mov $mul, %ecx
	mov $4, %edx
	int $0x80
	
	
	pushl $0
	call fflush
	popl %ebx
	popl %ecx
	incl %ecx
	jmp et_for2
afis_let:
	pushl %ecx
	mov $4, %eax
	mov $1, %ebx
	mov $let, %ecx
	mov $4, %edx
	int $0x80
	
	
	pushl $0
	call fflush
	popl %ebx
	popl %ecx
	incl %ecx
	jmp et_for2
	
afis_add:
	pushl %ecx
	mov $4, %eax
	mov $1, %ebx
	mov $add, %ecx
	mov $4, %edx
	int $0x80
	
	
	pushl $0
	call fflush
	popl %ebx
	popl %ecx
	incl %ecx
	jmp et_for2
	
afis_div:
	pushl %ecx
	mov $4, %eax
	mov $1, %ebx
	mov $div, %ecx
	mov $4, %edx
	int $0x80
	
	
	pushl $0
	call fflush
	popl %ebx
	popl %ecx
	add $3, %ecx
	jmp et_for2

et_variabila:
	movl $8, %edi
	movl $0, suma2
	incl %ecx
	
formarevariabila:
	cmp $0, %edi
	je et_afis3
	sub $1, %edi
	incl %ecx
	movb (%esi, %ecx, 1), %al
	cmp $49, %al
	je et_initial3
	jmp formarevariabila
	
	
	
et_initial3:
	movl $1, %eax
	movl $2, %ebx
	movl %edi, %edx
	
	

et_putere3:
	
	cmp $0, %edx
	je introducere3
	sub $1, %edx
	pushl %edx
	mul %ebx
	popl %edx
	jmp et_putere3
introducere3:
	addb %al, suma2
	jmp formarevariabila
et_afis3:
	pushl %esi
	pushl %ecx
	xorl %ecx, %ecx
	movl $sir3, %esi
	movb suma2, %al
	movb %al, (%esi, %ecx, 1)
	pushl $sir3
	pushl $formatPrintf2
	call printf
	popl %ebx
	popl %ebx
	pushl $0
	call fflush
	popl %ebx
	popl %ecx
	popl %esi
	incl %ecx
	
	jmp et_for2
	
	
et_exit:
	pushl $endl
	pushl $formatPrintf3
	call printf
	popl %ebx
	popl %ebx
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
