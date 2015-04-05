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
	.file	"src/legacy/getpass.bc"
	.globl	getpass
	.align	2
	.type	getpass,%function
getpass:                                @ @getpass
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#120
	sub	sp, sp, #120
	mov	r5, r0
	ldr	r0, .LCPI0_5
	b	.LBB0_3
.LCPI0_5:
	.long	.L.str
.LBB0_3:                                @ %entry
	ldr	r1, .LCPI0_6
	bl	open
	mov	r4, r0
	mov	r6, #0
	cmp	r4, #0
	blt	.LBB0_19
	b	.LBB0_4
.LCPI0_6:
	.long	524546                  @ 0x80102
.LBB0_4:                                @ %if.end
	mov	r8, sp
	mov	r0, r4
	mov	r1, r8
	bl	tcgetattr
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	ldm	sp, {r0, r1, r2, r3, r6, r7}
	add	r12, sp, #60
	stm	r12, {r0, r1, r2, r3, r6, r7}
	add	r7, sp, #24
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	add	r12, sp, #84
	ldm	r7, {r0, r1, r2, r3, r7}
	ldr	r6, [sp, #44]
	str	r6, [sp, #104]
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	stm	r12, {r0, r1, r2, r3, r7}
	add	r2, sp, #48
	add	r3, sp, #108
	ldm	r2, {r0, r1, r2}
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	stm	r3, {r0, r1, r2}
	mov	r1, #2
	mov	r2, r8
	ldr	r0, [sp, #12]
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	bic	r0, r0, #11
	orr	r0, r0, #2
	str	r0, [sp, #12]
	ldr	r0, [sp]
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	bic	r0, r0, #448
	orr	r0, r0, #256
	str	r0, [sp]
	mov	r0, r4
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	bl	tcsetattr
	mov	r0, r4
	bl	tcdrain
	ldr	r1, .LCPI0_7
	b	.LBB0_12
.LCPI0_7:
	.long	.L.str1
.LBB0_12:                               @ %if.end
	mov	r0, r4
	mov	r2, r5
	bl	dprintf
	ldr	r6, .LCPI0_8
	b	.LBB0_13
.LCPI0_8:
	.long	getpass.password
.LBB0_13:                               @ %if.end
	mov	r0, r4
	mov	r2, #128
	mov	r1, r6
	bl	read
	mov	r5, r0
	cmp	r5, #0
	blt	.LBB0_17
	b	.LBB0_14
.LBB0_14:                               @ %if.then11
	mov	r0, #0
	mov	r1, #0
	cmp	r5, #1
	blt	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %land.lhs.true
	sub	r1, r5, #1
	ldrb	r2, [r6, r1]
	cmp	r2, #10
	moveq	r5, r1
	mov	r1, r5
	b	.LBB0_16
.LBB0_16:                               @ %if.end16
	mov	r5, r1
	strb	r0, [r6, r1]
	b	.LBB0_17
.LBB0_17:                               @ %if.end18
	add	r2, sp, #60
	mov	r0, r4
	mov	r1, #2
	bl	tcsetattr
	b	.LBB0_18
.LBB0_18:                               @ %if.end18
	ldr	r1, .LCPI0_9
	mov	r0, r4
	bl	dprintf
	mov	r0, r4
	bl	close
	cmp	r5, #0
	movlt	r6, #0
	b	.LBB0_19
.LCPI0_9:
	.long	.L.str2
.LBB0_19:                               @ %cleanup
	mov	r0, r6
	add	sp, sp, #120
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	getpass, .Ltmp0-getpass
	.cantunwind
	.fnend

	.type	getpass.password,%object @ @getpass.password
	.local	getpass.password
	.comm	getpass.password,128,1
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/dev/tty"
	.size	.L.str, 9

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"%s"
	.size	.L.str1, 3

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"\n"
	.size	.L.str2, 2


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
