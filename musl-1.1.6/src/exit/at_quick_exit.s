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
	.file	"src/exit/at_quick_exit.bc"
	.globl	__funcs_on_quick_exit
	.align	2
	.type	__funcs_on_quick_exit,%function
__funcs_on_quick_exit:                  @ @__funcs_on_quick_exit
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r5, .LCPI0_0
	add	r0, r5, #4
	b	.LBB0_2
.LCPI0_0:
	.long	_MergedGlobals
.LBB0_2:                                @ %entry
	bl	__lock
	ldr	r0, [r5]
	cmp	r0, #1
	blt	.LBB0_6
	b	.LBB0_3
.LBB0_3:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	sub	r0, r0, #1
	mov	r4, r5
	str	r0, [r4], #4
	add	r0, r5, r0, lsl #2
	b	.LBB0_4
.LBB0_4:                                @ %while.body
                                        @   in Loop: Header=BB0_3 Depth=1
	ldr	r6, [r0, #12]
	mov	r0, r4
	bl	__unlock
	mov	lr, pc
	mov	pc, r6
	b	.LBB0_5
.LBB0_5:                                @ %while.body
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r0, r4
	bl	__lock
	ldr	r0, [r5]
	cmp	r0, #0
	bgt	.LBB0_3
	b	.LBB0_6
.LBB0_6:                                @ %while.end
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	__funcs_on_quick_exit, .Ltmp0-__funcs_on_quick_exit
	.cantunwind
	.fnend

	.globl	at_quick_exit
	.align	2
	.type	at_quick_exit,%function
at_quick_exit:                          @ @at_quick_exit
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	ldr	r6, .LCPI1_0
	mov	r4, r0
	b	.LBB1_2
.LCPI1_0:
	.long	_MergedGlobals
.LBB1_2:                                @ %entry
	mvn	r0, #0
	ldr	r1, [r6]
	cmp	r1, #32
	beq	.LBB1_5
	b	.LBB1_3
.LBB1_3:                                @ %if.end
	add	r5, r6, #4
	mov	r0, r5
	bl	__lock
	ldr	r0, [r6]
	b	.LBB1_4
.LBB1_4:                                @ %if.end
	add	r1, r0, #1
	str	r1, [r6], r0, lsl #2
	mov	r0, r5
	str	r4, [r6, #12]
	bl	__unlock
	mov	r0, #0
	b	.LBB1_5
.LBB1_5:                                @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp1:
	.size	at_quick_exit, .Ltmp1-at_quick_exit
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,140,16
	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
