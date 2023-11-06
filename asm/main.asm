	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	rdi, qword ptr [rsi + 8]
	xor	r14d, r14d
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	r15, rax
	mov	rdi, qword ptr [r12 + 16]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 24]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	rbp, rax
	mov	rdi, qword ptr [r12 + 32]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mfence
	mov	rdi, rax
	rdtscp
	mov	r8, rdx
	shl	r8, 32
	or	r8, rax
	lfence
	bswap	r15d
	bswap	ebx
	bswap	ebp
	bswap	edi
	mov	eax, r15d
	xor	eax, 3805140
	mov	ecx, ebx
	xor	ecx, 38367248
	add	ecx, eax
	rorx	eax, ecx, 23
	xor	ebx, 424639921
	mov	ecx, ebp
	xor	ecx, 38367248
	add	ecx, ebx
	rorx	ebx, ecx, 5
	xor	ebp, 151849091
	xor	edi, 38367248
	add	edi, ebp
	rorx	edi, edi, 3
	mov	ecx, eax
	xor	ecx, 301845425
	mov	edx, ebx
	xor	edx, -1634148152
	add	edx, ecx
	rorx	ecx, edx, 23
	xor	ebx, 414544079
	mov	edx, edi
	xor	edx, -1634148152
	add	edx, ebx
	rorx	ebx, edx, 5
	xor	edi, -1648018823
	xor	r15d, -1634148152
	add	r15d, edi
	rorx	esi, r15d, 3
	mov	edx, ecx
	xor	edx, -217089099
	mov	ebp, ebx
	xor	ebp, 1835411675
	add	ebp, edx
	rorx	edx, ebp, 23
	xor	ebx, -1219600979
	mov	edi, esi
	xor	edi, 1835411675
	add	edi, ebx
	rorx	ebp, edi, 5
	xor	esi, -1503770928
	xor	eax, 1835411675
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, edx
	xor	eax, 1947338289
	mov	edi, ebp
	xor	edi, -624313065
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebp, -853618892
	mov	edi, esi
	xor	edi, -624313065
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 1410299633
	xor	ecx, -624313065
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, eax
	xor	ecx, 1713457115
	mov	edi, ebp
	xor	edi, -969423750
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebp, 1179748658
	mov	edi, esi
	xor	edi, -969423750
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 589730400
	xor	edx, -969423750
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, ecx
	xor	edx, -455258041
	mov	edi, ebp
	xor	edi, -158062498
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebp, -507341539
	mov	edi, esi
	xor	edi, -158062498
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -1935334356
	xor	eax, -158062498
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, edx
	xor	eax, -1158093366
	mov	edi, ebp
	xor	edi, 1049849047
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebp, 264758705
	mov	edi, esi
	xor	edi, 1049849047
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -238486900
	xor	ecx, 1049849047
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, eax
	xor	ecx, 1428338700
	mov	edi, ebp
	xor	edi, -299709832
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebp, -1972393805
	mov	edi, esi
	xor	edi, -299709832
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 1701018484
	xor	edx, -299709832
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, ecx
	xor	edx, -1978062946
	mov	edi, ebp
	xor	edi, 1874071550
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebp, -2050625390
	mov	edi, esi
	xor	edi, 1874071550
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -1832083675
	xor	eax, 1874071550
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, edx
	xor	eax, -1646372788
	mov	edi, ebp
	xor	edi, -889141121
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebp, 1199615334
	mov	edi, esi
	xor	edi, -889141121
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -434414133
	xor	ecx, -889141121
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, eax
	xor	ecx, 1335952486
	mov	edi, ebp
	xor	edi, -148315530
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebp, -766164709
	mov	edi, esi
	xor	edi, -148315530
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 1701329325
	xor	edx, -148315530
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, ecx
	xor	edx, -1840197544
	mov	edi, ebp
	xor	edi, 1371361311
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebp, 481562030
	mov	edi, esi
	xor	edi, 1371361311
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 448733581
	xor	eax, 1371361311
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, edx
	xor	eax, 568138029
	mov	edi, ebp
	xor	edi, 2009482466
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebp, -893408699
	mov	edi, esi
	xor	edi, 2009482466
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 1746673789
	xor	ecx, 2009482466
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, eax
	xor	ecx, -562379918
	mov	edi, ebp
	xor	edi, -1808355376
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebp, 271785344
	mov	edi, esi
	xor	edi, -1808355376
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -215548264
	xor	edx, -1808355376
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, ecx
	xor	edx, -80034860
	mov	edi, ebp
	xor	edi, -1814075890
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebp, 795203747
	mov	edi, esi
	xor	edi, -1814075890
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -544020639
	xor	eax, -1814075890
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, edx
	xor	eax, 660734087
	mov	edi, ebp
	xor	edi, 643757934
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebp, 1337104484
	mov	edi, esi
	xor	edi, 643757934
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 643231002
	xor	ecx, 643757934
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, eax
	xor	ecx, 578521324
	mov	edi, ebp
	xor	edi, -793511313
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebp, -932574979
	mov	edi, esi
	xor	edi, -793511313
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -1469789271
	xor	edx, -793511313
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, ecx
	xor	edx, -251649183
	mov	edi, ebp
	xor	edi, -437755965
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebp, 520815624
	mov	edi, esi
	xor	edi, -437755965
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 1217297092
	xor	eax, -437755965
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, edx
	xor	eax, -967567915
	mov	edi, ebp
	xor	edi, 1373730486
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebp, -324498439
	mov	edi, esi
	xor	edi, 1373730486
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -306667826
	xor	ecx, 1373730486
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, eax
	xor	ecx, -1687176804
	mov	edi, ebp
	xor	edi, 88614219
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebp, -1914046526
	mov	edi, esi
	xor	edi, 88614219
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -1229663930
	xor	edx, 88614219
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, ecx
	xor	edx, 1918366004
	mov	edi, ebp
	xor	edi, 100997698
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebp, 918351617
	mov	edi, esi
	xor	edi, 100997698
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, -1236675292
	xor	eax, 100997698
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, edx
	xor	eax, -1522468093
	mov	edi, ebp
	xor	edi, 884053734
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebp, -137884243
	mov	edi, esi
	xor	edi, 884053734
	add	edi, ebp
	rorx	ebp, edi, 5
	xor	esi, 1908178372
	xor	ecx, 884053734
	add	ecx, esi
	rorx	ecx, ecx, 3
	mov	esi, eax
	xor	esi, -1883314363
	mov	edi, ebp
	xor	edi, -814464733
	add	edi, esi
	rorx	r15d, edi, 23
	xor	ebp, -1870919072
	mov	esi, ecx
	xor	esi, -814464733
	add	esi, ebp
	rorx	esi, esi, 5
	xor	ecx, -2112492491
	xor	edx, -814464733
	add	edx, ecx
	rorx	ecx, edx, 3
	mov	edx, r15d
	xor	edx, 200715706
	mov	edi, esi
	xor	edi, -546766179
	add	edi, edx
	rorx	r12d, edi, 23
	xor	esi, 1534210138
	mov	edx, ecx
	xor	edx, -546766179
	add	edx, esi
	rorx	r13d, edx, 5
	xor	ecx, -884489825
	xor	eax, -546766179
	add	eax, ecx
	rorx	ebx, eax, 3
	bswap	r12d
	mfence
	bswap	r13d
	bswap	ebx
	rdtscp
	bswap	r15d
	shl	rdx, 32
	or	rdx, rax
	lfence
	sub	rdx, r8
	lea	rdi, [rip + .L.str]
	mov	rsi, rdx
	mov	edx, r12d
	mov	ecx, r13d
	mov	r8d, ebx
	mov	r9d, r15d
	xor	eax, eax
	call	printf@PLT
	lea	rdi, [rip + .L.str.1]
	lea	rsi, [rip + .L.str.2]
	call	fopen@PLT
	test	rax, rax
	je	.LBB0_1
# %bb.2:
	mov	rbp, rax
	lea	rsi, [rip + .L.str.4]
	mov	rdi, rax
	mov	edx, r12d
	mov	ecx, r13d
	mov	r8d, ebx
	mov	r9d, r15d
	xor	eax, eax
	call	fprintf@PLT
	mov	rdi, rbp
	call	fclose@PLT
	jmp	.LBB0_3
.LBB0_1:
	lea	rdi, [rip + .Lstr]
	call	puts@PLT
	mov	r14d, 1
.LBB0_3:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lu %u %u %u %u\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cipher.texts"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"a"
	.size	.L.str.2, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%u\n%u\n%u\n%u\n"
	.size	.L.str.4, 13

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Unable to open/create the file."
	.size	.Lstr, 32

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
