.section setxid_text
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
	.file	"src/unistd/setxid.bc"
	.globl	__setxid
	.align	2
	.type	__setxid,%function
.section bb0_0
__setxid:                               @ @__setxid
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	stmib	sp, {r1, r2, r3}
	str	r0, [sp, #16]
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mvn	r0, #0
	add	r1, sp, #4
	str	r0, [sp, #20]
	ldr	r0, .LCPI0_0
	b	.LBB0_3
.LCPI0_0:
	.long	do_setxid
.section bb0_3
.LBB0_3:                                @ %entry
	bl	__synccall
	ldr	r4, [sp, #20]
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	bl	__errno_location
	str	r4, [r0]
	mvn	r0, #0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %return
	add	sp, sp, #24
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__setxid, .Ltmp0-__setxid
	.cantunwind
	.fnend

	.align	2
	.type	do_setxid,%function
.section bb1_0
do_setxid:                              @ @do_setxid
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #16]
	cmp	r0, #0
	bgt	.LBB1_6
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %if.end
	ldm	r4, {r0, r1, r2, r7}
	@APP
	svc	#0
	@NO_APP
	rsb	r5, r0, #0
	cmp	r0, #0
	beq	.LBB1_5
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %land.lhs.true
	ldr	r0, [r4, #16]
	cmp	r0, #0
	bne	.LBB1_5
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.then3
	mov	r0, #0
	bl	__block_all_sigs
	mov	r7, #20
	mov	r1, #9
	@APP
	svc	#0
	@NO_APP
	mov	r7, #37
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.end6
	str	r5, [r4, #16]
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %return
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.Ltmp1:
	.size	do_setxid, .Ltmp1-do_setxid
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
