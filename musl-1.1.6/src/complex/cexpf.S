.section cexpf_text
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
	.file	"src/complex/cexpf.bc"
	.globl	cexpf
	.align	2
	.type	cexpf,%function
.section bb0_0
cexpf:                                  @ @cexpf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r5, r2
	mov	r4, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r6, r1
	bic	r0, r5, #-2147483648
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %do.body8
	bic	r1, r6, #-2147483648
	cmp	r1, #0
	beq	.LBB0_10
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end25
	lsr	r0, r0, #23
	cmp	r0, #255
	blo	.LBB0_11
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then27
	mov	r0, #1065353216
	orr	r0, r0, #1073741824
	cmp	r1, r0
	bne	.LBB0_14
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.else
	cmp	r6, #0
	blt	.LBB0_22
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.else48
	mov	r0, r5
	mov	r1, r5
	str	r6, [r4]
	bl	__aeabi_fsub
	b	.LBB0_19
.section bb0_9
.LBB0_9:                                @ %if.then
	mov	r0, r6
	bl	expf
	mov	r6, r0
	b	.LBB0_13
.section bb0_10
.LBB0_10:                               @ %if.then15
	mov	r0, r5
	bl	cosf
	mov	r6, r0
	mov	r0, r5
	bl	sinf
	mov	r5, r0
	b	.LBB0_13
.section bb0_11
.LBB0_11:                               @ %if.end57
	ldr	r0, .LCPI0_2
	ldr	r1, .LCPI0_3
	add	r0, r6, r0
	cmp	r0, r1
	bhi	.LBB0_16
	b	.LBB0_12
.LCPI0_2:
	.long	3176041960              @ 0xbd4e8de8
.LCPI0_3:
	.long	9342556                 @ 0x8e8e5c
.section bb0_12
.LBB0_12:                               @ %if.then60
	mov	r0, sp
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	bl	__ldexp_cexpf
	ldr	r6, [sp]
	ldr	r5, [sp, #4]
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %return
	str	r6, [r4]
	b	.LBB0_20
.section bb0_14
.LBB0_14:                               @ %if.then30
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then30
	mov	r0, r4
	str	r5, [r4]
	str	r5, [r0, #4]!
	mov	r6, r5
	b	.LBB0_21
.section bb0_16
.LBB0_16:                               @ %if.else69
	mov	r0, r6
	bl	expf
	mov	r7, r0
	mov	r0, r5
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.else69
	bl	cosf
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.else69
	mov	r6, r0
	mov	r0, r5
	bl	sinf
	mov	r1, r0
	mov	r0, r7
	str	r6, [r4]
	bl	__aeabi_fmul
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %return
	mov	r5, r0
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %return
	mov	r0, r4
	str	r5, [r0, #4]!
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %return
	str	r6, [r4]
	str	r5, [r0]
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.section bb0_22
.LBB0_22:                               @ %if.then40
	mov	r5, #0
	mov	r0, r4
	mov	r6, #0
	str	r5, [r4]
	str	r5, [r0, #4]!
	b	.LBB0_21
.Ltmp0:
	.size	cexpf, .Ltmp0-cexpf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
