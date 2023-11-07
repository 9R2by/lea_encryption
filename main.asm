	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%lu %u %u %u %u\n"
.LC1:
	.string	"a"
.LC2:
	.string	"cipher.texts"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Unable to open/create the file."
	.section	.rodata.str1.1
.LC4:
	.string	"%u\n%u\n%u\n%u\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	push	r14
	mov	edx, 10
	push	r13
	mov	r13, rsi
	push	r12
	push	rbp
	push	rbx
	sub	rsp, 16
	mov	rdi, QWORD PTR [rsi+8]
	xor	esi, esi
	call	strtoul
	mov	rdi, QWORD PTR [r13+16]
	xor	esi, esi
	mov	edx, 10
	mov	r12, rax
	call	strtoul
	mov	rdi, QWORD PTR [r13+24]
	xor	esi, esi
	mov	edx, 10
	mov	rbp, rax
	call	strtoul
	mov	rdi, QWORD PTR [r13+32]
	xor	esi, esi
	mov	edx, 10
	mov	rbx, rax
	call	strtoul
	mfence
	mov	rsi, rax
	rdtscp
	mov	DWORD PTR [rsp+12], ecx
	mov	rdi, rax
	sal	rdx, 32
	mov	r9d, r12d
	or	rdi, rdx
	lfence
#APP
# 73 "main.c" 1
	bswap r9d
# 0 "" 2
#NO_APP
	mov	ecx, ebp
#APP
# 74 "main.c" 1
	bswap ecx
# 0 "" 2
#NO_APP
	mov	edx, ebx
#APP
# 75 "main.c" 1
	bswap edx
# 0 "" 2
#NO_APP
	mov	eax, esi
#APP
# 76 "main.c" 1
	bswap eax
# 0 "" 2
#NO_APP
	mov	r8d, r9d
	mov	esi, ecx
	xor	ecx, 424639921
	xor	eax, 38367248
	xor	esi, 38367248
	xor	r8d, 3805140
	xor	r9d, -1634148152
	add	r8d, esi
	mov	esi, edx
	xor	edx, 151849091
	xor	esi, 38367248
	lea	ebx, [rdx+rax]
	rorx	r8d, r8d, 23
	lea	ebp, [rcx+rsi]
	mov	esi, r8d
	rorx	ebx, ebx, 3
	xor	r8d, 1835411675
	rorx	ebp, ebp, 5
	mov	eax, ebp
	xor	esi, 301845425
	xor	ebp, 414544079
	xor	eax, -1634148152
	add	esi, eax
	mov	eax, ebx
	xor	ebx, -1648018823
	xor	eax, -1634148152
	rorx	esi, esi, 23
	mov	edx, esi
	add	ebx, r9d
	add	ebp, eax
	xor	edx, -217089099
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	eax, ebp
	xor	ebp, -1219600979
	xor	eax, 1835411675
	add	edx, eax
	mov	eax, ebx
	xor	ebx, -1503770928
	xor	eax, 1835411675
	rorx	edx, edx, 23
	add	ebx, r8d
	add	ebp, eax
	mov	eax, edx
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	ecx, ebp
	xor	eax, 1947338289
	xor	ebp, -853618892
	xor	ecx, -624313065
	add	eax, ecx
	mov	ecx, ebx
	xor	ebx, 1410299633
	xor	ecx, -624313065
	rorx	eax, eax, 23
	add	ebp, ecx
	xor	esi, -624313065
	mov	ecx, eax
	xor	edx, -969423750
	add	ebx, esi
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ecx, 1713457115
	xor	ebp, 1179748658
	xor	esi, -969423750
	rorx	ebx, ebx, 3
	xor	eax, -158062498
	add	ecx, esi
	mov	esi, ebx
	xor	ebx, 589730400
	xor	esi, -969423750
	add	ebx, edx
	rorx	ecx, ecx, 23
	mov	edx, ecx
	xor	ecx, 1049849047
	add	ebp, esi
	xor	edx, -455258041
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, -507341539
	xor	esi, -158062498
	add	edx, esi
	mov	esi, ebx
	xor	ebx, -1935334356
	xor	esi, -158062498
	add	ebx, eax
	rorx	edx, edx, 23
	mov	eax, edx
	add	ebp, esi
	xor	eax, -1158093366
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, 264758705
	xor	esi, 1049849047
	add	eax, esi
	mov	esi, ebx
	xor	ebx, -238486900
	xor	esi, 1049849047
	add	ebx, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	add	ebp, esi
	xor	ecx, 1428338700
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	esi, -299709832
	add	ecx, esi
	mov	esi, ebx
	xor	ebp, -1972393805
	xor	edx, -299709832
	xor	esi, -299709832
	xor	ebx, 1701018484
	rorx	ecx, ecx, 23
	xor	eax, 1874071550
	add	ebp, esi
	add	ebx, edx
	mov	edx, ecx
	xor	ecx, -889141121
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	edx, -1978062946
	rorx	ebx, ebx, 3
	xor	ebp, -2050625390
	xor	esi, 1874071550
	add	edx, esi
	mov	esi, ebx
	xor	ebx, -1832083675
	xor	esi, 1874071550
	add	ebx, eax
	rorx	edx, edx, 23
	mov	eax, edx
	xor	edx, -148315530
	add	ebp, esi
	xor	eax, -1646372788
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, 1199615334
	xor	esi, -889141121
	add	eax, esi
	mov	esi, ebx
	xor	ebx, -434414133
	xor	esi, -889141121
	add	ebx, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	add	ebp, esi
	xor	ecx, 1335952486
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, -766164709
	xor	esi, -148315530
	add	ecx, esi
	mov	esi, ebx
	xor	ebx, 1701329325
	xor	esi, -148315530
	rorx	ecx, ecx, 23
	add	ebp, esi
	add	ebx, edx
	mov	edx, ecx
	xor	eax, 1371361311
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	edx, -1840197544
	rorx	ebx, ebx, 3
	xor	ebp, 481562030
	xor	esi, 1371361311
	xor	ecx, 2009482466
	add	edx, esi
	mov	esi, ebx
	xor	ebx, 448733581
	xor	esi, 1371361311
	add	ebx, eax
	rorx	edx, edx, 23
	mov	eax, edx
	xor	edx, -1808355376
	add	ebp, esi
	xor	eax, 568138029
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, -893408699
	xor	esi, 2009482466
	add	eax, esi
	mov	esi, ebx
	xor	ebx, 1746673789
	xor	esi, 2009482466
	add	ebx, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	add	ebp, esi
	xor	ecx, -562379918
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, 271785344
	xor	esi, -1808355376
	add	ecx, esi
	mov	esi, ebx
	xor	ebx, -215548264
	xor	esi, -1808355376
	add	ebx, edx
	rorx	ecx, ecx, 23
	mov	edx, ecx
	add	ebp, esi
	xor	edx, -80034860
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, 795203747
	xor	esi, -1814075890
	add	edx, esi
	mov	esi, ebx
	xor	esi, -1814075890
	xor	eax, -1814075890
	xor	ebx, -544020639
	rorx	edx, edx, 23
	xor	ecx, 643757934
	add	ebp, esi
	add	ebx, eax
	mov	eax, edx
	xor	edx, -793511313
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	eax, 660734087
	rorx	ebx, ebx, 3
	xor	ebp, 1337104484
	xor	esi, 643757934
	add	eax, esi
	mov	esi, ebx
	xor	ebx, 643231002
	xor	esi, 643757934
	add	ebx, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	xor	eax, -437755965
	add	ebp, esi
	xor	ecx, 578521324
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, -932574979
	xor	esi, -793511313
	add	ecx, esi
	mov	esi, ebx
	xor	ebx, -1469789271
	xor	esi, -793511313
	add	ebx, edx
	rorx	ecx, ecx, 23
	mov	edx, ecx
	add	ebp, esi
	xor	edx, -251649183
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, 520815624
	xor	esi, -437755965
	add	edx, esi
	mov	esi, ebx
	xor	ebx, 1217297092
	xor	esi, -437755965
	add	ebx, eax
	rorx	edx, edx, 23
	mov	eax, edx
	add	ebp, esi
	xor	eax, -967567915
	rorx	ebx, ebx, 3
	xor	ecx, 1373730486
	xor	edx, 88614219
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, -324498439
	xor	esi, 1373730486
	add	eax, esi
	mov	esi, ebx
	xor	ebx, -306667826
	xor	esi, 1373730486
	add	ebx, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	xor	eax, 100997698
	add	ebp, esi
	xor	ecx, -1687176804
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, -1914046526
	xor	esi, 88614219
	add	ecx, esi
	mov	esi, ebx
	xor	ebx, -1229663930
	xor	esi, 88614219
	add	ebx, edx
	rorx	ecx, ecx, 23
	mov	edx, ecx
	add	ebp, esi
	xor	edx, 1918366004
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, 918351617
	xor	esi, 100997698
	add	edx, esi
	mov	esi, ebx
	xor	ebx, -1236675292
	xor	esi, 100997698
	add	ebx, eax
	rorx	edx, edx, 23
	mov	eax, edx
	add	ebp, esi
	xor	eax, -1522468093
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	esi, ebp
	xor	ebp, -137884243
	xor	esi, 884053734
	add	eax, esi
	mov	esi, ebx
	xor	esi, 884053734
	rorx	eax, eax, 23
	mov	r9d, eax
	add	ebp, esi
	xor	ecx, 884053734
	xor	ebx, 1908178372
	xor	r9d, -1883314363
	add	ebx, ecx
	rorx	ebp, ebp, 5
	mov	ecx, ebp
	xor	ebp, -1870919072
	xor	edx, -814464733
	xor	ecx, -814464733
	rorx	ebx, ebx, 3
	add	r9d, ecx
	mov	ecx, ebx
	xor	ebx, -2112492491
	xor	ecx, -814464733
	add	ebx, edx
	rorx	r9d, r9d, 23
	mov	r12d, r9d
	add	ebp, ecx
	xor	r12d, 200715706
	rorx	ebx, ebx, 3
	rorx	ebp, ebp, 5
	mov	edx, ebp
	xor	edx, -546766179
	add	r12d, edx
	rorx	r12d, r12d, 23
#APP
# 247 "main.c" 1
	bswap r12d
# 0 "" 2
#NO_APP
	mov	edx, ebx
	xor	ebp, 1534210138
	xor	edx, -546766179
	add	ebp, edx
	rorx	ebp, ebp, 5
#APP
# 248 "main.c" 1
	bswap ebp
# 0 "" 2
#NO_APP
	xor	ebx, -884489825
	xor	eax, -546766179
	add	ebx, eax
	rorx	ebx, ebx, 3
#APP
# 249 "main.c" 1
	bswap ebx
# 0 "" 2
#NO_APP
	mov	r14d, r9d
#APP
# 250 "main.c" 1
	bswap r14d
# 0 "" 2
#NO_APP
	mfence
	rdtscp
	mov	DWORD PTR [rsp+12], ecx
	sal	rdx, 32
	mov	r9d, r14d
	mov	r8d, ebx
	or	rax, rdx
	mov	ecx, ebp
	mov	edx, r12d
	sub	rax, rdi
	mov	edi, OFFSET FLAT:.LC0
	lfence
	mov	rsi, rax
	xor	eax, eax
	call	printf
	mov	esi, OFFSET FLAT:.LC1
	mov	edi, OFFSET FLAT:.LC2
	call	fopen
	test	rax, rax
	je	.L6
	mov	rdi, rax
	mov	r13, rax
	mov	r9d, r14d
	mov	r8d, ebx
	mov	ecx, ebp
	mov	edx, r12d
	mov	esi, OFFSET FLAT:.LC4
	xor	eax, eax
	call	fprintf
	mov	rdi, r13
	call	fclose
	xor	eax, eax
.L1:
	add	rsp, 16
	pop	rbx
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
.L6:
	mov	edi, OFFSET FLAT:.LC3
	call	puts
	mov	eax, 1
	jmp	.L1
	.size	main, .-main
	.ident	"GCC: (GNU) 13.2.1 20231011 (Red Hat 13.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
