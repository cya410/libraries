.section setvbuf_text
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
	.file	"src/stdio/setvbuf.bc"
	.globl	setvbuf
	.align	2
	.type	setvbuf,%function
.section bb0_0
setvbuf:                                @ @setvbuf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, #255
	cmp	r2, #1
	strb	r1, [r0, #75]
	bne	.LBB0_2
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %if.then2
	mov	r1, #10
	strb	r1, [r0, #75]
	b	.LBB0_3
.section bb0_2
.LBB0_2:                                @ %entry
	cmp	r2, #2
	moveq	r1, #0
	streq	r1, [r0, #48]
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end4
	ldr	r1, [r0]
	orr	r1, r1, #64
	str	r1, [r0]
	mov	r0, #0
	mov	pc, lr
.Ltmp0:
	.size	setvbuf, .Ltmp0-setvbuf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
