.section uselocale_text
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
	.file	"src/locale/uselocale.bc"
	.globl	__uselocale
	.align	2
	.type	__uselocale,%function
.section bb0_0
__uselocale:                            @ @__uselocale
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r7, .LCPI0_0
	mov	r4, r0
	b	.LBB0_3
.LCPI0_0:
	.long	__libc
.section bb0_3
.LBB0_3:                                @ %entry
	cmn	r4, #1
	add	r9, r7, #52
	moveq	r4, r9
	@APP
	bl	__a_gettp
	mov	r8, r0
	@NO_APP
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r5, [r8, #-32]
	cmp	r4, #0
	cmpne	r4, r5
	beq	.LBB0_14
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then2
	cmp	r4, r9
	beq	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.else
	ldr	r0, [r4]
	mov	r6, #0
	cmp	r0, #0
	moveq	r6, #1
	b	.LBB0_9
.section bb0_7
.LBB0_7:
	mov	r6, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r7
	ldr	r0, [r2, #44]!
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end8
	cmp	r5, r9
	beq	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.else11
	ldr	r0, [r5]
	cmp	r0, #0
	subeq	r6, r6, #1
	b	.LBB0_12
.section bb0_11
.LBB0_11:                               @ %do.body.i.i39
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r7
	ldr	r0, [r2, #44]!
	add	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_11
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r7
	ldr	r0, [r2, #48]!
	add	r1, r0, r6
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_12
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %a_fetch_add.exit
	str	r4, [r8, #-32]
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end19
	cmp	r5, r9
	mvneq	r5, #0
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__uselocale, .Ltmp0-__uselocale
	.cantunwind
	.fnend

	.hidden	__libc
	.hidden	__a_cas

	.weak	uselocale
uselocale = __uselocale
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
