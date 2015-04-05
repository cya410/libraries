.section pthread_getschedparam_text
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
	.file	"src/thread/pthread_getschedparam.bc"
	.globl	pthread_getschedparam
	.align	2
	.type	pthread_getschedparam,%function
.section bb0_0
pthread_getschedparam:                  @ @pthread_getschedparam
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
	mov	r9, r2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r8, r1
	add	r4, r5, #156
	mov	r0, r4
	bl	__lock
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r0, [r5, #128]
	mov	r6, #3
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.else
	ldr	r0, [r5, #24]
	mov	r7, #155
	mov	r1, r9
	@APP
	svc	#0
	@NO_APP
	rsb	r6, r0, #0
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then2
	ldr	r0, [r5, #24]
	mov	r7, #157
	@APP
	svc	#0
	@NO_APP
	str	r0, [r8]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end5
	mov	r0, r4
	bl	__unlock
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_getschedparam, .Ltmp0-pthread_getschedparam
	.cantunwind
	.fnend

	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
