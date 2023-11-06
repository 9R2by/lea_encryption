	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	rdi, qword ptr [rsi + 8]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 16]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	r15, rax
	mov	rdi, qword ptr [r12 + 24]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 32]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	
	//367 instructions
	bswap	r14d
	bswap	r15d
	bswap	ebx
	bswap	eax
	mov	ecx, r14d
	xor	ecx, 3805140
	mov	edx, r15d
	xor	edx, 38367248
	add	edx, ecx
	rorx	ecx, edx, 23
	xor	r15d, 424639921
	mov	edx, ebx
	xor	edx, 38367248
	add	edx, r15d
	rorx	edx, edx, 5
	xor	ebx, 151849091
	xor	eax, 38367248
	add	eax, ebx
	rorx	esi, eax, 3
	mov	eax, ecx
	xor	eax, 301845425
	mov	edi, edx
	xor	edi, -1634148152
	add	edi, eax
	rorx	eax, edi, 23
	xor	edx, 414544079
	mov	edi, esi
	xor	edi, -1634148152
	add	edi, edx
	rorx	ebx, edi, 5
	xor	esi, -1648018823
	xor	r14d, -1634148152
	add	r14d, esi
	rorx	esi, r14d, 3
	mov	edx, eax
	xor	edx, -217089099
	mov	edi, ebx
	xor	edi, 1835411675
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebx, -1219600979
	mov	edi, esi
	xor	edi, 1835411675
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -1503770928
	xor	ecx, 1835411675
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, edx
	xor	ecx, 1947338289
	mov	edi, ebx
	xor	edi, -624313065
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebx, -853618892
	mov	edi, esi
	xor	edi, -624313065
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 1410299633
	xor	eax, -624313065
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, ecx
	xor	eax, 1713457115
	mov	edi, ebx
	xor	edi, -969423750
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebx, 1179748658
	mov	edi, esi
	xor	edi, -969423750
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 589730400
	xor	edx, -969423750
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, eax
	xor	edx, -455258041
	mov	edi, ebx
	xor	edi, -158062498
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebx, -507341539
	mov	edi, esi
	xor	edi, -158062498
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -1935334356
	xor	ecx, -158062498
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, edx
	xor	ecx, -1158093366
	mov	edi, ebx
	xor	edi, 1049849047
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebx, 264758705
	mov	edi, esi
	xor	edi, 1049849047
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -238486900
	xor	eax, 1049849047
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, ecx
	xor	eax, 1428338700
	mov	edi, ebx
	xor	edi, -299709832
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebx, -1972393805
	mov	edi, esi
	xor	edi, -299709832
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 1701018484
	xor	edx, -299709832
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, eax
	xor	edx, -1978062946
	mov	edi, ebx
	xor	edi, 1874071550
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebx, -2050625390
	mov	edi, esi
	xor	edi, 1874071550
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -1832083675
	xor	ecx, 1874071550
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, edx
	xor	ecx, -1646372788
	mov	edi, ebx
	xor	edi, -889141121
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebx, 1199615334
	mov	edi, esi
	xor	edi, -889141121
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -434414133
	xor	eax, -889141121
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, ecx
	xor	eax, 1335952486
	mov	edi, ebx
	xor	edi, -148315530
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebx, -766164709
	mov	edi, esi
	xor	edi, -148315530
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 1701329325
	xor	edx, -148315530
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, eax
	xor	edx, -1840197544
	mov	edi, ebx
	xor	edi, 1371361311
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebx, 481562030
	mov	edi, esi
	xor	edi, 1371361311
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 448733581
	xor	ecx, 1371361311
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, edx
	xor	ecx, 568138029
	mov	edi, ebx
	xor	edi, 2009482466
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebx, -893408699
	mov	edi, esi
	xor	edi, 2009482466
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 1746673789
	xor	eax, 2009482466
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, ecx
	xor	eax, -562379918
	mov	edi, ebx
	xor	edi, -1808355376
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebx, 271785344
	mov	edi, esi
	xor	edi, -1808355376
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -215548264
	xor	edx, -1808355376
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, eax
	xor	edx, -80034860
	mov	edi, ebx
	xor	edi, -1814075890
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebx, 795203747
	mov	edi, esi
	xor	edi, -1814075890
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -544020639
	xor	ecx, -1814075890
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, edx
	xor	ecx, 660734087
	mov	edi, ebx
	xor	edi, 643757934
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebx, 1337104484
	mov	edi, esi
	xor	edi, 643757934
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 643231002
	xor	eax, 643757934
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, ecx
	xor	eax, 578521324
	mov	edi, ebx
	xor	edi, -793511313
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebx, -932574979
	mov	edi, esi
	xor	edi, -793511313
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -1469789271
	xor	edx, -793511313
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, eax
	xor	edx, -251649183
	mov	edi, ebx
	xor	edi, -437755965
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebx, 520815624
	mov	edi, esi
	xor	edi, -437755965
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 1217297092
	xor	ecx, -437755965
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, edx
	xor	ecx, -967567915
	mov	edi, ebx
	xor	edi, 1373730486
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebx, -324498439
	mov	edi, esi
	xor	edi, 1373730486
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -306667826
	xor	eax, 1373730486
	add	eax, esi
	rorx	esi, eax, 3
	mov	eax, ecx
	xor	eax, -1687176804
	mov	edi, ebx
	xor	edi, 88614219
	add	edi, eax
	rorx	eax, edi, 23
	xor	ebx, -1914046526
	mov	edi, esi
	xor	edi, 88614219
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -1229663930
	xor	edx, 88614219
	add	edx, esi
	rorx	esi, edx, 3
	mov	edx, eax
	xor	edx, 1918366004
	mov	edi, ebx
	xor	edi, 100997698
	add	edi, edx
	rorx	edx, edi, 23
	xor	ebx, 918351617
	mov	edi, esi
	xor	edi, 100997698
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, -1236675292
	xor	ecx, 100997698
	add	ecx, esi
	rorx	esi, ecx, 3
	mov	ecx, edx
	xor	ecx, -1522468093
	mov	edi, ebx
	xor	edi, 884053734
	add	edi, ecx
	rorx	ecx, edi, 23
	xor	ebx, -137884243
	mov	edi, esi
	xor	edi, 884053734
	add	edi, ebx
	rorx	ebx, edi, 5
	xor	esi, 1908178372
	xor	eax, 884053734
	add	eax, esi
	rorx	eax, eax, 3
	mov	esi, ecx
	xor	esi, -1883314363
	mov	edi, ebx
	xor	edi, -814464733
	add	edi, esi
	rorx	r8d, edi, 23
	xor	ebx, -1870919072
	mov	esi, eax
	xor	esi, -814464733
	add	esi, ebx
	rorx	edi, esi, 5
	xor	eax, -2112492491
	xor	edx, -814464733
	add	edx, eax
	rorx	eax, edx, 3
	mov	edx, r8d
	xor	edx, 200715706
	mov	esi, edi
	xor	esi, -546766179
	add	esi, edx
	rorx	esi, esi, 23
	xor	edi, 1534210138
	mov	edx, eax
	xor	edx, -546766179
	add	edx, edi
	rorx	edx, edx, 5
	xor	eax, -884489825
	xor	ecx, -546766179
	add	ecx, eax
	rorx	ecx, ecx, 3
	bswap	esi
	bswap	edx
	bswap	ecx
	bswap	r8d


	lea	rdi, [rip + .L.str]
	xor	eax, eax
	call	printf@PLT
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%u %u %u %u\n"
	.size	.L.str, 13

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
