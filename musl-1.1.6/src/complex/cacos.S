.section cacos_text
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
	.file	"src/complex/cacos.bc"
	.globl	cacos
	.align	2
	.type	cacos,%function
.section bb0_0
cacos:                                  @ @cacos
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #44]
	stm	sp, {r0, r1}
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	add	r0, sp, #8
	bl	casin
	add	r6, sp, #8
	ldr	r0, .LCPI0_2
	b	.LBB0_4
.LCPI0_2:
	.long	1413754136              @ 0x54442d18
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r1, .LCPI0_3
	ldm	r6, {r2, r3, r5, r6}
	bl	__aeabi_dsub
	stm	r4, {r0, r1}
	b	.LBB0_5
.LCPI0_3:
	.long	1073291771              @ 0x3ff921fb
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	bl	__aeabi_dsub
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	sp, sp, #24
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	cacos, .Ltmp0-cacos
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
