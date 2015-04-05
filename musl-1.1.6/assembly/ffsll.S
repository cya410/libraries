.section ffsll_text
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
	.file	"src/misc/ffsll.bc"
	.globl	ffsll
	.align	2
	.type	ffsll,%function
.section bb0_0
ffsll:                                  @ @ffsll
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	orrs	r2, r0, r1
	mov	r2, #0
	beq	.LBB0_5
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %cond.true
	cmp	r0, #0
	beq	.LBB0_3
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end.i
	rsb	r1, r0, #0
	and	r0, r0, r1
	ldr	r1, .LCPI0_2
	mul	r2, r0, r1
	ldr	r0, .LCPI0_4
	ldrb	r0, [r0, r2, lsr #27]
	b	.LBB0_4
.LCPI0_2:
	.long	124511785               @ 0x76be629
.LCPI0_4:
	.long	a_ctz_l.debruijn32
.section bb0_3
.LBB0_3:                                @ %if.then.i
	rsb	r0, r1, #0
	and	r0, r1, r0
	ldr	r1, .LCPI0_3
	mul	r2, r0, r1
	ldr	r0, .LCPI0_5
	ldrb	r0, [r0, r2, lsr #27]
	add	r0, r0, #32
	b	.LBB0_4
.LCPI0_3:
	.long	124511785               @ 0x76be629
.LCPI0_5:
	.long	a_ctz_l.debruijn32
.section bb0_4
.LBB0_4:                                @ %a_ctz_64.exit
	add	r2, r0, #1
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.end
	mov	r0, r2
	mov	pc, lr
.Ltmp0:
	.size	ffsll, .Ltmp0-ffsll
	.cantunwind
	.fnend

	.type	a_ctz_l.debruijn32,%object @ @a_ctz_l.debruijn32
	.section	.rodata,"a",%progbits
a_ctz_l.debruijn32:
	.ascii	"\000\001\027\002\035\030\023\003\036\033\031\013\024\b\004\r\037\026\034\022\032\n\007\f\025\021\t\006\020\005\017\016"
	.size	a_ctz_l.debruijn32, 32


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
