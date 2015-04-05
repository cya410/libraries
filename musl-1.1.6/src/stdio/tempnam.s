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
	.file	"src/stdio/tempnam.bc"
	.globl	tempnam
	.align	2
	.type	tempnam,%function
tempnam:                                @ @tempnam
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#116
	sub	sp, sp, #116
	b	.LBB0_3
.LBB0_3:                                @ %entry
	.pad	#4096
	sub	sp, sp, #4096
	ldr	r5, .LCPI0_2
	cmp	r0, #0
	b	.LBB0_4
.LCPI0_2:
	.long	.L.str
.LBB0_4:                                @ %entry
	mov	r4, r1
	movne	r5, r0
	mov	r0, r5
	bl	strlen
	b	.LBB0_5
.LBB0_5:                                @ %entry
	ldr	r6, .LCPI0_3
	cmp	r4, #0
	mov	r7, r0
	movne	r6, r4
	b	.LBB0_6
.LCPI0_3:
	.long	.L.str1
.LBB0_6:                                @ %entry
	mov	r0, r6
	bl	strlen
	mov	r8, r0
	add	r4, r7, #1
	b	.LBB0_7
.LBB0_7:                                @ %entry
	add	r11, r4, r8
	add	r0, r11, #7
	cmp	r0, #4096
	blo	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %if.then8
	bl	__errno_location
	mov	r1, #36
	str	r1, [r0]
	mov	r0, #0
	b	.LBB0_18
.LBB0_9:                                @ %if.end10
	add	r9, sp, #112
	mov	r1, r5
	mov	r2, r7
	add	r10, sp, #12
	b	.LBB0_10
.LBB0_10:                               @ %if.end10
	mov	r0, r9
	bl	memcpy
	mov	r0, #47
	mov	r1, r6
	b	.LBB0_11
.LBB0_11:                               @ %if.end10
	mov	r2, r8
	strb	r0, [r9, r7]
	add	r0, r9, r4
	bl	memcpy
	b	.LBB0_12
.LBB0_12:                               @ %if.end10
	add	r5, r9, r11
	mov	r0, #95
	mov	r8, #0
	add	r6, sp, #8
	mov	r4, #0
	mov	r7, #196
	strb	r0, [r5], #1
	b	.LBB0_13
.LBB0_13:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	bl	__randname
	mov	r0, r6
	mov	r1, #104
	b	.LBB0_14
.LBB0_14:                               @ %for.body
                                        @   in Loop: Header=BB0_13 Depth=1
	mov	r2, #0
	bl	__aeabi_memset
	mov	r0, r9
	mov	r1, r6
	b	.LBB0_15
.LBB0_15:                               @ %for.body
                                        @   in Loop: Header=BB0_13 Depth=1
	str	r8, [r10, #-4]
	str	r8, [r10]
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #2
	beq	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               @ %for.cond
                                        @   in Loop: Header=BB0_13 Depth=1
	add	r4, r4, #1
	mov	r0, #0
	cmp	r4, #99
	ble	.LBB0_13
	b	.LBB0_18
.LBB0_17:                               @ %if.then26
	add	r0, sp, #112
	bl	strdup
	b	.LBB0_18
.LBB0_18:                               @ %cleanup
	add	sp, sp, #116
	add	sp, sp, #4096
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	tempnam, .Ltmp0-tempnam
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/tmp"
	.size	.L.str, 5

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"temp"
	.size	.L.str1, 5


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
