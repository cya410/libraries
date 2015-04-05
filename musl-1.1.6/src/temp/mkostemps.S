.section mkostemps_text
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
	.file	"src/temp/mkostemps.bc"
	.globl	__mkostemps
	.align	2
	.type	__mkostemps,%function
.section bb0_0
__mkostemps:                            @ @__mkostemps
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
	mov	r4, r0
	mov	r6, r2
	mov	r5, r1
                                        @ kill: R0<def> R4<kill>
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	bl	strlen
	cmp	r0, #6
	subhs	r1, r0, #6
	cmphs	r1, r5
	blo	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %lor.lhs.false2
	mvn	r1, #5
	mov	r2, #6
	sub	r1, r1, r5
	add	r0, r1, r0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %lor.lhs.false2
	ldr	r1, .LCPI0_2
	add	r5, r4, r0
	mov	r0, r5
	bl	memcmp
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_6
.LCPI0_2:
	.long	.L.str
.section bb0_6
.LBB0_6:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_13
.section bb0_7
.LBB0_7:                                @ %if.end
	ldr	r0, .LCPI0_4
	mvn	r7, #99
	and	r0, r6, r0
	orr	r6, r0, #194
	b	.LBB0_8
.LCPI0_4:
	.long	4292869948              @ 0xffdfff3c
.section bb0_8
.LBB0_8:                                @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	bl	__randname
	mov	r0, r4
	mov	r1, r6
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %do.body
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r2, #384
	bl	open
	cmp	r0, #0
	bge	.LBB0_14
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %do.cond
                                        @   in Loop: Header=BB0_8 Depth=1
	adds	r7, r7, #1
	beq	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %land.rhs
                                        @   in Loop: Header=BB0_8 Depth=1
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #17
	beq	.LBB0_8
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %do.end
	ldr	r1, .LCPI0_3
	mov	r0, r5
	mov	r2, #6
	bl	memcpy
	b	.LBB0_13
.LCPI0_3:
	.long	.L.str
.section bb0_13
.LBB0_13:                               @ %return
	mvn	r0, #0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__mkostemps, .Ltmp0-__mkostemps
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"XXXXXX"
	.size	.L.str, 7


	.weak	mkostemps
mkostemps = __mkostemps
	.weak	mkostemps64
mkostemps64 = __mkostemps
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
