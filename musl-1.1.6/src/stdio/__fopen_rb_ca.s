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
	.file	"src/stdio/__fopen_rb_ca.bc"
	.globl	__fopen_rb_ca
	.align	2
	.type	__fopen_rb_ca,%function
__fopen_rb_ca:                          @ @__fopen_rb_ca
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r1
	mov	r9, r2
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r0
	mov	r1, #0
	mov	r2, #136
	mov	r8, r3
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r5, #0
	mov	r0, r4
	bl	memset
	mov	r7, #5
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r0, r6
	mov	r1, #655360
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	str	r0, [r4, #60]
	cmp	r0, #0
	blt	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	r7, #221
	mov	r1, #2
	mov	r2, #1
	mov	r5, r4
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	@APP
	svc	#0
	@NO_APP
	mov	r0, #9
	str	r0, [r4]
	add	r0, r9, #8
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	str	r0, [r4, #44]
	sub	r0, r8, #8
	str	r0, [r4, #48]
	ldr	r0, .LCPI0_3
	b	.LBB0_9
.LCPI0_3:
	.long	__stdio_read
.LBB0_9:                                @ %if.end
	str	r0, [r4, #32]
	ldr	r0, .LCPI0_4
	str	r0, [r4, #40]
	ldr	r0, .LCPI0_5
	str	r0, [r4, #12]
	mvn	r0, #0
	str	r0, [r4, #76]
	b	.LBB0_10
.LCPI0_4:
	.long	__stdio_seek
.LCPI0_5:
	.long	__stdio_close
.LBB0_10:                               @ %return
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__fopen_rb_ca, .Ltmp0-__fopen_rb_ca
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
