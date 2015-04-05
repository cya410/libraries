.section utimensat_text
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
	.file	"src/stat/utimensat.bc"
	.globl	utimensat
	.align	2
	.type	utimensat,%function
.section bb0_0
utimensat:                              @ @utimensat
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r12, r0
	mov	r7, #348
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	cmp	r3, #0
                                        @ kill: R0<def> R12<kill>
	@APP
	svc	#0
	@NO_APP
	cmneq	r0, #38
	bne	.LBB0_19
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	mov	r8, #0
	cmp	r2, #0
	beq	.LBB0_14
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.body.preheader
	add	lr, r2, #12
	mov	r0, #0
	mov	r7, #4
	mov	r8, sp
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r5, lr, r7
	ldr	r4, [r5, #-12]
	ldr	r6, .LCPI0_2
	cmp	r4, r6
	bhs	.LBB0_10
	b	.LBB0_7
.LCPI0_2:
	.long	1000000000              @ 0x3b9aca00
.section bb0_7
.LBB0_7:                                @ %if.end27
                                        @   in Loop: Header=BB0_6 Depth=1
	ldr	r5, [r5, #-16]
	add	r6, r8, r7
	add	r0, r0, #1
	cmp	r0, #2
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end27
                                        @   in Loop: Header=BB0_6 Depth=1
	str	r5, [r6, #-4]
	ldr	r5, .LCPI0_3
	smull	r6, r3, r4, r5
	asr	r4, r3, #6
	b	.LBB0_9
.LCPI0_3:
	.long	274877907               @ 0x10624dd3
.section bb0_9
.LBB0_9:                                @ %if.end27
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r3, r4, r3, lsr #31
	str	r3, [r8, r7]
	add	r7, r7, #8
	blt	.LBB0_6
	b	.LBB0_14
.section bb0_10
.LBB0_10:                               @ %if.then8
	cmn	r4, #-1073741822
	bne	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then23
	mvn	r0, #37
	b	.LBB0_19
.section bb0_12
.LBB0_12:                               @ %if.then8
	cmn	r4, #-1073741823
	bne	.LBB0_18
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %land.lhs.true
	sub	r0, r2, r0, lsl #3
	mov	r8, #0
	ldr	r0, [r0, #12]
	cmn	r0, #-1073741823
	bne	.LBB0_18
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end34
	mov	r7, #70
	mov	r0, r12
	mov	r2, r8
	cmn	r12, #100
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end34
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	cmneq	r0, #38
	bne	.LBB0_17
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end43
	mov	r7, #13
	mov	r0, r1
	mov	r1, r8
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	bl	__syscall_ret
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb0_18
.LBB0_18:                               @ %if.end25
	mvn	r0, #21
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	b	__syscall_ret
.Ltmp0:
	.size	utimensat, .Ltmp0-utimensat
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
