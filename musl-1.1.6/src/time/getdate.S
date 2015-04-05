.section getdate_text
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
	.file	"src/time/getdate.bc"
	.globl	getdate
	.align	2
	.type	getdate,%function
.section bb0_0
getdate:                                @ @getdate
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#104
	sub	sp, sp, #104
	mov	r4, r0
	ldr	r0, .LCPI0_4
	b	.LBB0_3
.LCPI0_4:
	.long	.L.str
.section bb0_3
.LBB0_3:                                @ %entry
	bl	getenv
	mov	r6, r0
	mov	r1, sp
	mov	r0, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r5, #0
	bl	pthread_setcancelstate
	cmp	r6, #0
	beq	.LBB0_13
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	ldr	r1, .LCPI0_5
	mov	r0, r6
	bl	fopen
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB0_14
	b	.LBB0_6
.LCPI0_5:
	.long	.L.str1
.section bb0_6
.LBB0_6:                                @ %while.cond.preheader
	add	r0, sp, #4
	mov	r1, #100
	mov	r2, r6
	bl	fgets
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_7
.section bb0_7
.LBB0_7:
	ldr	r5, .LCPI0_6
	add	r7, sp, #4
	b	.LBB0_8
.LCPI0_6:
	.long	getdate.tmbuf
.section bb0_8
.LBB0_8:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r7
	mov	r2, r5
	bl	strptime
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %land.lhs.true
                                        @   in Loop: Header=BB0_8 Depth=1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB0_12
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r0, r7
	mov	r1, #100
	mov	r2, r6
	bl	fgets
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %while.end
	ldr	r0, .LCPI0_7
	mov	r1, #7
	mov	r5, #0
	str	r1, [r0]
	b	.LBB0_12
.LCPI0_7:
	.long	getdate_err
.section bb0_12
.LBB0_12:                               @ %if.then18
	mov	r0, r6
	bl	fclose
	b	.LBB0_16
.section bb0_13
.LBB0_13:                               @ %if.then
	ldr	r0, .LCPI0_8
	mov	r1, #1
	str	r1, [r0]
	b	.LBB0_16
.LCPI0_8:
	.long	getdate_err
.section bb0_14
.LBB0_14:                               @ %if.then4
	bl	__errno_location
	ldr	r0, [r0]
	mov	r5, #0
	cmp	r0, #12
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then4
	ldr	r0, .LCPI0_9
	moveq	r1, #6
	movne	r1, #2
	str	r1, [r0]
	b	.LBB0_16
.LCPI0_9:
	.long	getdate_err
.section bb0_16
.LBB0_16:                               @ %if.end20
	ldr	r0, [sp]
	mov	r1, #0
	bl	pthread_setcancelstate
	mov	r0, r5
	add	sp, sp, #104
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getdate, .Ltmp0-getdate
	.cantunwind
	.fnend

	.type	getdate.tmbuf,%object   @ @getdate.tmbuf
	.local	getdate.tmbuf
	.comm	getdate.tmbuf,44,4
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"DATEMSK"
	.size	.L.str, 8

	.type	getdate_err,%object     @ @getdate_err
	.comm	getdate_err,4,4
	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"rbe"
	.size	.L.str1, 4


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
