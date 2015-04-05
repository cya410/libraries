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
	.file	"src/stdio/putchar_unlocked.bc"
	.globl	putchar_unlocked
	.align	2
	.type	putchar_unlocked,%function
putchar_unlocked:                       @ @putchar_unlocked
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, r0
	ldr	r0, .LCPI0_0
	ldr	r0, [r0]
	ldrsb	r2, [r0, #75]
	cmp	r2, r1
	beq	.LBB0_3
	b	.LBB0_1
.LCPI0_0:
	.long	stdout
.LBB0_1:                                @ %land.lhs.true
	ldr	r2, [r0, #20]
	ldr	r3, [r0, #16]
	cmp	r2, r3
	bhs	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %cond.end
	add	r3, r2, #1
	str	r3, [r0, #20]
	and	r0, r1, #255
	strb	r1, [r2]
	mov	pc, lr
.LBB0_3:                                @ %cond.false
	b	__overflow
.Ltmp0:
	.size	putchar_unlocked, .Ltmp0-putchar_unlocked
	.cantunwind
	.fnend

	.protected	__overflow

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
