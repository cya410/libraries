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
	.file	"src/thread/__lock.bc"
	.hidden	__lock
	.globl	__lock
	.align	2
	.type	__lock,%function
__lock:                                 @ @__lock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldr	r0, .LCPI0_0
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_2
.LCPI0_0:
	.long	__libc
.LBB0_2:                                @ %do.body.i.preheader
	add	r5, r4, #4
	b	.LBB0_4
.LBB0_3:                                @ %while.body
                                        @   in Loop: Header=BB0_4 Depth=1
	mov	r0, r4
	mov	r1, r5
	mov	r2, #1
	mov	r3, #1
	bl	__wait
	b	.LBB0_4
.LBB0_4:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r4]
	mov	r1, #1
	mov	r2, r4
	mov	r0, r6
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_4
	b	.LBB0_5
.LBB0_5:                                @ %a_swap.exit
                                        @   in Loop: Header=BB0_4 Depth=1
	cmp	r6, #0
	bne	.LBB0_3
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	__lock, .Ltmp0-__lock
	.cantunwind
	.fnend

	.hidden	__unlock
	.globl	__unlock
	.align	2
	.type	__unlock,%function
__unlock:                               @ @__unlock
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r3, r0
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.LBB1_5
	b	.LBB1_2
.LBB1_2:                                @ %if.then
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r3]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.LBB1_5
	b	.LBB1_3
.LBB1_3:                                @ %if.then3
	mov	r7, #240
	mov	r0, r3
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_5
	b	.LBB1_4
.LBB1_4:                                @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_5
.LBB1_5:                                @ %if.end4
	pop	{r7, lr}
	mov	pc, lr
.Ltmp1:
	.size	__unlock, .Ltmp1-__unlock
	.cantunwind
	.fnend

	.hidden	__libc
	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
