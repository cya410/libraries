.section regerror_text
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
	.file	"src/regex/regerror.bc"
	.globl	regerror
	.align	2
	.type	regerror,%function
.section bb0_0
regerror:                               @ @regerror
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
	ldr	r6, .LCPI0_2
	mov	r7, r0
	mov	r4, r3
	mov	r5, r2
	cmp	r7, #0
	beq	.LBB0_5
	b	.LBB0_3
.LCPI0_2:
	.long	messages
.section bb0_3
.LBB0_3:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r6]
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.inc
                                        @   in Loop: Header=BB0_3 Depth=1
	mov	r0, r6
	bl	strlen
	add	r0, r0, r6
	subs	r7, r7, #1
	add	r6, r0, #1
	bne	.LBB0_3
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.end
	mov	r0, r6
	ldrb	r1, [r0], #1
	cmp	r1, #0
	movne	r0, r6
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.end
	bl	__lctrans_cur
	ldr	r2, .LCPI0_3
	mov	r3, r0
	mov	r0, r5
	b	.LBB0_7
.LCPI0_3:
	.long	.L.str
.section bb0_7
.LBB0_7:                                @ %for.end
	mov	r1, r4
	bl	snprintf
	add	r0, r0, #1
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	regerror, .Ltmp0-regerror
	.cantunwind
	.fnend

	.type	messages,%object        @ @messages
	.section	.rodata,"a",%progbits
messages:
	.asciz	"No error\000No match\000Invalid regexp\000Unknown collating element\000Unknown character class name\000Trailing backslash\000Invalid back reference\000Missing ']'\000Missing ')'\000Missing '}'\000Invalid contents of {}\000Invalid character range\000Out of memory\000Repetition not preceded by valid expression\000\000Unknown error"
	.size	messages, 286

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
