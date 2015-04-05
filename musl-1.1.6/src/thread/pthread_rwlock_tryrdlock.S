.section pthread_rwlock_tryrdlock_text
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
	.file	"src/thread/pthread_rwlock_tryrdlock.bc"
	.globl	pthread_rwlock_tryrdlock
	.align	2
	.type	pthread_rwlock_tryrdlock,%function
.section bb0_0
pthread_rwlock_tryrdlock:               @ @pthread_rwlock_tryrdlock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4]
	b	.LBB0_7
.section bb0_2
.LBB0_2:                                @ %do.body
                                        @   in Loop: Header=BB0_7 Depth=1
	cmn	r1, #-2147483647
	beq	.LBB0_8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %do.cond
                                        @   in Loop: Header=BB0_7 Depth=1
	add	r6, r5, #1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.cond.i
                                        @   Parent Loop BB0_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r5
	mov	r1, r6
	mov	r2, r4
	bl	__a_cas
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.cond.i
                                        @   in Loop: Header=BB0_4 Depth=2
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end.i
                                        @   in Loop: Header=BB0_4 Depth=2
	ldr	r0, [r4]
	cmp	r0, r5
	beq	.LBB0_4
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %do.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_4 Depth 2
	mov	r5, r0
	mov	r0, #11
	bic	r1, r5, #-2147483648
	cmn	r1, #-2147483646
	beq	.LBB0_9
	b	.LBB0_2
.section bb0_8
.LBB0_8:                                @ %return.loopexit1
	mov	r0, #16
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_rwlock_tryrdlock, .Ltmp0-pthread_rwlock_tryrdlock
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
