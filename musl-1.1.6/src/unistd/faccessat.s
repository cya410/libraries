	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"src/unistd/faccessat.bc"
	.globl	faccessat
	.align	2
	.type	faccessat,%function
faccessat:                              @ @faccessat
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#1168
	sub	sp, sp, #1168
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r3
	mov	r8, r2
	mov	r6, r1
	mov	r4, r0
	cmp	r5, #0
	beq	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                @ %entry
	cmp	r5, #512
	bne	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %land.lhs.true
	bl	getuid
	mov	r7, r0
	bl	geteuid
	cmp	r7, r0
	bne	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                @ %land.lhs.true3
	bl	getgid
	mov	r7, r0
	bl	getegid
	cmp	r7, r0
	bne	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                @ %if.then
	mov	r7, #78
	mov	r0, r4
	mov	r1, r6
	mov	r2, r8
	mov	r3, r5
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_9
.LBB0_8:                                @ %if.then10
	mvn	r0, #21
	b	.LBB0_9
.LBB0_9:                                @ %if.then10
	add	sp, sp, #1168
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	__syscall_ret
.LBB0_10:                               @ %if.end12
	add	r0, sp, #16
	stmib	sp, {r4, r6, r8}
	bl	__block_all_sigs
	add	r0, sp, #144
	b	.LBB0_11
.LBB0_11:                               @ %if.end12
	add	r3, sp, #4
	mov	r2, #0
	add	r1, r0, #1024
	ldr	r0, .LCPI0_2
	b	.LBB0_12
.LCPI0_2:
	.long	checker
.LBB0_12:                               @ %if.end12
	bl	__clone
	mov	r6, r0
	mvn	r4, #15
	cmp	r6, #1
	blt	.LBB0_17
	b	.LBB0_13
.LBB0_13:                               @ %do.body.preheader
	mov	r5, #255
	mov	r1, sp
	mov	r7, #114
	mov	r2, #-2147483648
	mov	r3, #0
	orr	r5, r5, #65280
	b	.LBB0_14
.LBB0_14:                               @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	ldr	r0, [sp]
	tst	r0, #127
	beq	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %land.rhs
                                        @   in Loop: Header=BB0_14 Depth=1
	and	r0, r0, r5
	sub	r0, r0, #1
	cmp	r0, #254
	bhi	.LBB0_14
	b	.LBB0_17
.LBB0_16:                               @ %if.then25
	mov	r1, #1020
	and	r0, r1, r0, lsr #6
	ldr	r1, .LCPI0_3
	ldr	r4, [r1, r0]
	b	.LBB0_17
.LCPI0_3:
	.long	errors
.LBB0_17:                               @ %return
	add	r0, sp, #16
	bl	__restore_sigs
	mov	r0, r4
	bl	__syscall_ret
	add	sp, sp, #1168
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	faccessat, .Ltmp0-faccessat
	.cantunwind
	.fnend

	.align	2
	.type	checker,%function
checker:                                @ @checker
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r7, #202
	mov	r2, r0
	mvn	r1, #0
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r7, #204
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	bne	.LBB1_4
	b	.LBB1_3
.LBB1_3:                                @ %lor.lhs.false
	mov	r7, #201
	mvn	r1, #0
	@APP
	svc	#0
	@NO_APP
	mov	r7, #203
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	beq	.LBB1_5
	b	.LBB1_4
.LBB1_4:                                @ %if.then
	mov	r7, #1
	mov	r0, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_5
.LBB1_5:                                @ %if.end
	ldm	r2, {r0, r1, r2}
	mov	r7, #78
	mov	r3, #0
	mov	r12, #0
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	ldr	r1, .LCPI1_0
	b	.LBB1_6
.LCPI1_0:
	.long	errors
.LBB1_6:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1, r12, lsl #2]
	cmp	r0, r2
	beq	.LBB1_8
	b	.LBB1_7
.LBB1_7:                                @ %for.inc
                                        @   in Loop: Header=BB1_6 Depth=1
	add	r12, r12, #1
	cmp	r12, #13
	blo	.LBB1_6
	b	.LBB1_8
.LBB1_8:                                @ %for.end
	mov	r0, r12
	pop	{r7, lr}
	mov	pc, lr
.Ltmp1:
	.size	checker, .Ltmp1-checker
	.cantunwind
	.fnend

	.type	errors,%object          @ @errors
	.section	.rodata,"a",%progbits
	.align	2
errors:
	.long	0                       @ 0x0
	.long	4294967283              @ 0xfffffff3
	.long	4294967256              @ 0xffffffd8
	.long	4294967260              @ 0xffffffdc
	.long	4294967294              @ 0xfffffffe
	.long	4294967276              @ 0xffffffec
	.long	4294967266              @ 0xffffffe2
	.long	4294967287              @ 0xfffffff7
	.long	4294967274              @ 0xffffffea
	.long	4294967270              @ 0xffffffe6
	.long	4294967282              @ 0xfffffff2
	.long	4294967291              @ 0xfffffffb
	.long	4294967284              @ 0xfffffff4
	.long	4294967280              @ 0xfffffff0
	.size	errors, 56

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
