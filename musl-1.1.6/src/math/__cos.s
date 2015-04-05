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
	.file	"src/math/__cos.bc"
	.globl	__cos
	.align	2
	.type	__cos,%function
__cos:                                  @ @__cos
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#20
	sub	sp, sp, #20
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r10, r0
	add	r4, sp, #8
	stm	r4, {r1, r2, r3}
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r2, r10
	mov	r3, r1
                                        @ kill: R0<def> R10<kill>
	bl	__aeabi_dmul
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r4, r0
	mov	r5, r1
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_6
.LBB0_6:                                @ %entry
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_12
	b	.LBB0_7
.LCPI0_12:
	.long	432739728               @ 0x19cb1590
.LBB0_7:                                @ %entry
	ldr	r3, .LCPI0_13
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	b	.LBB0_8
.LCPI0_13:
	.long	1056571808              @ 0x3efa01a0
.LBB0_8:                                @ %entry
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_14
	ldr	r3, .LCPI0_15
	b	.LBB0_9
.LCPI0_14:
	.long	381768055               @ 0x16c15177
.LCPI0_15:
	.long	3210133868              @ 0xbf56c16c
.LBB0_9:                                @ %entry
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_10
.LBB0_10:                               @ %entry
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_16
	ldr	r3, .LCPI0_17
	b	.LBB0_11
.LCPI0_16:
	.long	1431655756              @ 0x5555554c
.LCPI0_17:
	.long	1067799893              @ 0x3fa55555
.LBB0_11:                               @ %entry
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_12
.LBB0_12:                               @ %entry
	mov	r1, r5
	bl	__aeabi_dmul
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r11, r1
	b	.LBB0_13
.LBB0_13:                               @ %entry
	mov	r0, r8
	mov	r1, r9
	mov	r2, r8
	mov	r3, r9
	b	.LBB0_14
.LBB0_14:                               @ %entry
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_18
	ldr	r3, .LCPI0_19
	mov	r6, r0
	b	.LBB0_15
.LCPI0_18:
	.long	3196598484              @ 0xbe8838d4
.LCPI0_19:
	.long	3181968105              @ 0xbda8fae9
.LBB0_15:                               @ %entry
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_16
.LBB0_16:                               @ %entry
	ldr	r2, .LCPI0_20
	ldr	r3, .LCPI0_21
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_17
.LCPI0_20:
	.long	3182735812              @ 0xbdb4b1c4
.LCPI0_21:
	.long	1042411166              @ 0x3e21ee9e
.LBB0_17:                               @ %entry
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_18
.LBB0_18:                               @ %entry
	ldr	r2, .LCPI0_22
	ldr	r3, .LCPI0_23
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_19
.LCPI0_22:
	.long	2157728429              @ 0x809c52ad
.LCPI0_23:
	.long	3197271631              @ 0xbe927e4f
.LBB0_19:                               @ %entry
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_20
.LBB0_20:                               @ %entry
	mov	r2, r0
	ldr	r0, [sp, #4]            @ 4-byte Reload
	mov	r3, r1
	mov	r1, r11
	b	.LBB0_21
.LBB0_21:                               @ %entry
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_22
.LBB0_22:                               @ %entry
	mov	r1, r5
	bl	__aeabi_dmul
	add	r3, sp, #8
	mov	r7, r1
	b	.LBB0_23
.LBB0_23:                               @ %entry
	mov	r6, r0
	mov	r0, r10
	ldm	r3, {r1, r2, r3}
	bl	__aeabi_dmul
	b	.LBB0_24
.LBB0_24:                               @ %entry
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_25
.LBB0_25:                               @ %entry
	bl	__aeabi_dsub
	mov	r3, #266338304
	mov	r8, r0
	mov	r9, r1
	b	.LBB0_26
.LBB0_26:                               @ %entry
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_27
.LBB0_27:                               @ %entry
	bl	__aeabi_dmul
	mov	r10, #267386880
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_28
.LBB0_28:                               @ %entry
	mov	r0, #0
	orr	r10, r10, #805306368
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_29
.LBB0_29:                               @ %entry
	mov	r1, r10
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r6, r1
	b	.LBB0_30
.LBB0_30:                               @ %entry
	mov	r0, #0
	mov	r1, r10
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_31
.LBB0_31:                               @ %entry
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	b	.LBB0_32
.LBB0_32:                               @ %entry
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_33
.LBB0_33:                               @ %entry
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dadd
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__cos, .Ltmp0-__cos
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
