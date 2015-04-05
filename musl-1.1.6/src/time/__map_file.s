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
	.file	"src/time/__map_file.bc"
	.globl	__map_file
	.align	2
	.type	__map_file,%function
__map_file:                             @ @__map_file
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#120
	sub	sp, sp, #120
	mov	r4, r1
	mov	r1, #133120
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r7, #5
	orr	r1, r1, #524288
	@APP
	svc	#0
	@NO_APP
	mov	r1, #0
	mov	r5, r0
	cmp	r5, #0
	blt	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	add	r1, sp, #16
	mov	r7, #197
	mov	r0, r5
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	add	r6, r1, #48
	mvn	r1, #0
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %if.then2
	ldr	r1, [r6]
	mov	r0, #0
	mov	r2, #1
	mov	r3, #1
	b	.LBB0_7
.LBB0_7:                                @ %if.then2
	str	r0, [sp, #8]
	str	r0, [sp, #12]
	mov	r0, #0
	str	r5, [sp]
	bl	__mmap
	mov	r1, r0
	b	.LBB0_8
.LBB0_8:                                @ %if.end4
	mov	r7, #6
	mov	r0, r5
	cmn	r1, #1
	@APP
	svc	#0
	@NO_APP
	moveq	r1, #0
	ldr	r0, [r6]
	str	r0, [r4]
	b	.LBB0_9
.LBB0_9:                                @ %cleanup
	mov	r0, r1
	add	sp, sp, #120
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__map_file, .Ltmp0-__map_file
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
