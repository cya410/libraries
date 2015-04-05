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
	.file	"src/legacy/daemon.bc"
	.globl	daemon
	.align	2
	.type	daemon,%function
daemon:                                 @ @daemon
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r5, r1
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %land.lhs.true
	ldr	r0, .LCPI0_2
	bl	chdir
	mvn	r4, #0
	cmp	r0, #0
	bne	.LBB0_16
	b	.LBB0_3
.LCPI0_2:
	.long	.L.str
.LBB0_3:                                @ %if.end
	cmp	r5, #0
	bne	.LBB0_12
	b	.LBB0_4
.LBB0_4:                                @ %if.then3
	ldr	r0, .LCPI0_3
	mov	r1, #2
	bl	open
	mov	r5, r0
	mvn	r4, #0
	cmp	r5, #0
	blt	.LBB0_16
	b	.LBB0_5
.LCPI0_3:
	.long	.L.str1
.LBB0_5:                                @ %if.end6
	mov	r0, r5
	mov	r1, #0
	bl	dup2
	cmp	r0, #0
	blt	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %lor.lhs.false
	mov	r0, r5
	mov	r1, #1
	bl	dup2
	cmp	r0, #0
	blt	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %lor.lhs.false11
	mov	r0, r5
	mov	r1, #2
	bl	dup2
	mov	r6, #0
	cmp	r0, #0
	movlt	r6, #1
	b	.LBB0_9
.LBB0_8:                                @ %if.then14
	mov	r6, #1
	b	.LBB0_9
.LBB0_9:                                @ %if.end15
	cmp	r5, #3
	blt	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %if.then17
	mov	r0, r5
	bl	close
	b	.LBB0_11
.LBB0_11:                               @ %if.end19
	cmp	r6, #0
	bne	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               @ %if.end23
	mvn	r4, #0
	bl	fork
	cmn	r0, #1
	beq	.LBB0_16
	b	.LBB0_13
.LBB0_13:                               @ %if.end23
	cmp	r0, #0
	bne	.LBB0_17
	b	.LBB0_14
.LBB0_14:                               @ %sw.epilog
	bl	setsid
	cmp	r0, #0
	blt	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %if.end28
	bl	fork
	mov	r4, r0
	add	r0, r4, #1
	cmp	r0, #2
	bhs	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.LBB0_17:                               @ %sw.default
	mov	r0, #0
	bl	_exit
.Ltmp0:
	.size	daemon, .Ltmp0-daemon
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/"
	.size	.L.str, 2

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"/dev/null"
	.size	.L.str1, 10


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
