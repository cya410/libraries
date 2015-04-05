.section cosh_text
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
	.file	"src/math/cosh.bc"
	.globl	cosh
	.align	2
	.type	cosh,%function
.section bb0_0
cosh:                                   @ @cosh
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	ldr	r2, .LCPI0_3
	bic	r1, r1, #-2147483648
	cmp	r1, r2
	bhi	.LBB0_6
	b	.LBB0_3
.LCPI0_3:
	.long	1072049729              @ 0x3fe62e41
.section bb0_3
.LBB0_3:                                @ %if.then
	ldr	r2, .LCPI0_5
	cmp	r1, r2
	bhi	.LBB0_11
	b	.LBB0_4
.LCPI0_5:
	.long	1045430271              @ 0x3e4fffff
.section bb0_4
.LBB0_4:                                @ %do.body
	mov	r3, #124780544
	mov	r2, #0
	mov	r4, #0
	orr	r3, r3, #1073741824
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %do.body
	bl	__aeabi_dadd
	str	r1, [sp, #4]
	mov	r1, #267386880
	str	r0, [sp]
	orr	r1, r1, #805306368
	b	.LBB0_19
.section bb0_6
.LBB0_6:                                @ %if.end10
	ldr	r2, .LCPI0_4
	cmp	r1, r2
	bhi	.LBB0_20
	b	.LBB0_7
.LCPI0_4:
	.long	1082535489              @ 0x40862e41
.section bb0_7
.LBB0_7:                                @ %if.then13
	bl	exp
	mov	r4, r0
	mov	r5, r1
	mov	r1, #267386880
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then13
	mov	r0, #0
	orr	r1, r1, #805306368
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then13
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then13
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	b	.LBB0_18
.section bb0_11
.LBB0_11:                               @ %if.end
	bl	expm1
	mov	r4, r0
	mov	r5, r1
	mov	r2, r4
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end
	mov	r3, r5
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dmul
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end
	mov	r8, #267386880
	mov	r6, r0
	mov	r7, r1
	mov	r0, r4
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end
	mov	r1, r5
	mov	r2, #0
	orr	r8, r8, #805306368
	mov	r3, r8
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end
	bl	__aeabi_ddiv
	mov	r2, #0
	mov	r3, r8
	bl	__aeabi_dadd
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %return
	mov	r4, r0
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %return
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb0_20
.LBB0_20:                               @ %if.end18
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	b	__expo2
.Ltmp0:
	.size	cosh, .Ltmp0-cosh
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
