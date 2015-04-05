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
	.file	"src/misc/openpty.bc"
	.globl	openpty
	.align	2
	.type	openpty,%function
openpty:                                @ @openpty
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r9, r0
	mov	r0, #0
	mov	r8, r1
	mov	r1, #2
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r10, r3
	mov	r5, r2
	str	r0, [sp, #28]
	ldr	r0, .LCPI0_4
	b	.LBB0_5
.LCPI0_4:
	.long	.L.str
.LBB0_5:                                @ %entry
	orr	r1, r1, #256
	bl	open
	mov	r6, r0
	mvn	r4, #0
	cmp	r6, #0
	blt	.LBB0_19
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	add	r1, sp, #24
	mov	r0, #1
	bl	pthread_setcancelstate
	ldr	r1, .LCPI0_5
	b	.LBB0_7
.LCPI0_5:
	.long	1074025521              @ 0x40045431
.LBB0_7:                                @ %if.end
	add	r2, sp, #28
	mov	r0, r6
	bl	ioctl
	cmp	r0, #0
	bne	.LBB0_17
	b	.LBB0_8
.LBB0_8:                                @ %lor.lhs.false
	ldr	r1, .LCPI0_6
	add	r2, sp, #28
	mov	r0, r6
	bl	ioctl
	cmp	r0, #0
	bne	.LBB0_17
	b	.LBB0_9
.LCPI0_6:
	.long	2147767344              @ 0x80045430
.LBB0_9:                                @ %if.end6
	ldr	r3, [sp, #28]
	ldr	r2, .LCPI0_7
	add	r7, sp, #4
	cmp	r5, #0
	b	.LBB0_10
.LCPI0_7:
	.long	.L.str1
.LBB0_10:                               @ %if.end6
	mov	r1, #20
	movne	r7, r5
	mov	r0, r7
	bl	snprintf
	b	.LBB0_11
.LBB0_11:                               @ %if.end6
	mov	r1, #2
	mov	r0, r7
	orr	r1, r1, #256
	bl	open
	mov	r5, r0
	cmp	r5, #0
	blt	.LBB0_17
	b	.LBB0_12
.LBB0_12:                               @ %if.end14
	ldr	r4, [sp, #64]
	cmp	r10, #0
	beq	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               @ %if.then16
	mov	r0, r5
	mov	r1, #0
	mov	r2, r10
	bl	tcsetattr
	b	.LBB0_14
.LBB0_14:                               @ %if.end18
	cmp	r4, #0
	beq	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %if.then20
	mov	r1, #20
	mov	r0, r5
	mov	r2, r4
	orr	r1, r1, #21504
	bl	ioctl
	b	.LBB0_16
.LBB0_16:                               @ %if.end22
	str	r6, [r9]
	str	r5, [r8]
	mov	r4, #0
	ldr	r0, [sp, #24]
	b	.LBB0_18
.LBB0_17:                               @ %fail
	mov	r0, r6
	bl	close
	ldr	r0, [sp, #24]
	b	.LBB0_18
.LBB0_18:                               @ %return
	mov	r1, #0
	bl	pthread_setcancelstate
	b	.LBB0_19
.LBB0_19:                               @ %return
	mov	r0, r4
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	openpty, .Ltmp0-openpty
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/dev/ptmx"
	.size	.L.str, 10

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"/dev/pts/%d"
	.size	.L.str1, 12


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
