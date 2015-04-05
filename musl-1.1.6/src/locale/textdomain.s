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
	.file	"src/locale/textdomain.bc"
	.globl	__gettextdomain
	.align	2
	.type	__gettextdomain,%function
__gettextdomain:                        @ @__gettextdomain
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r0, .LCPI0_2
	ldr	r1, [r0]
	ldr	r0, .LCPI0_3
	cmp	r1, #0
	movne	r0, r1
	mov	pc, lr
.LCPI0_2:
	.long	current_domain
.LCPI0_3:
	.long	.L.str
.Ltmp0:
	.size	__gettextdomain, .Ltmp0-__gettextdomain
	.cantunwind
	.fnend

	.globl	textdomain
	.align	2
	.type	textdomain,%function
textdomain:                             @ @textdomain
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB1_4
	b	.LBB1_2
.LBB1_2:                                @ %if.end
	mov	r0, r4
	bl	strlen
	mov	r5, r0
	cmp	r5, #256
	blo	.LBB1_5
	b	.LBB1_3
.LBB1_3:                                @ %if.then2
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mov	r0, #0
	b	.LBB1_8
.LBB1_4:                                @ %if.then
	ldr	r0, .LCPI1_0
	ldr	r1, [r0]
	ldr	r0, .LCPI1_2
	cmp	r1, #0
	movne	r0, r1
	b	.LBB1_8
.LCPI1_0:
	.long	current_domain
.LCPI1_2:
	.long	.L.str
.LBB1_5:                                @ %if.end4
	ldr	r6, .LCPI1_3
	ldr	r1, [r6]
	cmp	r1, #0
	bne	.LBB1_7
	b	.LBB1_6
.LCPI1_1:
	.long	current_domain
.LCPI1_3:
	.long	.L.str
.LBB1_6:                                @ %if.then6
	mov	r0, #256
	bl	malloc
	mov	r1, r0
	mov	r0, #0
	str	r1, [r6]
	cmp	r1, #0
	beq	.LBB1_8
	b	.LBB1_7
.LBB1_7:                                @ %if.end11
	mov	r0, r1
	add	r2, r5, #1
	mov	r1, r4
	bl	memcpy
	ldr	r0, [r6]
	b	.LBB1_8
.LBB1_8:                                @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp1:
	.size	textdomain, .Ltmp1-textdomain
	.cantunwind
	.fnend

	.globl	gettext
	.align	2
	.type	gettext,%function
gettext:                                @ @gettext
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r1, r0
	mov	r0, #0
	b	dgettext
.Ltmp2:
	.size	gettext, .Ltmp2-gettext
	.cantunwind
	.fnend

	.globl	ngettext
	.align	2
	.type	ngettext,%function
ngettext:                               @ @ngettext
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r3, r2
	mov	r2, r1
	mov	r1, r0
	mov	r0, #0
	b	dngettext
.Ltmp3:
	.size	ngettext, .Ltmp3-ngettext
	.cantunwind
	.fnend

	.type	current_domain,%object  @ @current_domain
	.local	current_domain
	.comm	current_domain,4,4
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"messages"
	.size	.L.str, 9


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
