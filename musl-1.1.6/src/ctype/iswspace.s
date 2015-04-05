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
	.file	"src/ctype/iswspace.bc"
	.globl	iswspace
	.align	2
	.type	iswspace,%function
iswspace:                               @ @iswspace
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %land.rhs
	ldr	r0, .LCPI0_0
	bl	wcschr
	cmp	r0, #0
	movne	r0, #1
	b	.LBB0_3
.LCPI0_0:
	.long	iswspace.spaces
.LBB0_3:                                @ %land.end
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	iswspace, .Ltmp0-iswspace
	.cantunwind
	.fnend

	.globl	__iswspace_l
	.align	2
	.type	__iswspace_l,%function
__iswspace_l:                           @ @__iswspace_l
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB1_3
	b	.LBB1_2
.LBB1_2:                                @ %land.rhs.i
	ldr	r0, .LCPI1_0
	bl	wcschr
	cmp	r0, #0
	movne	r0, #1
	b	.LBB1_3
.LCPI1_0:
	.long	iswspace.spaces
.LBB1_3:                                @ %iswspace.exit
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__iswspace_l, .Ltmp1-__iswspace_l
	.cantunwind
	.fnend

	.type	iswspace.spaces,%object @ @iswspace.spaces
	.section	.rodata,"a",%progbits
	.align	2
iswspace.spaces:
	.long	32                      @ 0x20
	.long	9                       @ 0x9
	.long	10                      @ 0xa
	.long	13                      @ 0xd
	.long	11                      @ 0xb
	.long	12                      @ 0xc
	.long	133                     @ 0x85
	.long	8192                    @ 0x2000
	.long	8193                    @ 0x2001
	.long	8194                    @ 0x2002
	.long	8195                    @ 0x2003
	.long	8196                    @ 0x2004
	.long	8197                    @ 0x2005
	.long	8198                    @ 0x2006
	.long	8200                    @ 0x2008
	.long	8201                    @ 0x2009
	.long	8202                    @ 0x200a
	.long	8232                    @ 0x2028
	.long	8233                    @ 0x2029
	.long	8287                    @ 0x205f
	.long	12288                   @ 0x3000
	.long	0                       @ 0x0
	.size	iswspace.spaces, 88


	.weak	iswspace_l
iswspace_l = __iswspace_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
