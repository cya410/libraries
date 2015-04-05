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
	.file	"src/conf/confstr.bc"
	.globl	confstr
	.align	2
	.type	confstr,%function
confstr:                                @ @confstr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	cmp	r0, #0
	beq	.LBB0_4
	b	.LBB0_1
.LBB0_1:                                @ %if.else
	ldr	r12, .LCPI0_5
	ldr	r3, .LCPI0_6
	bic	lr, r0, #4
	cmp	lr, #1
	beq	.LBB0_5
	b	.LBB0_2
.LCPI0_5:
	.long	4294966180              @ 0xfffffba4
.LCPI0_6:
	.long	.L.str
.LBB0_2:                                @ %if.else
	add	r0, r0, r12
	cmp	r0, #32
	blo	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @ %if.then2
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mov	r0, #0
	b	.LBB0_6
.LBB0_4:
	ldr	r3, .LCPI0_4
	b	.LBB0_5
.LCPI0_4:
	.long	.L.str1
.LBB0_5:                                @ %if.end3
	ldr	r12, .LCPI0_7
	mov	r0, r1
	mov	r1, r2
	mov	r2, r12
	bl	snprintf
	add	r0, r0, #1
	b	.LBB0_6
.LCPI0_7:
	.long	.L.str2
.LBB0_6:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	confstr, .Ltmp0-confstr
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"/bin:/usr/bin"
	.size	.L.str1, 14

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"%s"
	.size	.L.str2, 3


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
