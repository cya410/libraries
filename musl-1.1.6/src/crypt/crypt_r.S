.section crypt_r_text
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
	.file	"src/crypt/crypt_r.bc"
	.globl	__crypt_r
	.align	2
	.type	__crypt_r,%function
.section bb0_0
__crypt_r:                              @ @__crypt_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldrb	r3, [r1]
	cmp	r3, #36
	bne	.LBB0_12
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %land.lhs.true
	ldrb	r3, [r1, #1]
	cmp	r3, #0
	ldrbne	r12, [r1, #2]
	cmpne	r12, #0
	beq	.LBB0_12
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.then
	cmp	r3, #49
	cmpeq	r12, #36
	beq	.LBB0_7
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	cmp	r3, #54
	beq	.LBB0_8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	cmp	r3, #53
	bne	.LBB0_10
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.lhs.true34
	cmp	r12, #36
	bne	.LBB0_12
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then39
	b	__crypt_sha256
.section bb0_7
.LBB0_7:                                @ %if.then17
	b	__crypt_md5
.section bb0_8
.LBB0_8:                                @ %land.lhs.true46
	cmp	r12, #36
	bne	.LBB0_12
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then51
	b	__crypt_sha512
.section bb0_10
.LBB0_10:                               @ %if.end
	cmp	r3, #50
	ldrbeq	r3, [r1, #3]
	cmpeq	r3, #36
	bne	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then27
	b	__crypt_blowfish
.section bb0_12
.LBB0_12:                               @ %if.end54
	b	__crypt_des
.Ltmp0:
	.size	__crypt_r, .Ltmp0-__crypt_r
	.cantunwind
	.fnend


	.weak	crypt_r
crypt_r = __crypt_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
