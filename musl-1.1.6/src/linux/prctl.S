.section prctl_text
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
	.file	"src/linux/prctl.bc"
	.globl	prctl
	.align	2
	.type	prctl,%function
.section bb0_0
prctl:                                  @ @prctl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	add	r4, sp, #44
	stm	r4, {r1, r2, r3}
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	add	r1, sp, #44
	mov	r2, #0
	add	r3, sp, #8
	str	r1, [sp, #4]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r4, r1, r2
	add	r4, r4, #4
	str	r4, [sp, #4]
	ldr	r4, [r1, r2]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.body
                                        @   in Loop: Header=BB0_4 Depth=1
	str	r4, [r3, r2]
	add	r2, r2, #4
	cmp	r2, #16
	bne	.LBB0_4
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.end
	add	r4, sp, #8
	mov	r7, #172
	ldm	r4, {r1, r2, r3, r4}
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.end
	bl	__syscall_ret
	add	sp, sp, #24
	pop	{r4, r7, r11, lr}
	add	sp, sp, #16
	mov	pc, lr
.Ltmp0:
	.size	prctl, .Ltmp0-prctl
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
