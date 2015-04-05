.section fork_text
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
	.file	"src/process/fork.bc"
	.align	2
	.type	dummy,%function
.section bb0_0
dummy:                                  @ @dummy
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy, .Ltmp0-dummy
	.cantunwind
	.fnend

	.globl	fork
	.align	2
	.type	fork,%function
.section bb1_0
fork:                                   @ @fork
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#128
	sub	sp, sp, #128
	mvn	r0, #0
	bl	__fork_handler
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r0, sp
	bl	__block_all_sigs
	mov	r7, #2
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	bl	__syscall_ret
	mov	r4, r0
	cmp	r4, #0
	bne	.LBB1_8
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	ldr	r5, .LCPI1_0
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB1_8
	b	.LBB1_6
.LCPI1_0:
	.long	__libc
.section bb1_6
.LBB1_6:                                @ %if.then
	mov	r7, #224
	mov	r6, #0
	@APP
	svc	#0
	@NO_APP
	mov	r1, r0
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %if.then
	@APP
	bl	__a_gettp
	mov	r2, r0
	@NO_APP
	str	r1, [r2, #-160]
	sub	r0, r2, #52
	mov	r1, #0
	mov	r2, #12
	bl	memset
	str	r6, [r5, #20]
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.end
	mov	r0, sp
	bl	__restore_sigs
	mov	r0, #0
	cmp	r4, #0
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %if.end
	moveq	r0, #1
	bl	__fork_handler
	mov	r0, r4
	add	sp, sp, #128
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	fork, .Ltmp1-fork
	.cantunwind
	.fnend

	.hidden	__libc
	.hidden	__syscall_ret

	.weak	__fork_handler
__fork_handler = dummy
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
