.section __lctrans_text
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
	.file	"src/locale/__lctrans.bc"
	.align	2
	.type	dummy,%function
.section bb0_0
dummy:                                  @ @dummy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy, .Ltmp0-dummy
	.cantunwind
	.fnend

	.globl	__lctrans
	.align	2
	.type	__lctrans,%function
.section bb1_0
__lctrans:                              @ @__lctrans
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	b	__lctrans_impl
.Ltmp1:
	.size	__lctrans, .Ltmp1-__lctrans
	.cantunwind
	.fnend

	.globl	__lctrans_cur
	.align	2
	.type	__lctrans_cur,%function
.section bb2_0
__lctrans_cur:                          @ @__lctrans_cur
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	mov	r2, r0
	ldr	r0, .LCPI2_0
	ldr	r1, [r0, #44]
	cmp	r1, #0
	beq	.LBB2_3
	b	.LBB2_2
.LCPI2_0:
	.long	__libc
.section bb2_2
.LBB2_2:                                @ %cond.true
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	ldr	r0, [r1, #-32]
	b	.LBB2_4
.section bb2_3
.LBB2_3:
	add	r0, r0, #52
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %cond.end
	ldr	r1, [r0, #20]
	mov	r0, r2
	pop	{r11, lr}
	b	__lctrans_impl
.Ltmp2:
	.size	__lctrans_cur, .Ltmp2-__lctrans_cur
	.cantunwind
	.fnend

	.hidden	__libc

	.weak	__lctrans_impl
__lctrans_impl = dummy
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
