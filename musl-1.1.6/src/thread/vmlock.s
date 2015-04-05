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
	.file	"src/thread/vmlock.bc"
	.globl	__vm_lock
	.align	2
	.type	__vm_lock,%function
__vm_lock:                              @ @__vm_lock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r5, .LCPI0_0
	mov	r4, r0
	add	r8, r5, #4
	b	.LBB0_3
.LCPI0_0:
	.long	vmlock
.LBB0_2:                                @ %if.then
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	mov	r3, #1
	bl	__wait
	b	.LBB0_3
.LBB0_3:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_5 Depth 2
	ldr	r7, [r5]
	mul	r0, r7, r4
	cmp	r0, #0
	blt	.LBB0_2
	b	.LBB0_4
.LBB0_4:                                @ %if.else
                                        @   in Loop: Header=BB0_3 Depth=1
	add	r6, r7, r4
	b	.LBB0_5
.LBB0_5:                                @ %for.cond.i
                                        @   Parent Loop BB0_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	__a_cas
	b	.LBB0_6
.LBB0_6:                                @ %for.cond.i
                                        @   in Loop: Header=BB0_5 Depth=2
	cmp	r0, #0
	popeq	{r4, r5, r6, r7, r8, lr}
	moveq	pc, lr
	ldr	r0, [r5]
	cmp	r0, r7
	beq	.LBB0_5
	b	.LBB0_3
.Ltmp0:
	.size	__vm_lock, .Ltmp0-__vm_lock
	.cantunwind
	.fnend

	.globl	__vm_unlock
	.align	2
	.type	__vm_unlock,%function
__vm_unlock:                            @ @__vm_unlock
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	ldr	r4, .LCPI1_0
	mov	r6, #1
	ldr	r0, [r4]
	cmp	r0, #0
	mvngt	r6, #0
	b	.LBB1_3
.LCPI1_0:
	.long	vmlock
.LBB1_3:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4]
	mov	r2, r4
	add	r1, r5, r6
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_3
	b	.LBB1_4
.LBB1_4:                                @ %a_fetch_add.exit
	cmn	r5, r6
	bne	.LBB1_8
	b	.LBB1_5
.LBB1_5:                                @ %a_fetch_add.exit
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.LBB1_8
	b	.LBB1_6
.LBB1_6:                                @ %if.then
	ldr	r0, .LCPI1_1
	mov	r7, #240
	mov	r1, #129
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_8
	b	.LBB1_7
.LCPI1_1:
	.long	vmlock
.LBB1_7:                                @ %lor.rhs.i
	ldr	r0, .LCPI1_2
	mov	r7, #240
	mov	r1, #1
	mvn	r2, #-2147483648
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_8
.LCPI1_2:
	.long	vmlock
.LBB1_8:                                @ %if.end
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__vm_unlock, .Ltmp1-__vm_unlock
	.cantunwind
	.fnend

	.type	vmlock,%object          @ @vmlock
	.local	vmlock
	.comm	vmlock,8,4
	.hidden	__a_cas

	.weak	__vm_lock_impl
__vm_lock_impl = __vm_lock
	.weak	__vm_unlock_impl
__vm_unlock_impl = __vm_unlock
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
