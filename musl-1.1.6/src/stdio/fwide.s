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
	.file	"src/stdio/fwide.bc"
	.globl	fwide
	.align	2
	.type	fwide,%function
fwide:                                  @ @fwide
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r0, #0
	ldr	r1, [r4, #76]
	cmp	r1, #0
	blt	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	b	.LBB0_4
.LBB0_4:                                @ %cond.end
	ldrb	r1, [r4, #74]
	cmp	r1, #0
	bne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	rsb	r1, r5, #0
	asr	r2, r5, #31
	orr	r1, r2, r1, lsr #31
	strb	r1, [r4, #74]
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	lsl	r1, r1, #24
	cmp	r0, #0
	asr	r5, r1, #24
	beq	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then8
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_8
.LBB0_8:                                @ %if.end9
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fwide, .Ltmp0-fwide
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
