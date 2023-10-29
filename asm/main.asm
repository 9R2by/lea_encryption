	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%lu %u %u %u %u\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	push	r13
	mov	edx, 10
	mov	r13, rsi
	push	r12
	push	rbp
	push	rbx
	sub	rsp, 24
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
	mov	rbx, rax
	call	strtoul
	mov	rdi, QWORD PTR [r13+32]
	xor	esi, esi
	mov	edx, 10
	mov	rbp, rax
	call	strtoul
	mfence
	mov	rsi, rax
	rdtscp
	mov	DWORD PTR [rsp+12], ecx
	mov	rdi, rax
	sal	rdx, 32
	mov	r11d, r12d
	or	rdi, rdx
	lfence


# LLVM-MCA-BEGIN
	bswap r11d
	mov	ecx, ebx
	bswap ecx
	mov	edx, ebp
	bswap edx
	mov	eax, esi
	bswap eax
	mov	r9d, r11d
	mov	esi, ecx
	xor	ecx, 424639921
	xor	eax, 38367248
	xor	esi, 38367248
	xor	r9d, 3805140
	xor	r11d, -1634148152
	add	r9d, esi
	mov	esi, edx
	xor	edx, 151849091
	xor	esi, 38367248
	lea	r8d, [rdx+rax]
	rorx	r9d, r9d, 23
	lea	r10d, [rcx+rsi]
	mov	esi, r9d
	rorx	r8d, r8d, 3
	xor	r9d, 1835411675
	rorx	r10d, r10d, 5
	mov	eax, r10d
	xor	esi, 301845425
	xor	r10d, 414544079
	xor	eax, -1634148152
	add	esi, eax
	mov	eax, r8d
	xor	r8d, -1648018823
	xor	eax, -1634148152
	rorx	esi, esi, 23
	mov	edx, esi
	add	r8d, r11d
	add	r10d, eax
	xor	edx, -217089099
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	eax, r10d
	xor	r10d, -1219600979
	xor	eax, 1835411675
	add	edx, eax
	mov	eax, r8d
	xor	r8d, -1503770928
	xor	eax, 1835411675
	rorx	edx, edx, 23
	add	r8d, r9d
	add	r10d, eax
	mov	eax, edx
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	ecx, r10d
	xor	eax, 1947338289
	xor	r10d, -853618892
	xor	ecx, -624313065
	add	eax, ecx
	mov	ecx, r8d
	xor	r8d, 1410299633
	xor	ecx, -624313065
	rorx	eax, eax, 23
	add	r10d, ecx
	xor	esi, -624313065
	mov	ecx, eax
	xor	edx, -969423750
	add	r8d, esi
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	ecx, 1713457115
	xor	r10d, 1179748658
	xor	esi, -969423750
	rorx	r8d, r8d, 3
	xor	eax, -158062498
	add	ecx, esi
	mov	esi, r8d
	xor	r8d, 589730400
	xor	esi, -969423750
	add	r8d, edx
	rorx	ecx, ecx, 23
	mov	edx, ecx
	xor	ecx, 1049849047
	add	r10d, esi
	xor	edx, -455258041
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, -507341539
	xor	esi, -158062498
	add	edx, esi
	mov	esi, r8d
	xor	r8d, -1935334356
	xor	esi, -158062498
	add	r8d, eax
	rorx	edx, edx, 23
	mov	eax, edx
	add	r10d, esi
	xor	eax, -1158093366
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, 264758705
	xor	esi, 1049849047
	add	eax, esi
	mov	esi, r8d
	xor	r8d, -238486900
	xor	esi, 1049849047
	add	r8d, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	add	r10d, esi
	xor	ecx, 1428338700
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	esi, -299709832
	add	ecx, esi
	mov	esi, r8d
	xor	r10d, -1972393805
	xor	edx, -299709832
	xor	esi, -299709832
	xor	r8d, 1701018484
	rorx	ecx, ecx, 23
	xor	eax, 1874071550
	add	r10d, esi
	add	r8d, edx
	mov	edx, ecx
	xor	ecx, -889141121
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	edx, -1978062946
	rorx	r8d, r8d, 3
	xor	r10d, -2050625390
	xor	esi, 1874071550
	add	edx, esi
	mov	esi, r8d
	xor	r8d, -1832083675
	xor	esi, 1874071550
	add	r8d, eax
	rorx	edx, edx, 23
	mov	eax, edx
	xor	edx, -148315530
	add	r10d, esi
	xor	eax, -1646372788
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, 1199615334
	xor	esi, -889141121
	add	eax, esi
	mov	esi, r8d
	xor	r8d, -434414133
	xor	esi, -889141121
	add	r8d, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	add	r10d, esi
	xor	ecx, 1335952486
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, -766164709
	xor	esi, -148315530
	add	ecx, esi
	mov	esi, r8d
	xor	r8d, 1701329325
	xor	esi, -148315530
	rorx	ecx, ecx, 23
	add	r10d, esi
	add	r8d, edx
	mov	edx, ecx
	xor	eax, 1371361311
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	edx, -1840197544
	rorx	r8d, r8d, 3
	xor	r10d, 481562030
	xor	esi, 1371361311
	xor	ecx, 2009482466
	add	edx, esi
	mov	esi, r8d
	xor	r8d, 448733581
	xor	esi, 1371361311
	add	r8d, eax
	rorx	edx, edx, 23
	mov	eax, edx
	xor	edx, -1808355376
	add	r10d, esi
	xor	eax, 568138029
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, -893408699
	xor	esi, 2009482466
	add	eax, esi
	mov	esi, r8d
	xor	r8d, 1746673789
	xor	esi, 2009482466
	add	r8d, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	add	r10d, esi
	xor	ecx, -562379918
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, 271785344
	xor	esi, -1808355376
	add	ecx, esi
	mov	esi, r8d
	xor	r8d, -215548264
	xor	esi, -1808355376
	add	r8d, edx
	rorx	ecx, ecx, 23
	mov	edx, ecx
	add	r10d, esi
	xor	edx, -80034860
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, 795203747
	xor	esi, -1814075890
	add	edx, esi
	mov	esi, r8d
	xor	esi, -1814075890
	xor	eax, -1814075890
	xor	r8d, -544020639
	rorx	edx, edx, 23
	xor	ecx, 643757934
	add	r10d, esi
	add	r8d, eax
	mov	eax, edx
	xor	edx, -793511313
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	eax, 660734087
	rorx	r8d, r8d, 3
	xor	r10d, 1337104484
	xor	esi, 643757934
	add	eax, esi
	mov	esi, r8d
	xor	r8d, 643231002
	xor	esi, 643757934
	add	r8d, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	xor	eax, -437755965
	add	r10d, esi
	xor	ecx, 578521324
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, -932574979
	xor	esi, -793511313
	add	ecx, esi
	mov	esi, r8d
	xor	r8d, -1469789271
	xor	esi, -793511313
	add	r8d, edx
	rorx	ecx, ecx, 23
	mov	edx, ecx
	add	r10d, esi
	xor	edx, -251649183
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, 520815624
	xor	esi, -437755965
	add	edx, esi
	mov	esi, r8d
	xor	r8d, 1217297092
	xor	esi, -437755965
	add	r8d, eax
	rorx	edx, edx, 23
	mov	eax, edx
	add	r10d, esi
	xor	eax, -967567915
	rorx	r8d, r8d, 3
	xor	ecx, 1373730486
	xor	edx, 88614219
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, -324498439
	xor	esi, 1373730486
	add	eax, esi
	mov	esi, r8d
	xor	r8d, -306667826
	xor	esi, 1373730486
	add	r8d, ecx
	rorx	eax, eax, 23
	mov	ecx, eax
	xor	eax, 100997698
	add	r10d, esi
	xor	ecx, -1687176804
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, -1914046526
	xor	esi, 88614219
	add	ecx, esi
	mov	esi, r8d
	xor	r8d, -1229663930
	xor	esi, 88614219
	add	r8d, edx
	rorx	ecx, ecx, 23
	mov	edx, ecx
	add	r10d, esi
	xor	edx, 1918366004
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, 918351617
	xor	esi, 100997698
	add	edx, esi
	mov	esi, r8d
	xor	r8d, -1236675292
	xor	esi, 100997698
	add	r8d, eax
	rorx	edx, edx, 23
	mov	eax, edx
	add	r10d, esi
	xor	eax, -1522468093
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	esi, r10d
	xor	r10d, -137884243
	xor	esi, 884053734
	add	eax, esi
	mov	esi, r8d
	xor	esi, 884053734
	rorx	eax, eax, 23
	mov	r9d, eax
	add	r10d, esi
	xor	ecx, 884053734
	xor	r8d, 1908178372
	xor	r9d, -1883314363
	add	r8d, ecx
	rorx	r10d, r10d, 5
	mov	ecx, r10d
	xor	r10d, -1870919072
	xor	edx, -814464733
	xor	ecx, -814464733
	rorx	r8d, r8d, 3
	add	r9d, ecx
	mov	ecx, r8d
	xor	r8d, -2112492491
	xor	ecx, -814464733
	add	r8d, edx
	rorx	r9d, r9d, 23
	mov	r11d, r9d
	add	r10d, ecx
	xor	r11d, 200715706
	rorx	r8d, r8d, 3
	rorx	r10d, r10d, 5
	mov	edx, r10d
	xor	edx, -546766179
	add	r11d, edx
	rorx	r11d, r11d, 23
	bswap r11d
	mov	edx, r8d
	xor	r10d, 1534210138
	xor	edx, -546766179
	add	r10d, edx
	rorx	r10d, r10d, 5
	bswap r10d
	xor	r8d, -884489825
	xor	eax, -546766179
	add	r8d, eax
	rorx	r8d, r8d, 3
	bswap r8d
	bswap r9d
# LLVM-MCA-END


	mfence
	rdtscp
	mov	DWORD PTR [rsp+12], ecx
	sal	rdx, 32
	mov	ecx, r10d
	or	rax, rdx
	mov	edx, r11d
	sub	rax, rdi
	mov	edi, OFFSET FLAT:.LC0
	lfence
	mov	rsi, rax
	xor	eax, eax
	call	printf
	add	rsp, 24
	xor	eax, eax
	pop	rbx
	pop	rbp
	pop	r12
	pop	r13
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 13.2.1 20231205 (Red Hat 13.2.1-6)"
	.section	.note.GNU-stack,"",@progbits
