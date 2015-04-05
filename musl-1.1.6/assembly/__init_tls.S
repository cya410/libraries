.section __init_tls_text
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
	.file	"src/env/__init_tls.bc"
	.globl	__init_tp
	.align	2
	.type	__init_tp,%function
.section bb0_0
__init_tp:                              @ @__init_tp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	str	r4, [r0], #184
	bl	__set_thread_area
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	blt	.LBB0_6
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	ldreq	r0, .LCPI0_0
	moveq	r1, #1
	mov	r7, #256
	streq	r1, [r0, #4]
	b	.LBB0_4
.LCPI0_0:
	.long	__libc
.section bb0_4
.LBB0_4:                                @ %if.end
	ldr	r1, .LCPI0_1
	mov	r0, #1
	str	r0, [r1], #52
	add	r0, r4, #24
	b	.LBB0_5
.LCPI0_1:
	.long	__libc
.section bb0_5
.LBB0_5:                                @ %if.end
	@APP
	svc	#0
	@NO_APP
	str	r0, [r4, #24]
	mov	r0, #0
	str	r1, [r4, #152]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %return
	pop	{r4, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__init_tp, .Ltmp0-__init_tp
	.cantunwind
	.fnend

	.globl	__init_tls
	.align	2
	.type	__init_tls,%function
.section bb1_0
__init_tls:                             @ @__init_tls
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	pc, lr
.Ltmp1:
	.size	__init_tls, .Ltmp1-__init_tls
	.cantunwind
	.fnend

	.hidden	__libc

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
