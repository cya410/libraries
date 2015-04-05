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
	.file	"src/stdio/ext.bc"
	.globl	_flushlbf
	.align	2
	.type	_flushlbf,%function
_flushlbf:                              @ @_flushlbf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r0, #0
	b	fflush
.Ltmp0:
	.size	_flushlbf, .Ltmp0-_flushlbf
	.cantunwind
	.fnend

	.globl	__fsetlocking
	.align	2
	.type	__fsetlocking,%function
__fsetlocking:                          @ @__fsetlocking
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	r0, #0
	mov	pc, lr
.Ltmp1:
	.size	__fsetlocking, .Ltmp1-__fsetlocking
	.cantunwind
	.fnend

	.globl	__fwriting
	.align	2
	.type	__fwriting,%function
__fwriting:                             @ @__fwriting
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r1, r0
	mov	r0, #1
	ldrb	r2, [r1]
	tst	r2, #4
	b	.LBB2_1
.LBB2_1:                                @ %entry
	movne	pc, lr
	ldr	r0, [r1, #16]
	cmp	r0, #0
	movne	r0, #1
	mov	pc, lr
.Ltmp2:
	.size	__fwriting, .Ltmp2-__fwriting
	.cantunwind
	.fnend

	.globl	__freading
	.align	2
	.type	__freading,%function
__freading:                             @ @__freading
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r1, r0
	mov	r0, #1
	ldrb	r2, [r1]
	tst	r2, #8
	b	.LBB3_1
.LBB3_1:                                @ %entry
	movne	pc, lr
	ldr	r0, [r1, #8]
	cmp	r0, #0
	movne	r0, #1
	mov	pc, lr
.Ltmp3:
	.size	__freading, .Ltmp3-__freading
	.cantunwind
	.fnend

	.globl	__freadable
	.align	2
	.type	__freadable,%function
__freadable:                            @ @__freadable
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	ldr	r0, [r0]
	mov	r1, #1
	bic	r0, r1, r0, lsr #2
	mov	pc, lr
.Ltmp4:
	.size	__freadable, .Ltmp4-__freadable
	.cantunwind
	.fnend

	.globl	__fwritable
	.align	2
	.type	__fwritable,%function
__fwritable:                            @ @__fwritable
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	ldr	r0, [r0]
	mov	r1, #1
	bic	r0, r1, r0, lsr #3
	mov	pc, lr
.Ltmp5:
	.size	__fwritable, .Ltmp5-__fwritable
	.cantunwind
	.fnend

	.globl	__flbf
	.align	2
	.type	__flbf,%function
__flbf:                                 @ @__flbf
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	ldrb	r0, [r0, #75]
	mov	r1, #1
	eor	r0, r1, r0, lsr #7
	mov	pc, lr
.Ltmp6:
	.size	__flbf, .Ltmp6-__flbf
	.cantunwind
	.fnend

	.globl	__fbufsize
	.align	2
	.type	__fbufsize,%function
__fbufsize:                             @ @__fbufsize
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	ldr	r0, [r0, #48]
	mov	pc, lr
.Ltmp7:
	.size	__fbufsize, .Ltmp7-__fbufsize
	.cantunwind
	.fnend

	.globl	__fpending
	.align	2
	.type	__fpending,%function
__fpending:                             @ @__fpending
	.fnstart
.Leh_func_begin8:
.LBB8_0:                                @ %entry
	ldr	r2, [r0, #16]
	mov	r1, #0
	cmp	r2, #0
	ldrne	r1, [r0, #20]
	ldrne	r0, [r0, #28]
	subne	r1, r1, r0
	mov	r0, r1
	mov	pc, lr
.Ltmp8:
	.size	__fpending, .Ltmp8-__fpending
	.cantunwind
	.fnend

	.globl	__fpurge
	.align	2
	.type	__fpurge,%function
__fpurge:                               @ @__fpurge
	.fnstart
.Leh_func_begin9:
.LBB9_0:                                @ %entry
	mov	r1, #0
	str	r1, [r0, #28]
	str	r1, [r0, #16]
	str	r1, [r0, #20]
	str	r1, [r0, #8]
	str	r1, [r0, #4]
	mov	r0, #0
	mov	pc, lr
.Ltmp9:
	.size	__fpurge, .Ltmp9-__fpurge
	.cantunwind
	.fnend


	.weak	fpurge
fpurge = __fpurge
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
