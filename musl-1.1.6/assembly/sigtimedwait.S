.section sigtimedwait_text
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
	.file	"src/signal/sigtimedwait.bc"
	.globl	sigtimedwait
	.align	2
	.type	sigtimedwait,%function
.section bb0_0
sigtimedwait:                           @ @sigtimedwait
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r8, r2
	mov	r5, r1
	mov	r6, r0
	mov	r4, #0
	mov	r9, #8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #177
	mov	r1, r6
	mov	r2, r5
	mov	r3, r8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %do.body
                                        @   in Loop: Header=BB0_4 Depth=1
	str	r9, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	__syscall_cp
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %do.body
                                        @   in Loop: Header=BB0_4 Depth=1
	bl	__syscall_ret
	mov	r7, r0
	cmp	r7, #0
	bge	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.rhs
                                        @   in Loop: Header=BB0_4 Depth=1
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #4
	beq	.LBB0_4
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %do.end
	mov	r0, r7
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	sigtimedwait, .Ltmp0-sigtimedwait
	.cantunwind
	.fnend

	.hidden	__syscall_ret
	.hidden	__syscall_cp

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
