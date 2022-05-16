.data
	nr_elemente: .long 3
	input: .space 5000
	delim: .asciz " "
	nou: .space 5000
	m: .space 4
	n: .space 4
	var: .space 4
	b: .space 4
	multime: .space 5000
	formatScanf: .asciz "%s"
	formatAfis: .asciz "%d "
	newline: .asciz "\n"
	minus: .asciz "-"

.text

.global main

check:
	pushl %ebp
	movl %esp, %ebp
	
	pushl %esi
	
	pushl %edi
	
	pushl %ebx
	
	pushl %ecx
	
	pushl %edx
	
	movl 8(%ebp), %ebx
	movl $nou, %esi
	movl $multime, %edi

	movl %ebx, %ecx
	subl m, %ecx

et_for_check:
	cmp %ecx, %ebx
	je et_for_check_2
	
	
	movl (%esi, %ecx, 4), %edx
	
	
	//verificare conditie
	
	movl (%esi, %ebx, 4), %eax
	cmp %eax, %edx
	
	je nu
	incl %ecx
	
	jmp et_for_check

et_for_check_2:
	movl (%edi, %ebx, 4), %eax
	cmp $0, %eax
	
	je et_for_check_3
	movl (%esi, %ebx, 4), %edx
	cmp %eax, %edx
	
	je et_for_check_3
	jne nu
	

et_for_check_3:
	movl $1, var
	
	xorl %ecx, %ecx

et_for_check_3_2:
	cmp %ecx, %ebx
	je et_verificare_aparitii
	
	
	movl (%esi, %ebx, 4), %edx
	
	
	movl (%esi, %ecx, 4), %eax
	cmp %edx, %eax
	jne nu_incrementez
	je incrementez
	

et_verificare_aparitii:
	movl var, %eax
	cmp $3, %eax
	jle numar_ok
	
	
	jmp nu
	
incrementez:
	incl var
	incl %ecx
	
	jmp et_for_check_3_2
	
nu_incrementez:
	incl %ecx
	jmp et_for_check_3_2



nu:
	xorl %eax, %eax
	jmp iesire_check

numar_ok:
	movl $1, %eax
   

iesire_check:
	popl %edx
	popl %ecx
	popl %edx
	popl %edi
	popl %esi
	popl %ebp
	ret
	
	
	//restaurare
	
	

sub_back:
	pushl %ebp
	movl %esp, %ebp
	pushl %esi
	
	
	
	pushl %ebx
	
	pushl %ecx
	
	pushl %edx
	
	movl $1, %ecx
	
	movl 8(%ebp), %edx

	movl $nou, %esi

et_for_back:
	cmp n, %ecx
	jg iesire_sub_back
	
	movl %ecx, (%esi, %edx, 4)

	pushl %edx
	call check
	
	popl %edx
	cmp $0, %eax
	je continuare
	
	
	cmp nr_elemente, %edx
	je afisare_1
	
	movl %edx, %eax
	
	add $1, %eax
	pushl %eax
	call sub_back
	
	
	popl %ebx

continuare:
	incl %ecx
	jmp et_for_back

iesire_sub_back:

	// cazul -1, restaurare registrii utilizati in cadrul procedurii
	
	popl %edx
	
	popl %ecx
	
	popl %ebx
	
	
	
	popl %esi
	
	popl %ebp
	
	ret

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
	
	movl %eax, n
	mull nr_elemente
	subl $1, %eax
	movl %eax, nr_elemente
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	movl %eax, m
	
	xorl %ecx, %ecx
	movl $multime, %edi
	
et_for:
	pushl %ecx	
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	cmp $0, %eax
	je et_intrare
	
	pushl %eax
	call atoi
	popl %ebx
	
	popl %ecx
	
	movl %eax, (%edi, %ecx, 4)
	incl %ecx
	jmp et_for
	
	//citirea s a terminat
	
et_intrare:
	xorl %ebx, %ebx
	pushl %ebx
	call sub_back
	popl %ebx
	
et_iesire:
	pushl $minus
	call printf
	popl %ebx
	
	push $0
	call fflush
	pop %ebx	
	
	//conditia din procedura nu a fost indeplinita
	
	pushl $1
	pushl $formatAfis
	call printf
	popl %ebx
	popl %ebx
	
	jmp et_exit

afisare_1:
	movl $0, %ebx
	movl $nou, %edi

afisare_2:
	
	movl (%edi, %ebx, 4), %eax
	pushl %ebx
	
	pushl %eax
	pushl $formatAfis
	call printf
	popl %ebx
	popl %ebx
	
	popl %ebx
	
	
	cmp nr_elemente, %ebx
	je et_exit
	
	incl %ebx
	jmp afisare_2

et_exit:
	pushl $newline
	call printf
	popl %ebx
	
	//afisare \n pe post de fflush

	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
