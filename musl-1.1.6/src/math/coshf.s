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
	.file	"src/math/coshf.bc"
	.globl	coshf
	.align	2
	.type	coshf,%function
coshf:                                  @ @coshf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r1, .LCPI0_2
	bic	r0, r0, #-2147483648
	cmp	r0, r1
	bhi	.LBB0_5
	b	.LBB0_3
.LCPI0_2:
	.long	1060205078              @ 0x3f317216
.LBB0_3:                                @ %if.then
	lsr	r1, r0, #23
	cmp	r1, #114
	bhi	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                @ %do.body
	mov	r1, #998244352
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	str	r0, [sp, #4]
	mov	r0, #1065353216
	b	.LBB0_12
.LBB0_5:                                @ %if.end8
	ldr	r1, .LCPI0_3
	cmp	r0, r1
	bhi	.LBB0_13
	b	.LBB0_6
.LCPI0_3:
	.long	1118925334              @ 0x42b17216
.LBB0_6:                                @ %if.then10
	bl	expf
	mov	r4, r0
	mov	r0, #1065353216
	mov	r1, r4
	b	.LBB0_7
.LBB0_7:                                @ %if.then10
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	mov	r1, #1056964608
	bl	__aeabi_fmul
	b	.LBB0_12
.LBB0_8:                                @ %if.end
	bl	expm1f
	mov	r4, r0
	mov	r1, r4
                                        @ kill: R0<def> R4<kill>
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	bl	__aeabi_fmul
	mov	r5, r0
	mov	r0, r4
	mov	r1, #1065353216
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	bl	__aeabi_fadd
	mov	r1, r0
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	mov	r0, r5
	bl	__aeabi_fdiv
	mov	r1, #1065353216
	bl	__aeabi_fadd
	b	.LBB0_12
.LBB0_12:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.LBB0_13:                               @ %if.end15
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	b	__expo2f
.Ltmp0:
	.size	coshf, .Ltmp0-coshf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
