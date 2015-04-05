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
	.file	"src/time/__secs_to_tm.bc"
	.globl	__secs_to_tm
	.align	2
	.type	__secs_to_tm,%function
__secs_to_tm:                           @ @__secs_to_tm
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r3, .LCPI0_16
	mov	r6, #0
	cmp	r0, r3
	b	.LBB0_4
.LCPI0_16:
	.long	4263344896              @ 0xfe1d7b00
.LBB0_4:                                @ %entry
	ldr	r3, .LCPI0_17
	ldr	r7, .LCPI0_18
	movhi	r6, #1
	add	r3, r1, r3
	b	.LBB0_5
.LCPI0_17:
	.long	15811200                @ 0xf14280
.LCPI0_18:
	.long	31622399                @ 0x1e284ff
.LBB0_5:                                @ %entry
	cmp	r3, r7
	mov	r3, #0
	mvn	r7, #0
	movhi	r3, #1
	moveq	r3, r6
	cmp	r3, #0
	bne	.LBB0_45
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	str	r2, [sp]                @ 4-byte Spill
	ldr	r2, .LCPI0_19
	mov	r8, #4480
	mov	r3, #0
	b	.LBB0_7
.LCPI0_19:
	.long	3343098496              @ 0xc743a280
.LBB0_7:                                @ %if.end
	orr	r8, r8, #81920
	adds	r4, r0, r2
	mov	r2, r8
	sbc	r5, r1, #0
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ldivmod
	mov	r6, r0
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	mov	r2, r8
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	mov	r3, #0
	bl	__moddi3
	asr	r1, r0, #31
	adds	r5, r6, r0, asr #31
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r3, #0
	adc	r1, r1, r7
	mov	r0, r5
	b	.LBB0_12
.LBB0_12:                               @ %if.end
	str	r1, [sp, #4]            @ 4-byte Spill
	ldr	r4, .LCPI0_20
	mov	r2, r4
	bl	__moddi3
	b	.LBB0_13
.LCPI0_20:
	.long	146097                  @ 0x23ab1
.LBB0_13:                               @ %if.end
	ldr	r1, .LCPI0_21
	mov	r10, r0
	cmp	r10, #0
                                        @ kill: R0<def> R10<kill>
	b	.LBB0_14
.LCPI0_21:
	.long	3853287931              @ 0xe5ac81fb
.LBB0_14:                               @ %if.end
	addlt	r0, r0, r4
	smull	r2, r3, r0, r1
	add	r1, r3, r0
	asr	r2, r1, #15
	b	.LBB0_15
.LBB0_15:                               @ %if.end
	add	r6, r2, r1, lsr #31
	ldr	r1, .LCPI0_22
	mov	r2, #684
	orr	r2, r2, #35840
	b	.LBB0_16
.LCPI0_22:
	.long	4294821200              @ 0xfffdc550
.LBB0_16:                               @ %if.end
	add	r1, r0, r1
	cmp	r1, r2
	ldr	r1, .LCPI0_23
	sublo	r6, r6, #1
	b	.LBB0_17
.LCPI0_23:
	.long	4294930772              @ 0xffff7154
.LBB0_17:                               @ %if.end
	mla	r2, r6, r1, r0
	ldr	r0, .LCPI0_24
	smull	r1, r3, r2, r0
	asr	r0, r3, #7
	b	.LBB0_18
.LCPI0_24:
	.long	376287347               @ 0x166db073
.LBB0_18:                               @ %if.end
	mov	r1, #181
	add	r9, r0, r3, lsr #31
	ldr	r0, .LCPI0_25
	orr	r1, r1, #1280
	b	.LBB0_19
.LCPI0_25:
	.long	4294930771              @ 0xffff7153
.LBB0_19:                               @ %if.end
	add	r0, r2, r0
	cmp	r0, r1
	ldr	r0, .LCPI0_26
	sublo	r9, r9, #1
	b	.LBB0_20
.LCPI0_26:
	.long	4294965835              @ 0xfffffa4b
.LBB0_20:                               @ %if.end
	mla	r1, r9, r0, r2
	ldr	r0, .LCPI0_27
	smull	r2, r3, r1, r0
	add	r0, r3, r1
	b	.LBB0_21
.LCPI0_27:
	.long	3012360625              @ 0xb38cf9b1
.LBB0_21:                               @ %if.end
	mov	r3, #0
	asr	r2, r0, #8
	add	r8, r2, r0, lsr #31
	ldr	r0, .LCPI0_28
	b	.LBB0_22
.LCPI0_28:
	.long	4294965836              @ 0xfffffa4c
.LBB0_22:                               @ %if.end
	ldr	r11, [sp, #4]           @ 4-byte Reload
	mov	r2, r4
	add	r0, r1, r0
	cmp	r0, #364
	b	.LBB0_23
.LBB0_23:                               @ %if.end
	mvn	r0, #364
	subls	r8, r8, #1
	mla	r7, r8, r0, r1
	mov	r0, r5
	b	.LBB0_24
.LBB0_24:                               @ %if.end
	mov	r1, r11
	bl	__aeabi_ldivmod
	add	r4, r0, r10, asr #31
	adds	r0, r5, #3
	b	.LBB0_25
.LBB0_25:                               @ %if.end
	ldr	r5, [sp, #8]            @ 4-byte Reload
	mov	r2, #7
	mov	r3, #0
	adc	r1, r11, #0
	b	.LBB0_26
.LBB0_26:                               @ %if.end
	bl	__moddi3
	cmp	r0, #0
	mov	r1, #4480
	mov	r3, #0
	b	.LBB0_27
.LBB0_27:                               @ %if.end
	addlt	r0, r0, #7
	cmp	r5, #0
	orr	r1, r1, #81920
	addlt	r5, r5, r1
	cmp	r8, #0
	bne	.LBB0_29
	b	.LBB0_28
.LBB0_28:                               @ %land.rhs
	mov	r1, #0
	cmp	r6, #0
	mov	r2, r9
	moveq	r1, #1
	cmp	r9, #0
	movne	r2, #1
	orr	r3, r1, r2
	b	.LBB0_29
.LBB0_29:                               @ %land.end
	mov	r1, #110
	mov	r2, #109
	cmp	r3, #0
	lsl	r9, r9, #2
	b	.LBB0_30
.LBB0_30:                               @ %land.end
	orr	r1, r1, #256
	orr	r2, r2, #256
	movne	r2, r1
	mov	r1, r7
	b	.LBB0_31
.LBB0_31:                               @ %land.end
	addne	r1, r1, #1
	add	r3, r1, #59
	subs	r1, r3, r2
	mov	r2, #400
	b	.LBB0_32
.LBB0_32:                               @ %land.end
	mul	r12, r4, r2
	mov	r2, #100
	movlt	r1, r3
	cmp	r7, #31
	mul	lr, r6, r2
	mov	r2, #0
	bge	.LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldr	r4, [sp]                @ 4-byte Reload
	b	.LBB0_36
.LBB0_34:
	ldr	r3, .LCPI0_29
	ldr	r4, [sp]                @ 4-byte Reload
	mov	r6, #31
	b	.LBB0_35
.LCPI0_29:
	.long	__secs_to_tm.days_in_month
.LBB0_35:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	sub	r7, r7, r6
	add	r6, r3, r2
	add	r2, r2, #1
	ldrb	r6, [r6, #1]
	cmp	r7, r6
	bge	.LBB0_35
	b	.LBB0_36
.LBB0_36:                               @ %for.end
	add	r3, r12, lr
	add	r6, r2, #2
	add	r3, r3, r9
	cmp	r6, #12
	b	.LBB0_37
.LBB0_37:                               @ %for.end
	str	r6, [r4, #16]
	add	r3, r3, r8
	subge	r2, r2, #10
	add	r3, r3, #100
	b	.LBB0_38
.LBB0_38:                               @ %for.end
	str	r3, [r4, #20]
	strge	r2, [r4, #16]
	addge	r3, r3, #1
	add	r2, r7, #1
	b	.LBB0_39
.LBB0_39:                               @ %for.end
	mov	r7, #0
	strge	r3, [r4, #20]
	str	r2, [r4, #12]
	str	r0, [r4, #24]
	b	.LBB0_40
.LBB0_40:                               @ %for.end
	str	r1, [r4, #28]
	ldr	r0, .LCPI0_30
	smull	r1, r2, r5, r0
	add	r0, r2, r5
	b	.LBB0_41
.LCPI0_30:
	.long	2443359173              @ 0x91a2b3c5
.LBB0_41:                               @ %for.end
	asr	r1, r0, #11
	add	r0, r1, r0, lsr #31
	str	r0, [r4, #8]
	ldr	r0, .LCPI0_31
	b	.LBB0_42
.LCPI0_31:
	.long	2290649225              @ 0x88888889
.LBB0_42:                               @ %for.end
	smull	r1, r2, r5, r0
	add	r1, r2, r5
	asr	r2, r1, #5
	add	r1, r2, r1, lsr #31
	b	.LBB0_43
.LBB0_43:                               @ %for.end
	smull	r2, r3, r1, r0
	add	r0, r3, r1
	asr	r2, r0, #5
	add	r0, r2, r0, lsr #31
	b	.LBB0_44
.LBB0_44:                               @ %for.end
	rsb	r0, r0, r0, lsl #4
	sub	r0, r1, r0, lsl #2
	str	r0, [r4, #4]
	rsb	r0, r1, r1, lsl #4
	sub	r0, r5, r0, lsl #2
	str	r0, [r4]
	b	.LBB0_45
.LBB0_45:                               @ %return
	mov	r0, r7
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__secs_to_tm, .Ltmp0-__secs_to_tm
	.cantunwind
	.fnend

	.type	__secs_to_tm.days_in_month,%object @ @__secs_to_tm.days_in_month
	.section	.rodata,"a",%progbits
__secs_to_tm.days_in_month:
	.ascii	"\037\036\037\036\037\037\036\037\036\037\037\035"
	.size	__secs_to_tm.days_in_month, 12


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
