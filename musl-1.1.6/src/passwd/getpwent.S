.section getpwent_text
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
	.file	"src/passwd/getpwent.bc"
	.globl	setpwent
	.align	2
	.type	setpwent,%function
.section bb0_0
setpwent:                               @ @setpwent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldr	r4, .LCPI0_0
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_3
	b	.LBB0_2
.LCPI0_0:
	.long	_MergedGlobals
.section bb0_2
.LBB0_2:                                @ %if.then
	bl	fclose
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	mov	r0, #0
	str	r0, [r4]
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	setpwent, .Ltmp0-setpwent
	.cantunwind
	.fnend

	.globl	getpwent
	.align	2
	.type	getpwent,%function
.section bb1_0
getpwent:                               @ @getpwent
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	ldr	r5, .LCPI1_3
	mov	r4, #0
	str	r4, [sp, #4]
	ldr	r0, [r5]
	cmp	r0, #0
	bne	.LBB1_4
	b	.LBB1_3
.LCPI1_3:
	.long	_MergedGlobals
.section bb1_3
.LBB1_3:                                @ %if.end
	ldr	r0, .LCPI1_4
	ldr	r1, .LCPI1_5
	bl	fopen
	str	r0, [r5]
	cmp	r0, #0
	beq	.LBB1_5
	b	.LBB1_4
.LCPI1_4:
	.long	.L.str
.LCPI1_5:
	.long	.L.str1
.section bb1_4
.LBB1_4:                                @ %if.end3
	add	r1, r5, #8
	add	r2, r5, #4
	add	r3, sp, #4
	bl	__getpwent_a
	mov	r4, r0
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %return
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	getpwent, .Ltmp1-getpwent
	.cantunwind
	.fnend

	.globl	getpwuid
	.align	2
	.type	getpwuid,%function
.section bb2_0
getpwuid:                               @ @getpwuid
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	ldr	r5, .LCPI2_0
	mov	r4, r0
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB2_3
	b	.LBB2_2
.LCPI2_0:
	.long	_MergedGlobals
.section bb2_2
.LBB2_2:                                @ %if.then.i
	bl	fclose
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %setpwent.exit
	mov	r0, #0
	str	r0, [r5]
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	bl	getpwent
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB2_6
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %land.rhs
                                        @   in Loop: Header=BB2_4 Depth=1
	ldr	r0, [r5, #8]
	cmp	r0, r4
	bne	.LBB2_4
	b	.LBB2_7
.section bb2_6
.LBB2_6:
	mov	r5, #0
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %while.end
	bl	__errno_location
	mov	r4, r0
	ldr	r6, [r4]
	bl	endpwent
	str	r6, [r4]
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp2:
	.size	getpwuid, .Ltmp2-getpwuid
	.cantunwind
	.fnend

	.globl	getpwnam
	.align	2
	.type	getpwnam,%function
.section bb3_0
getpwnam:                               @ @getpwnam
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	ldr	r5, .LCPI3_0
	mov	r4, r0
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB3_3
	b	.LBB3_2
.LCPI3_0:
	.long	_MergedGlobals
.section bb3_2
.LBB3_2:                                @ %if.then.i
	bl	fclose
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %setpwent.exit
	mov	r0, #0
	str	r0, [r5]
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	bl	getpwent
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB3_6
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %land.rhs
                                        @   in Loop: Header=BB3_4 Depth=1
	ldr	r0, [r5]
	mov	r1, r4
	bl	strcmp
	cmp	r0, #0
	bne	.LBB3_4
	b	.LBB3_7
.section bb3_6
.LBB3_6:
	mov	r5, #0
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %while.end
	bl	__errno_location
	mov	r4, r0
	ldr	r6, [r4]
	bl	endpwent
	str	r6, [r4]
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp3:
	.size	getpwnam, .Ltmp3-getpwnam
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/etc/passwd"
	.size	.L.str, 12

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"rbe"
	.size	.L.str1, 4

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,36,16

	.weak	endpwent
endpwent = setpwent
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
