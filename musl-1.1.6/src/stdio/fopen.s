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
	.file	"src/stdio/fopen.bc"
	.globl	fopen
	.align	2
	.type	fopen,%function
fopen:                                  @ @fopen
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	mov	r4, r1
	mov	r6, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r0, .LCPI0_0
	ldrb	r1, [r4]
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_12
	b	.LBB0_4
.LCPI0_0:
	.long	.L.str
.LBB0_4:                                @ %if.end
	mov	r0, r4
	bl	__fmodeflags
	mov	r7, r0
	mov	r3, #182
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	mov	r5, #0
	mov	r0, #5
	mov	r1, r6
	orr	r2, r7, #131072
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	orr	r3, r3, #256
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	bl	__syscall_cp
	bl	__syscall_ret
	mov	r6, r0
	cmp	r6, #0
	blt	.LBB0_14
	b	.LBB0_8
.LBB0_8:                                @ %if.end7
	tst	r7, #524288
	beq	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                @ %if.then9
	mov	r7, #221
	mov	r0, r6
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_10
.LBB0_10:                               @ %if.end11
	mov	r0, r6
	mov	r1, r4
	bl	__fdopen
	mov	r5, r0
	cmp	r5, #0
	bne	.LBB0_14
	b	.LBB0_11
.LBB0_11:                               @ %if.end15
	mov	r7, #6
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_13
.LBB0_12:                               @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_13
.LBB0_13:                               @ %return
	mov	r5, #0
	b	.LBB0_14
.LBB0_14:                               @ %return
	mov	r0, r5
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fopen, .Ltmp0-fopen
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"rwa"
	.size	.L.str, 4

	.hidden	__syscall_ret
	.hidden	__syscall_cp

	.weak	fopen64
fopen64 = fopen
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
