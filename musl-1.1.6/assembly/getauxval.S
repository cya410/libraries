.section getauxval_text
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
	.file	"src/misc/getauxval.bc"
	.globl	getauxval
	.align	2
	.type	getauxval,%function
.section bb0_0
getauxval:                              @ @getauxval
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	ldr	r1, .LCPI0_0
	cmp	r0, #23
	bne	.LBB0_2
	b	.LBB0_1
.LCPI0_0:
	.long	__libc
.section bb0_1
.LBB0_1:                                @ %if.then
	ldr	r0, [r1, #12]
	b	.LBB0_8
.section bb0_2
.LBB0_2:                                @ %for.cond.preheader
	ldr	r2, [r1, #16]
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.LBB0_6
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.body.preheader
	add	r2, r2, #4
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r1, r0
	beq	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.inc
                                        @   in Loop: Header=BB0_4 Depth=1
	ldr	r1, [r2, #4]
	add	r3, r2, #8
	mov	r2, r3
	cmp	r1, #0
	bne	.LBB0_4
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.end
	bl	__errno_location
	mov	r1, #2
	str	r1, [r0]
	mov	r0, #0
	b	.LBB0_8
.section bb0_7
.LBB0_7:                                @ %if.then2
	ldr	r0, [r2]
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getauxval, .Ltmp0-getauxval
	.cantunwind
	.fnend

	.hidden	__libc

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
