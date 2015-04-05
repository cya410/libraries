.section exp10f_text
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
	.file	"src/math/exp10f.bc"
	.globl	exp10f
	.align	2
	.type	exp10f,%function
.section bb0_0
exp10f:                                 @ @exp10f
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r6, r0
	add	r1, sp, #4
                                        @ kill: R0<def> R6<kill>
	bl	modff
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r5, [sp, #4]
	mov	r4, r0
	and	r0, r5, #2130706432
	lsr	r0, r0, #24
	cmp	r0, #64
	bhi	.LBB0_8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r0, r4
	mov	r1, #0
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	ldr	r1, .LCPI0_8
	mov	r0, r4
	bl	__aeabi_fmul
	bl	exp2f
	b	.LBB0_6
.LCPI0_8:
	.long	1079286392              @ 0x40549a78
.section bb0_6
.LBB0_6:                                @ %if.end
	mov	r4, r0
	ldr	r0, [sp, #4]
	bl	__aeabi_f2iz
	ldr	r1, .LCPI0_6
	b	.LBB0_7
.LCPI0_6:
	.long	exp10f.p10
.section bb0_7
.LBB0_7:                                @ %if.end
	add	r0, r1, r0, lsl #2
	ldr	r1, [r0, #28]
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB0_10
.section bb0_8
.LBB0_8:                                @ %if.end7
	mov	r0, r6
	bl	__aeabi_f2d
	ldr	r2, .LCPI0_4
	ldr	r3, .LCPI0_5
	bl	__aeabi_dmul
	bl	exp2
	bl	__aeabi_d2f
	b	.LBB0_10
.LCPI0_4:
	.long	158966641               @ 0x979a371
.LCPI0_5:
	.long	1074434895              @ 0x400a934f
.section bb0_9
.LBB0_9:                                @ %if.then1
	mov	r0, r5
	bl	__aeabi_f2iz
	ldr	r1, .LCPI0_7
	add	r0, r1, r0, lsl #2
	ldr	r0, [r0, #28]
	b	.LBB0_10
.LCPI0_7:
	.long	exp10f.p10
.section bb0_10
.LBB0_10:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	exp10f, .Ltmp0-exp10f
	.cantunwind
	.fnend

	.type	exp10f.p10,%object      @ @exp10f.p10
	.section	.rodata,"a",%progbits
	.align	2
exp10f.p10:
	.long	869711765               @ float 1.000000e-07
	.long	897988541               @ float 1.000000e-06
	.long	925353388               @ float 1.000000e-05
	.long	953267991               @ float 1.000000e-04
	.long	981668463               @ float 1.000000e-03
	.long	1008981770              @ float 1.000000e-02
	.long	1036831949              @ float 1.000000e-01
	.long	1065353216              @ float 1.000000e+00
	.long	1092616192              @ float 1.000000e+01
	.long	1120403456              @ float 1.000000e+02
	.long	1148846080              @ float 1.000000e+03
	.long	1176256512              @ float 1.000000e+04
	.long	1203982336              @ float 1.000000e+05
	.long	1232348160              @ float 1.000000e+06
	.long	1259902592              @ float 1.000000e+07
	.size	exp10f.p10, 60


	.weak	pow10f
pow10f = exp10f
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
