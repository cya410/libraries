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
	.file	"src/network/if_indextoname.bc"
	.globl	if_indextoname
	.align	2
	.type	if_indextoname,%function
if_indextoname:                         @ @if_indextoname
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	mov	r4, r1
	mov	r1, #2
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, r0
	mov	r0, #1
	mov	r2, #0
	mov	r5, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	orr	r1, r1, #524288
	bl	socket
	mov	r6, r0
	cmp	r6, #0
	blt	.LBB0_9
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	mov	r1, #2320
	mov	r2, sp
	mov	r0, r6
	str	r7, [sp, #16]
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	orr	r1, r1, #32768
	bl	ioctl
	mov	r1, r0
	mov	r7, #6
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	cmp	r1, #0
	blt	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %cond.false
	mov	r1, sp
	mov	r0, r4
	mov	r2, #16
	bl	strncpy
	mov	r5, r0
	b	.LBB0_9
.LBB0_9:                                @ %return
	mov	r0, r5
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	if_indextoname, .Ltmp0-if_indextoname
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
