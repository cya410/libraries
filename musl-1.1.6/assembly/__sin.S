.section __sin_text
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
	.file	"src/math/__sin.bc"
	.globl	__sin
	.align	2
	.type	__sin,%function
.section bb0_0
__sin:                                  @ @__sin
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r8, r1
	mov	r11, r0
	str	r3, [sp, #12]           @ 4-byte Spill
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	str	r2, [sp, #24]           @ 4-byte Spill
	mov	r2, r11
	mov	r3, r8
	str	r8, [sp, #16]           @ 4-byte Spill
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	str	r11, [sp, #20]          @ 4-byte Spill
                                        @ kill: R0<def> R11<kill>
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dmul
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	mov	r7, r0
	mov	r6, r1
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_13
	b	.LBB0_8
.LCPI0_13:
	.long	1471282813              @ 0x57b1fe7d
.section bb0_8
.LBB0_8:                                @ %entry
	ldr	r3, .LCPI0_14
	mov	r4, r0
	mov	r5, r1
	mov	r0, r7
	b	.LBB0_9
.LCPI0_14:
	.long	1053236707              @ 0x3ec71de3
.section bb0_9
.LBB0_9:                                @ %entry
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_15
	ldr	r3, .LCPI0_16
	b	.LBB0_10
.LCPI0_15:
	.long	432103893               @ 0x19c161d5
.LCPI0_16:
	.long	3207201184              @ 0xbf2a01a0
.section bb0_10
.LBB0_10:                               @ %entry
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %entry
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_17
	ldr	r3, .LCPI0_18
	b	.LBB0_12
.LCPI0_17:
	.long	286324902               @ 0x1110f8a6
.LCPI0_18:
	.long	1065423121              @ 0x3f811111
.section bb0_12
.LBB0_12:                               @ %entry
	bl	__aeabi_dadd
	mov	r10, r0
	mov	r9, r1
	mov	r0, r7
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %entry
	mov	r1, r6
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %entry
	ldr	r2, .LCPI0_19
	ldr	r3, .LCPI0_20
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_15
.LCPI0_19:
	.long	1523570044              @ 0x5acfd57c
.LCPI0_20:
	.long	1038473530              @ 0x3de5d93a
.section bb0_15
.LBB0_15:                               @ %entry
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_21
	b	.LBB0_16
.LCPI0_21:
	.long	2318114027              @ 0x8a2b9ceb
.section bb0_16
.LBB0_16:                               @ %entry
	ldr	r3, .LCPI0_22
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_17
.LCPI0_22:
	.long	3193628134              @ 0xbe5ae5e6
.section bb0_17
.LBB0_17:                               @ %entry
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dmul
	mov	r2, r10
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %entry
	mov	r3, r9
	bl	__aeabi_dadd
	mov	r10, r0
	mov	r4, r1
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %entry
	mov	r0, r7
	mov	r1, r6
	mov	r2, r11
	mov	r3, r8
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %entry
	bl	__aeabi_dmul
	mov	r8, r0
	ldr	r0, [sp, #64]
	mov	r11, r1
	cmp	r0, #0
	beq	.LBB0_32
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.else
	mov	r5, r8
	ldr	r8, [sp, #12]           @ 4-byte Reload
	ldr	r0, [sp, #24]           @ 4-byte Reload
	mov	r3, #266338304
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.else
	mov	r2, #0
	orr	r3, r3, #805306368
	str	r5, [sp, #8]            @ 4-byte Spill
	mov	r1, r8
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.else
	bl	__aeabi_dmul
	mov	r2, r11
	mov	r9, r0
	mov	r11, r1
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.else
	mov	r0, r5
	mov	r3, r4
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	r1, r2
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.else
	mov	r2, r10
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.else
	mov	r0, r9
	mov	r1, r11
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.else
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dmul
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.else
	ldr	r2, [sp, #24]           @ 4-byte Reload
	mov	r3, r8
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_23
	b	.LBB0_29
.LCPI0_23:
	.long	1431655753              @ 0x55555549
.section bb0_29
.LBB0_29:                               @ %if.else
	mov	r4, r0
	ldr	r3, .LCPI0_25
	mov	r5, r1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	b	.LBB0_30
.LCPI0_25:
	.long	1069897045              @ 0x3fc55555
.section bb0_30
.LBB0_30:                               @ %if.else
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.else
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__aeabi_dsub
	b	.LBB0_36
.section bb0_32
.LBB0_32:                               @ %if.then
	mov	r0, r7
	mov	r1, r6
	mov	r2, r10
	mov	r3, r4
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.then
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_24
	ldr	r3, .LCPI0_26
	bl	__aeabi_dadd
	b	.LBB0_34
.LCPI0_24:
	.long	1431655753              @ 0x55555549
.LCPI0_26:
	.long	3217380693              @ 0xbfc55555
.section bb0_34
.LBB0_34:                               @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r11
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.then
	bl	__aeabi_dmul
	ldr	r2, [sp, #20]           @ 4-byte Reload
	ldr	r3, [sp, #16]           @ 4-byte Reload
	bl	__aeabi_dadd
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %return
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__sin, .Ltmp0-__sin
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
