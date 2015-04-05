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
	.file	"src/sched/sched_cpucount.bc"
	.globl	__sched_cpucount
	.align	2
	.type	__sched_cpucount,%function
__sched_cpucount:                       @ @__sched_cpucount
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r12, #0
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	mov	lr, #1
	mov	r2, #0
	b	.LBB0_2
.LBB0_2:                                @ %for.cond1.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	ldrb	r3, [r1, r12]
	mov	r4, #0
	b	.LBB0_3
.LBB0_3:                                @ %for.body3
                                        @   Parent Loop BB0_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	tst	r3, lr, lsl r4
	add	r4, r4, #1
	addne	r2, r2, #1
	cmp	r4, #8
	bne	.LBB0_3
	b	.LBB0_4
.LBB0_4:                                @ %for.inc5
                                        @   in Loop: Header=BB0_2 Depth=1
	add	r12, r12, #1
	cmp	r12, r0
	bne	.LBB0_2
	b	.LBB0_6
.LBB0_5:
	mov	r2, #0
	b	.LBB0_6
.LBB0_6:                                @ %for.end7
	mov	r0, r2
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__sched_cpucount, .Ltmp0-__sched_cpucount
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
