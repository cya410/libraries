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
	.file	"src/math/__rem_pio2f.bc"
	.globl	__rem_pio2f
	.align	2
	.type	__rem_pio2f,%function
__rem_pio2f:                            @ @__rem_pio2f
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	mov	r8, r1
	ldr	r1, .LCPI0_6
	b	.LBB0_3
.LCPI0_6:
	.long	1305022426              @ 0x4dc90fda
.LBB0_3:                                @ %entry
	mov	r5, r0
	bic	r0, r5, #-2147483648
	cmp	r0, r1
	bhi	.LBB0_15
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r0, r5
	bl	__aeabi_f2d
	ldr	r2, .LCPI0_7
	ldr	r3, .LCPI0_8
	b	.LBB0_5
.LCPI0_7:
	.long	1841940611              @ 0x6dc9c883
.LCPI0_8:
	.long	1071931184              @ 0x3fe45f30
.LBB0_5:                                @ %if.then
	mov	r5, r0
	mov	r6, r1
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R6<kill>
	b	.LBB0_6
.LBB0_6:                                @ %if.then
	bl	__aeabi_dmul
	mov	r3, #54001664
	mov	r2, #0
	orr	r3, r3, #1073741824
	b	.LBB0_7
.LBB0_7:                                @ %if.then
	bl	__aeabi_dadd
	mov	r3, #54001664
	mov	r2, #0
	orr	r3, r3, #-1073741824
	b	.LBB0_8
.LBB0_8:                                @ %if.then
	bl	__aeabi_dadd
	ldr	r3, .LCPI0_9
	mov	r7, r0
	mov	r4, r1
	b	.LBB0_9
.LCPI0_9:
	.long	3220775419              @ 0xbff921fb
.LBB0_9:                                @ %if.then
	mov	r2, #1342177280
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	b	.LBB0_10
.LBB0_10:                               @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_11
.LBB0_11:                               @ %if.then
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_10
	ldr	r3, .LCPI0_11
	mov	r5, r0
	b	.LBB0_12
.LCPI0_10:
	.long	1629119075              @ 0x611a6263
.LCPI0_11:
	.long	3192983732              @ 0xbe5110b4
.LBB0_12:                               @ %if.then
	mov	r6, r1
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_13
.LBB0_13:                               @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_14
.LBB0_14:                               @ %if.then
	bl	__aeabi_dadd
	stm	r8, {r0, r1}
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_d2iz
	b	.LBB0_23
.LBB0_15:                               @ %if.end
	lsr	r1, r0, #23
	cmp	r1, #255
	blo	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               @ %if.then9
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fsub
	bl	__aeabi_f2d
	stm	r8, {r0, r1}
	mov	r0, #0
	b	.LBB0_23
.LBB0_17:                               @ %if.end12
	mvn	r1, #149
	add	r4, r1, r0, lsr #23
	sub	r0, r0, r4, lsl #23
	bl	__aeabi_f2d
	b	.LBB0_18
.LBB0_18:                               @ %if.end12
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	mov	r0, #0
	add	r1, sp, #8
	b	.LBB0_19
.LBB0_19:                               @ %if.end12
	mov	r2, r4
	mov	r3, #1
	str	r0, [sp]
	add	r0, sp, #16
	b	.LBB0_20
.LBB0_20:                               @ %if.end12
	bl	__rem_pio2_large
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #12]
	cmp	r5, #0
	blt	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               @ %if.end25
	stm	r8, {r1, r2}
	b	.LBB0_23
.LBB0_22:                               @ %if.then21
	eor	r2, r2, #-2147483648
	rsb	r0, r0, #0
	stm	r8, {r1, r2}
	b	.LBB0_23
.LBB0_23:                               @ %return
	add	sp, sp, #24
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__rem_pio2f, .Ltmp0-__rem_pio2f
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
