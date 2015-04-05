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
	.file	"src/legacy/getusershell.bc"
	.globl	endusershell
	.align	2
	.type	endusershell,%function
endusershell:                           @ @endusershell
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	ldr	r4, .LCPI0_0
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_3
	b	.LBB0_2
.LCPI0_0:
	.long	_MergedGlobals
.LBB0_2:                                @ %if.then
	bl	fclose
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	mov	r0, #0
	str	r0, [r4]
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	endusershell, .Ltmp0-endusershell
	.cantunwind
	.fnend

	.globl	setusershell
	.align	2
	.type	setusershell,%function
setusershell:                           @ @setusershell
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	ldr	r4, .LCPI1_5
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.LBB1_4
	b	.LBB1_2
.LCPI1_5:
	.long	_MergedGlobals
.LBB1_2:                                @ %if.end
	ldr	r0, .LCPI1_6
	ldr	r1, .LCPI1_7
	bl	fopen
	str	r0, [r4]
	cmp	r0, #0
	bne	.LBB1_4
	b	.LBB1_3
.LCPI1_6:
	.long	.L.str
.LCPI1_7:
	.long	.L.str1
.LBB1_3:                                @ %if.then2
	ldr	r0, .LCPI1_8
	ldr	r2, .LCPI1_9
	mov	r1, #17
	bl	fmemopen
	str	r0, [r4]
	b	.LBB1_4
.LCPI1_8:
	.long	defshells
.LCPI1_9:
	.long	.L.str2
.LBB1_4:                                @ %if.end4
	pop	{r4, lr}
	mov	pc, lr
.Ltmp1:
	.size	setusershell, .Ltmp1-setusershell
	.cantunwind
	.fnend

	.globl	getusershell
	.align	2
	.type	getusershell,%function
getusershell:                           @ @getusershell
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	ldr	r4, .LCPI2_0
	ldr	r2, [r4]
	cmp	r2, #0
	bne	.LBB2_3
	b	.LBB2_2
.LCPI2_0:
	.long	_MergedGlobals
.LBB2_2:                                @ %if.end
	bl	setusershell
	ldr	r2, [r4]
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB2_5
	b	.LBB2_3
.LBB2_3:                                @ %if.end3
	add	r0, r4, #4
	add	r1, r4, #8
	bl	getline
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #1
	blt	.LBB2_5
	b	.LBB2_4
.LBB2_4:                                @ %if.end5
	ldr	r0, [r4, #4]
	sub	r1, r1, #1
	ldrb	r2, [r0, r1]
	cmp	r2, #10
	moveq	r2, #0
	strbeq	r2, [r0, r1]
	ldreq	r0, [r4, #4]
	b	.LBB2_5
.LBB2_5:                                @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp2:
	.size	getusershell, .Ltmp2-getusershell
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/etc/shells"
	.size	.L.str, 12

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"rbe"
	.size	.L.str1, 4

	.type	defshells,%object       @ @defshells
	.section	.rodata,"a",%progbits
defshells:
	.asciz	"/bin/sh\n/bin/csh\n"
	.size	defshells, 18

	.type	.L.str2,%object         @ @.str2
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str2:
	.asciz	"rb"
	.size	.L.str2, 3

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,12,4

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
