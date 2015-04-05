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
	.file	"src/network/gai_strerror.bc"
	.globl	gai_strerror
	.align	2
	.type	gai_strerror,%function
gai_strerror:                           @ @gai_strerror
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r1, .LCPI0_0
	adds	r0, r0, #1
	beq	.LBB0_6
	b	.LBB0_1
.LCPI0_0:
	.long	msgs
.LBB0_1:                                @ %land.rhs
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_4 Depth 2
	ldrb	r2, [r1]
	cmp	r2, #0
	beq	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                @ %for.cond2.preheader
                                        @   in Loop: Header=BB0_1 Depth=1
	add	r1, r1, #1
	b	.LBB0_4
.LBB0_3:                                @ %for.cond2.for.cond2_crit_edge
                                        @   in Loop: Header=BB0_4 Depth=2
	ldrb	r2, [r1], #1
	b	.LBB0_4
.LBB0_4:                                @ %for.cond2
                                        @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	tst	r2, #255
	bne	.LBB0_3
	b	.LBB0_5
.LBB0_5:                                @ %for.cond.loopexit
                                        @   in Loop: Header=BB0_1 Depth=1
	adds	r0, r0, #1
	bne	.LBB0_1
	b	.LBB0_6
.LBB0_6:                                @ %for.end8
	mov	r0, r1
	ldrb	r2, [r0], #1
	cmp	r2, #0
	movne	r0, r1
	b	__lctrans_cur
.Ltmp0:
	.size	gai_strerror, .Ltmp0-gai_strerror
	.cantunwind
	.fnend

	.type	msgs,%object            @ @msgs
	.section	.rodata,"a",%progbits
msgs:
	.asciz	"Invalid flags\000Name does not resolve\000Try again\000Non-recoverable error\000Unknown error\000Unrecognized address family or invalid length\000Unrecognized socket type\000Unrecognized service\000Unknown error\000Out of memory\000System error\000Overflow\000\000Unknown error"
	.size	msgs, 239


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
