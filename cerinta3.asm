.data
	input: .space 1000
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%d\n"
	delim: .asciz " "
	curent: .space 4
	operatie: .space 4
	ok: .long 0
	vector1: .space 1000
	vector2: .space 1000
	a: .long 0
	b: .long 0
	c: .long 0
	d: .long 0
	e: .long 0
	f: .long 0
	g: .long 0
	h: .long 0
	i: .long 0
	j: .long 0
	k: .long 0
	l: .long 0
	m: .long 0
	n: .long 0
	o: .long 0
	p: .long 0
	q: .long 0
	r: .long 0
	s: .long 0
	t: .long 0
	u: .long 0
	v: .long 0
	w: .long 0
	x: .long 0
	y: .long 0
	z: .long 0
	
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
	
	movl %eax, %edi
	
	xorl %ecx, %ecx
	movb ( %eax, %ecx, 1), %cl
	
	cmp $96, %cl
	jg et_litera
	
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
	
	pushl %edi
	call strlen
	popl %edi
	
	cmp $1, %eax
	je et_litera

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
	jmp et_for2
et_litera:
	xorl %ecx, %ecx
	movb ( %edi, %ecx, 1), %cl
	cmp $97, %cl
	je et_a
	cmp $98, %cl
	je et_b
	cmp $99, %cl
	je et_c
	cmp $100, %cl
	je et_d
	cmp $101, %cl
	je et_e
	cmp $102, %cl
	je et_f
	cmp $103, %cl
	je et_g
	cmp $104, %cl
	je et_h
	cmp $105, %cl
	je et_i
	cmp $106, %cl
	je et_j
	cmp $107, %cl
	je et_k
	cmp $108, %cl
	je et_l
	cmp $109, %cl
	je et_m
	cmp $110, %cl
	je et_n
	cmp $111, %cl
	je et_o
	cmp $112, %cl
	je et_p
	cmp $113, %cl
	je et_q
	cmp $114, %cl
	je et_r
	cmp $115, %cl
	je et_s
	cmp $116, %cl
	je et_t
	cmp $117, %cl
	je et_u
	cmp $118, %cl
	je et_v
	cmp $119, %cl
	je et_w
	cmp $120, %cl
	je et_x
	cmp $121, %cl
	je et_y
	cmp $122, %cl
	je et_z
et_a:
	movl a, %ebx
	cmp $0, %ebx
	je et_a2
	pushl %ebx
	jmp et_for2
et_b:
	movl b, %ebx
	cmp $0, %ebx
	je et_b2
	pushl %ebx
	jmp et_for2
et_c:
	movl c, %ebx
	cmp $0, %ebx
	je et_c2
	pushl %ebx
	jmp et_for2
et_d:
        movl d, %ebx
	cmp $0, %ebx
	je et_d2
	pushl %ebx
	jmp et_for2
et_e:
	movl e, %ebx
	cmp $0, %ebx
	je et_e2
	pushl %ebx
	jmp et_for2
et_f:
	movl f, %ebx
	cmp $0, %ebx
	je et_f2
	pushl %ebx
	jmp et_for2
et_g:
	movl g, %ebx
	cmp $0, %ebx
	je et_g2
	pushl %ebx
	jmp et_for2
et_h:
	movl h, %ebx
	cmp $0, %ebx
	je et_h2
	pushl %ebx
	jmp et_for2
et_i:
	movl i, %ebx
	cmp $0, %ebx
	je et_i2
	pushl %ebx
	jmp et_for2
et_j:
	movl j, %ebx
	cmp $0, %ebx
	je et_j2
	pushl %ebx
	jmp et_for2
et_k:
	movl k, %ebx
	cmp $0, %ebx
	je et_k2
	pushl %ebx
	jmp et_for2
et_l:
	movl l, %ebx
	cmp $0, %ebx
	je et_l2
	pushl %ebx
	jmp et_for2
et_m:
	movl m, %ebx
	cmp $0, %ebx
	je et_m2
	pushl %ebx
	jmp et_for2
et_n:
	movl n, %ebx
	cmp $0, %ebx
	je et_n2
	pushl %ebx
	jmp et_for2
et_o:
	movl o, %ebx
	cmp $0, %ebx
	je et_o2
	pushl %ebx
	jmp et_for2
et_p:
	movl p, %ebx
	cmp $0, %ebx
	je et_p2
	pushl %ebx
	jmp et_for2
et_q:
	movl q, %ebx
	cmp $0, %ebx
	je et_q2
	pushl %ebx
	jmp et_for2
et_r:
	movl r, %ebx
	cmp $0, %ebx
	je et_r2
	pushl %ebx
	jmp et_for2
et_s:
	movl s, %ebx
	cmp $0, %ebx
	je et_s2
	pushl %ebx
	jmp et_for2
et_t:
	movl t, %ebx
	cmp $0, %ebx
	je et_t2
	pushl %ebx
	jmp et_for2
et_u:
	movl u, %ebx
	cmp $0, %ebx
	je et_u2
	pushl %ebx
	jmp et_for2
et_v:
	movl v, %ebx
	cmp $0, %ebx
	je et_v2
	pushl %ebx
	jmp et_for2
et_w:
	movl w, %ebx
	cmp $0, %ebx
	je et_w2
	pushl %ebx
	jmp et_for2
et_x:
	movl x, %ebx
	cmp $0, %ebx
	je et_x2
	pushl %ebx
	jmp et_for2
et_y:
	movl y, %ebx
	cmp $0, %ebx
	je et_y2
	pushl %ebx
	jmp et_for2
et_z:
	movl z, %ebx
	cmp $0, %ebx
	je et_z2
	pushl %ebx
	jmp et_for2
et_a2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, a
	
	jmp et_for2
	
	
et_b2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, b
	
	jmp et_for2
	
et_c2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, c
	
	jmp et_for2
et_d2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, d
	
	jmp et_for2
et_e2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, e
	
	jmp et_for2
et_f2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, f
	
	jmp et_for2
et_g2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, g
	
	jmp et_for2
et_h2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, h
	
	jmp et_for2
et_i2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, i
	
	jmp et_for2
et_j2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, j
	
	jmp et_for2
et_k2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, k
	
	jmp et_for2
et_l2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, l
	
	jmp et_for2
et_m2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, m
	
	jmp et_for2
et_n2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, n
	
	jmp et_for2
et_o2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, o
	
	jmp et_for2
et_p2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, p
	
	jmp et_for2
et_q2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, q
	
	jmp et_for2
et_r2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, r
	
	jmp et_for2
et_s2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, s
	
	jmp et_for2
et_t2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, t
	
	jmp et_for2
et_u2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, u
	
	jmp et_for2
et_v2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, v
	
	jmp et_for2
et_w2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, w
	
	jmp et_for2
et_x2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, x
	
	jmp et_for2
et_y2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, y
	
	jmp et_for2
et_z2:
	
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	
	movl %eax, z
	
	jmp et_for2
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
