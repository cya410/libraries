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
	.file	"src/time/timegm.bc"
	.globl	timegm
	.align	2
	.type	timegm,%function
timegm:                                 @ @timegm
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#48
	sub	sp, sp, #48
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	__tm_to_secs
	mov	r4, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	add	r2, sp, #4
                                        @ kill: R0<def> R4<kill>
	bl	__secs_to_tm
	cmp	r0, #0
	blt	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	ldmib	sp, {r12, lr}
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #16]
	ldr	r0, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	ldr	r1, [sp, #24]
	add	r11, r5, #24
	str	r1, [r5, #20]
	str	r0, [r5, #16]
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	str	r3, [r5, #12]
	str	r2, [r5, #8]
	stm	r5, {r12, lr}
	add	r3, sp, #28
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	ldm	r3, {r0, r1, r2, r3}
	stm	r11, {r0, r1, r2, r3}
	mov	r0, #0
	str	r0, [r5, #32]
	str	r0, [r5, #36]
	ldr	r0, .LCPI0_0
	str	r0, [r5, #40]
	b	.LBB0_9
.LCPI0_0:
	.long	__gmt
.LBB0_8:                                @ %if.then
	bl	__errno_location
	mov	r1, #75
	mvn	r4, #0
	str	r1, [r0]
	b	.LBB0_9
.LBB0_9:                                @ %cleanup
	mov	r0, r4
	add	sp, sp, #48
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	timegm, .Ltmp0-timegm
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
