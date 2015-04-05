.section putc_unlocked_text
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
	.file	"src/stdio/putc_unlocked.bc"
	.globl	putc_unlocked
	.align	2
	.type	putc_unlocked,%function
.section bb0_0
putc_unlocked:                          @ @putc_unlocked
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r2, r0
	ldrsb	r0, [r1, #75]
	cmp	r0, r2
	beq	.LBB0_3
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %land.lhs.true
	ldr	r0, [r1, #20]
	ldr	r3, [r1, #16]
	cmp	r0, r3
	bhs	.LBB0_3
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %cond.end
	add	r3, r0, #1
	str	r3, [r1, #20]
	strb	r2, [r0]
	and	r0, r2, #255
	mov	pc, lr
.section bb0_3
.LBB0_3:                                @ %cond.false
	mov	r0, r1
	mov	r1, r2
	b	__overflow
.Ltmp0:
	.size	putc_unlocked, .Ltmp0-putc_unlocked
	.cantunwind
	.fnend

	.protected	__overflow

	.weak	fputc_unlocked
fputc_unlocked = putc_unlocked
	.weak	_IO_putc_unlocked
_IO_putc_unlocked = putc_unlocked
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
