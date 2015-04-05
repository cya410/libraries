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
	.file	"src/time/clock_gettime.bc"
	.globl	__clock_gettime
	.align	2
	.type	__clock_gettime,%function
__clock_gettime:                        @ @__clock_gettime
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r3, r0
	mov	r7, #7
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r12, r1
	mov	r2, #0
	orr	r7, r7, #256
                                        @ kill: R0<def> R3<kill>
	b	.LBB0_3
.LBB0_3:                                @ %entry
                                        @ kill: R1<def> R12<kill>
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                @ %entry
	cmn	r0, #38
	mvneq	r0, #21
	cmpeq	r3, #0
	bne	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %if.then3.i
	mov	r7, #78
	mov	r0, r12
	mov	r1, #0
	mov	r2, #0
	b	.LBB0_6
.LBB0_6:                                @ %if.then3.i
	@APP
	svc	#0
	@NO_APP
	mov	r1, #1000
	ldr	r0, [r12, #4]
	mul	r3, r0, r1
	str	r3, [r12, #4]
	b	.LBB0_7
.LBB0_7:                                @ %sc_clock_gettime.exit
	mov	r0, r2
	pop	{r4, r7, r11, lr}
	mov	pc, lr
.LBB0_8:                                @ %if.end7.i
	rsb	r4, r0, #0
	bl	__errno_location
	mvn	r2, #0
	str	r4, [r0]
	b	.LBB0_7
.Ltmp0:
	.size	__clock_gettime, .Ltmp0-__clock_gettime
	.cantunwind
	.fnend


	.weak	clock_gettime
clock_gettime = __clock_gettime
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
