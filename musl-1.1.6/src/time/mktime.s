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
	.file	"src/time/mktime.bc"
	.globl	mktime
	.align	2
	.type	mktime,%function
mktime:                                 @ @mktime
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#64
	sub	sp, sp, #64
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	__tm_to_secs
	mov	r5, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	add	r0, sp, #20
	mov	r7, r1
	add	r9, sp, #16
	mov	r2, #1
	b	.LBB0_5
.LBB0_5:                                @ %entry
	add	r10, r0, #32
	add	r6, r0, #36
	add	r8, r0, #40
	mov	r0, r5
	b	.LBB0_6
.LBB0_6:                                @ %entry
                                        @ kill: R1<def> R7<kill>
	mov	r3, r10
	stm	sp, {r6, r9}
	str	r8, [sp, #8]
	b	.LBB0_7
.LBB0_7:                                @ %entry
	bl	__secs_to_zone
	ldr	r0, [r4, #32]
	cmp	r0, #0
	blt	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                @ %entry
	ldr	r1, [sp, #52]
	cmp	r1, r0
	beq	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                @ %if.then
	ldr	r0, [sp, #56]
	ldr	r1, [sp, #16]
	sub	r1, r1, r0
	asr	r2, r1, #31
	adds	r5, r1, r5
	adc	r7, r2, r7
	b	.LBB0_11
.LBB0_10:                               @ %entry.if.end_crit_edge
	ldr	r0, [sp, #56]
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	asr	r1, r0, #31
	adds	r5, r0, r5
	adc	r7, r1, r7
	teq	r7, r5, asr #31
	bne	.LBB0_17
	b	.LBB0_12
.LBB0_12:                               @ %if.end14
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	mov	r3, r10
	b	.LBB0_13
.LBB0_13:                               @ %if.end14
	stm	sp, {r6, r9}
	str	r8, [sp, #8]
	bl	__secs_to_zone
	ldr	r1, [sp, #56]
	b	.LBB0_14
.LBB0_14:                               @ %if.end14
	add	r2, sp, #20
	subs	r0, r5, r1
	sbc	r1, r7, r1, asr #31
	bl	__secs_to_tm
	cmp	r0, #0
	blt	.LBB0_17
	b	.LBB0_15
.LBB0_15:                               @ %if.end25
	add	r7, sp, #20
	ldm	r7, {r0, r1, r2, r3, r7}
	ldr	r6, [sp, #40]
	str	r6, [r4, #20]
	b	.LBB0_16
.LBB0_16:                               @ %if.end25
	stm	r4, {r0, r1, r2, r3, r7}
	add	r7, sp, #44
	add	r6, r4, #24
	ldm	r7, {r0, r1, r2, r3, r7}
	stm	r6, {r0, r1, r2, r3, r7}
	b	.LBB0_18
.LBB0_17:                               @ %error
	bl	__errno_location
	mov	r1, #75
	mvn	r5, #0
	str	r1, [r0]
	b	.LBB0_18
.LBB0_18:                               @ %cleanup
	mov	r0, r5
	add	sp, sp, #64
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	mktime, .Ltmp0-mktime
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
