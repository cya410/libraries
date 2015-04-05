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
	.file	"src/env/__stack_chk_fail.bc"
	.globl	__init_ssp
	.align	2
	.type	__init_ssp,%function
__init_ssp:                             @ @__init_ssp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	mov	r1, r0
	cmp	r1, #0
	beq	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	ldr	r0, .LCPI0_3
	mov	r2, #4
	bl	memcpy
	b	.LBB0_3
.LCPI0_3:
	.long	__stack_chk_guard
.LBB0_2:                                @ %if.else
	ldr	r0, .LCPI0_6
	ldr	r1, .LCPI0_4
	mul	r2, r1, r0
	str	r2, [r1]
	b	.LBB0_3
.LCPI0_4:
	.long	__stack_chk_guard
.LCPI0_6:
	.long	1103515245              @ 0x41c64e6d
.LBB0_3:                                @ %if.end
	ldr	r0, .LCPI0_7
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_4
.LCPI0_7:
	.long	__libc
.LBB0_4:                                @ %if.then2
	ldr	r0, .LCPI0_5
	ldr	r1, [r0]
	@APP
	bl	__a_gettp
	mov	r2, r0
	@NO_APP
	str	r1, [r2, #-164]
	b	.LBB0_5
.LCPI0_5:
	.long	__stack_chk_guard
.LBB0_5:                                @ %if.end4
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__init_ssp, .Ltmp0-__init_ssp
	.cantunwind
	.fnend

	.globl	__stack_chk_fail
	.align	2
	.type	__stack_chk_fail,%function
__stack_chk_fail:                       @ @__stack_chk_fail
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r0, #0
	strb	r0, [r0]
	mov	pc, lr
.Ltmp1:
	.size	__stack_chk_fail, .Ltmp1-__stack_chk_fail
	.cantunwind
	.fnend

	.type	__stack_chk_guard,%object @ @__stack_chk_guard
	.comm	__stack_chk_guard,4,4
	.hidden	__libc

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
