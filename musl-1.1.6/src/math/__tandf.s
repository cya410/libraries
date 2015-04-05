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
	.file	"src/math/__tandf.bc"
	.globl	__tandf
	.align	2
	.type	__tandf,%function
__tandf:                                @ @__tandf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.LBB0_3:                                @ %entry
	add	r3, sp, #16
	mov	r6, r0
	mov	r5, r1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	stm	r3, {r0, r1, r2}
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	b	.LBB0_5
.LBB0_5:                                @ %entry
	ldr	r2, .LCPI0_12
	ldr	r3, .LCPI0_13
	mov	r7, r0
	mov	r4, r1
	b	.LBB0_6
.LCPI0_12:
	.long	3214351309              @ 0xbf971bcd
.LCPI0_13:
	.long	1065575097              @ 0x3f8362b9
.LBB0_6:                                @ %entry
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_14
	b	.LBB0_7
.LCPI0_14:
	.long	4243387470              @ 0xfcecf44e
.LBB0_7:                                @ %entry
	ldr	r3, .LCPI0_15
	bl	__aeabi_dadd
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	b	.LBB0_8
.LCPI0_15:
	.long	1063804333              @ 0x3f685dad
.LBB0_8:                                @ %entry
	ldr	r2, .LCPI0_16
	ldr	r3, .LCPI0_17
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_9
.LCPI0_16:
	.long	2425107406              @ 0x908c33ce
.LCPI0_17:
	.long	1066999283              @ 0x3f991df3
.LBB0_9:                                @ %entry
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_18
	ldr	r3, .LCPI0_19
	bl	__aeabi_dadd
	b	.LBB0_10
.LCPI0_18:
	.long	495344382               @ 0x1d865afe
.LCPI0_19:
	.long	1068192969              @ 0x3fab54c9
.LBB0_10:                               @ %entry
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_11
.LBB0_11:                               @ %entry
	mov	r2, r7
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r9, r0
	b	.LBB0_12
.LBB0_12:                               @ %entry
	mov	r10, r1
	mov	r0, r7
	mov	r1, r4
	mov	r2, r6
	b	.LBB0_13
.LBB0_13:                               @ %entry
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_14
.LBB0_14:                               @ %entry
	mov	r2, r9
	mov	r3, r10
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R6<kill>
	b	.LBB0_15
.LBB0_15:                               @ %entry
	bl	__aeabi_dmul
	ldr	r2, [sp, #12]           @ 4-byte Reload
	ldr	r3, [sp, #8]            @ 4-byte Reload
	mov	r8, r0
	b	.LBB0_16
.LBB0_16:                               @ %entry
	mov	r11, r1
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_dmul
	b	.LBB0_17
.LBB0_17:                               @ %entry
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	b	.LBB0_18
.LBB0_18:                               @ %entry
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_19
.LBB0_19:                               @ %entry
	mov	r1, r11
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_20
	ldr	r3, .LCPI0_21
	b	.LBB0_20
.LCPI0_20:
	.long	949591922               @ 0x38999f72
.LCPI0_21:
	.long	1069617917              @ 0x3fc112fd
.LBB0_20:                               @ %entry
	mov	r8, r0
	mov	r11, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_21
.LBB0_21:                               @ %entry
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_22
	ldr	r3, .LCPI0_23
	bl	__aeabi_dadd
	b	.LBB0_22
.LCPI0_22:
	.long	874039711               @ 0x3418c99f
.LCPI0_23:
	.long	1070945613              @ 0x3fd5554d
.LBB0_22:                               @ %entry
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_23
.LBB0_23:                               @ %entry
	bl	__aeabi_dmul
	ldr	r2, [sp, #16]           @ 4-byte Reload
	ldr	r3, [sp, #20]           @ 4-byte Reload
	bl	__aeabi_dadd
	b	.LBB0_24
.LBB0_24:                               @ %entry
	mov	r2, r8
	mov	r3, r11
	bl	__aeabi_dadd
	mov	r4, r0
	b	.LBB0_25
.LBB0_25:                               @ %entry
	mov	r5, r1
	mov	r1, #267386880
	mov	r0, #0
	orr	r1, r1, #-1342177280
	b	.LBB0_26
.LBB0_26:                               @ %entry
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ddiv
	ldr	r2, [sp, #24]           @ 4-byte Reload
	b	.LBB0_27
.LBB0_27:                               @ %entry
	cmp	r2, #0
	moveq	r0, r4
	moveq	r1, r5
	bl	__aeabi_d2f
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__tandf, .Ltmp0-__tandf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
