.section lockf_text
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
	.file	"src/misc/lockf.bc"
	.globl	lockf
	.align	2
	.type	lockf,%function
.section bb0_0
lockf:                                  @ @lockf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, #1
	cmp	r1, #3
	strh	r4, [sp]
	strh	r4, [sp, #2]
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, #0
	str	r4, [sp, #12]
	str	r4, [sp, #8]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	str	r4, [sp, #24]
	bls	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %sw.epilog
	bl	__errno_location
	mov	r1, #22
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %return
	str	r1, [r0]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %return
	mvn	r4, #0
	b	.LBB0_12
.section bb0_7
.LBB0_7:                                @ %entry
	lsl	r1, r1, #2
	adr	r2, .LJTI0_0_0
	ldr	pc, [r1, r2]
.LJTI0_0_0:
	.long	.LBB0_8
	.long	.LBB0_10
	.long	.LBB0_9
	.long	.LBB0_13
.section bb0_8
.LBB0_8:                                @ %sw.bb12
	mov	r1, #2
	strh	r1, [sp]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %sw.bb14
	mov	r2, sp
	mov	r1, #13
	b	.LBB0_11
.section bb0_10
.LBB0_10:                               @ %sw.bb16
	mov	r2, sp
	mov	r1, #14
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	bl	fcntl
	mov	r4, r0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %return
	mov	r0, r4
	add	sp, sp, #32
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.section bb0_13
.LBB0_13:                               @ %sw.bb
	mov	r4, #0
	mov	r2, sp
	mov	r1, #12
	strh	r4, [sp]
	bl	fcntl
	cmp	r0, #0
	blt	.LBB0_6
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end
	ldrh	r0, [sp]
	cmp	r0, #2
	beq	.LBB0_12
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %lor.lhs.false
	ldr	r5, [sp, #24]
	bl	getpid
	cmp	r5, r0
	beq	.LBB0_12
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end10
	bl	__errno_location
	mov	r1, #13
	b	.LBB0_5
.Ltmp0:
	.size	lockf, .Ltmp0-lockf
	.cantunwind
	.fnend


	.weak	lockf64
lockf64 = lockf
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
