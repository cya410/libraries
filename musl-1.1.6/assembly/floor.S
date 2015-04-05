.section floor_text
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
	.file	"src/math/floor.bc"
	.globl	floor
	.align	2
	.type	floor,%function
.section bb0_0
floor:                                  @ @floor
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_22
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r0, #255
	orr	r0, r0, #1792
	and	r10, r0, r4, lsr #20
	mov	r0, #50
	orr	r0, r0, #1024
	cmp	r10, r0
	bhi	.LBB0_22
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	mov	r8, #53477376
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	orr	r8, r8, #-1073741824
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r9, #53477376
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	mov	r2, #0
	orr	r9, r9, #1073741824
	mov	r3, r9
	bl	__aeabi_dadd
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end
	mov	r6, r0
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end
	mov	r2, #0
	mov	r3, r9
	bl	__aeabi_dadd
	mov	r2, #0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end
	mov	r3, r8
	bl	__aeabi_dadd
	cmp	r4, #0
	mov	r2, r5
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end
	mov	r3, r4
	movlt	r0, r6
	movlt	r1, r7
	bl	__aeabi_dsub
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end
	mov	r7, r0
	mov	r0, #254
	mov	r6, r1
	orr	r0, r0, #768
	cmp	r10, r0
	bhi	.LBB0_15
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %do.body
	asr	r0, r4, #31
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__aeabi_i2d
	b	.LBB0_21
.section bb0_15
.LBB0_15:                               @ %if.end19
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end19
	bl	__aeabi_dadd
	mov	r5, r0
	mov	r4, r1
	mov	r0, r7
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end19
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmple
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end19
	mov	r8, r0
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end19
	mov	r3, #0
	bl	__aeabi_dcmpun
	orrs	r0, r0, r8
	bne	.LBB0_22
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then22
	mov	r3, #267386880
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %return
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %return
	mov	r0, r5
	mov	r1, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	floor, .Ltmp0-floor
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
