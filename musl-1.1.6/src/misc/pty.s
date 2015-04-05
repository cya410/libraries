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
	.file	"src/misc/pty.bc"
	.globl	posix_openpt
	.align	2
	.type	posix_openpt,%function
posix_openpt:                           @ @posix_openpt
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r1, r0
	ldr	r0, .LCPI0_0
	bl	open
	pop	{r11, lr}
	mov	pc, lr
.LCPI0_0:
	.long	.L.str
.Ltmp0:
	.size	posix_openpt, .Ltmp0-posix_openpt
	.cantunwind
	.fnend

	.globl	grantpt
	.align	2
	.type	grantpt,%function
grantpt:                                @ @grantpt
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp1:
	.size	grantpt, .Ltmp1-grantpt
	.cantunwind
	.fnend

	.globl	unlockpt
	.align	2
	.type	unlockpt,%function
unlockpt:                               @ @unlockpt
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r1, #0
	add	r2, sp, #4
	b	.LBB2_2
.LBB2_2:                                @ %entry
	str	r1, [sp, #4]
	ldr	r1, .LCPI2_0
	bl	ioctl
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.LCPI2_0:
	.long	1074025521              @ 0x40045431
.Ltmp2:
	.size	unlockpt, .Ltmp2-unlockpt
	.cantunwind
	.fnend

	.globl	__ptsname_r
	.align	2
	.type	__ptsname_r,%function
__ptsname_r:                            @ @__ptsname_r
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB3_2
.LBB3_2:                                @ %entry
	mov	r4, r1
	ldr	r1, .LCPI3_2
	mov	r5, r2
	add	r2, sp, #4
	b	.LBB3_3
.LCPI3_2:
	.long	2147767344              @ 0x80045430
.LBB3_3:                                @ %entry
	mov	r7, #54
	cmp	r4, #0
	moveq	r5, r4
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	beq	.LBB3_5
	b	.LBB3_4
.LBB3_4:                                @ %if.then2
	rsb	r0, r0, #0
	b	.LBB3_7
.LBB3_5:                                @ %if.end3
	ldr	r3, [sp, #4]
	ldr	r2, .LCPI3_3
	mov	r0, r4
	mov	r1, r5
	b	.LBB3_6
.LCPI3_3:
	.long	.L.str1
.LBB3_6:                                @ %if.end3
	bl	snprintf
	mov	r1, r0
	mov	r0, #34
	cmp	r1, r5
	movlo	r0, #0
	b	.LBB3_7
.LBB3_7:                                @ %return
	add	sp, sp, #8
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.Ltmp3:
	.size	__ptsname_r, .Ltmp3-__ptsname_r
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


	.weak	ptsname_r
ptsname_r = __ptsname_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
