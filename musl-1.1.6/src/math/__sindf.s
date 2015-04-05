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
	.file	"src/math/__sindf.bc"
	.globl	__sindf
	.align	2
	.type	__sindf,%function
__sindf:                                @ @__sindf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	mov	r2, r5
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r3, r4
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r6, r0
	mov	r7, r1
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_6
.LBB0_6:                                @ %entry
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_7
.LBB0_7:                                @ %entry
	str	r1, [sp, #4]            @ 4-byte Spill
	ldr	r2, .LCPI0_8
	ldr	r3, .LCPI0_9
	mov	r0, r6
	b	.LBB0_8
.LCPI0_8:
	.long	2352694951              @ 0x8c3b46a7
.LCPI0_9:
	.long	1053216135              @ 0x3ec6cd87
.LBB0_8:                                @ %entry
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_10
	ldr	r3, .LCPI0_11
	b	.LBB0_9
.LCPI0_10:
	.long	3804948340              @ 0xe2cae774
.LCPI0_11:
	.long	3207201017              @ 0xbf2a00f9
.LBB0_9:                                @ %entry
	bl	__aeabi_dadd
	mov	r10, r0
	mov	r11, r1
	mov	r0, r6
	b	.LBB0_10
.LBB0_10:                               @ %entry
	mov	r1, r7
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB0_11
.LBB0_11:                               @ %entry
	ldr	r2, .LCPI0_12
	ldr	r3, .LCPI0_13
	mov	r8, r0
	mov	r9, r1
	b	.LBB0_12
.LCPI0_12:
	.long	2305751986              @ 0x896efbb2
.LCPI0_13:
	.long	1065423120              @ 0x3f811110
.LBB0_12:                               @ %entry
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_14
	b	.LBB0_13
.LCPI0_14:
	.long	1422634103              @ 0x54cbac77
.LBB0_13:                               @ %entry
	ldr	r3, .LCPI0_15
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_14
.LCPI0_15:
	.long	3217380693              @ 0xbfc55555
.LBB0_14:                               @ %entry
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r5
	b	.LBB0_15
.LBB0_15:                               @ %entry
	mov	r3, r4
	bl	__aeabi_dadd
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r3, [sp, #4]            @ 4-byte Reload
	b	.LBB0_16
.LBB0_16:                               @ %entry
	mov	r4, r0
	mov	r5, r1
	mov	r0, r8
	mov	r1, r9
	b	.LBB0_17
.LBB0_17:                               @ %entry
	bl	__aeabi_dmul
	mov	r2, r10
	mov	r3, r11
	bl	__aeabi_dmul
	b	.LBB0_18
.LBB0_18:                               @ %entry
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	bl	__aeabi_d2f
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__sindf, .Ltmp0-__sindf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
