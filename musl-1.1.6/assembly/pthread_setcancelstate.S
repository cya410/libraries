.section pthread_setcancelstate_text
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
	.file	"src/thread/pthread_setcancelstate.bc"
	.globl	__pthread_setcancelstate
	.align	2
	.type	__pthread_setcancelstate,%function
.section bb0_0
__pthread_setcancelstate:               @ @__pthread_setcancelstate
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r2, r0
	mov	r0, #22
	cmp	r2, #1
	bhi	.LBB0_4
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end
	ldr	r0, .LCPI0_0
	ldr	r3, [r0]
	mov	r0, #38
	cmp	r3, #0
	beq	.LBB0_4
	b	.LBB0_3
.LCPI0_0:
	.long	__libc
.section bb0_3
.LBB0_3:                                @ %if.end2
	@APP
	bl	__a_gettp
	mov	r3, r0
	@NO_APP
	cmp	r1, #0
	ldrne	r0, [r3, #-140]
	strne	r0, [r1]
	mov	r0, #0
	str	r2, [r3, #-140]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_setcancelstate, .Ltmp0-__pthread_setcancelstate
	.cantunwind
	.fnend

	.hidden	__libc

	.weak	pthread_setcancelstate
pthread_setcancelstate = __pthread_setcancelstate
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
