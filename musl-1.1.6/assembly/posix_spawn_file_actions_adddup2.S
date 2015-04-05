.section posix_spawn_file_actions_adddup2_text
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
	.file	"src/process/posix_spawn_file_actions_adddup2.bc"
	.globl	posix_spawn_file_actions_adddup2
	.align	2
	.type	posix_spawn_file_actions_adddup2,%function
.section bb0_0
posix_spawn_file_actions_adddup2:       @ @posix_spawn_file_actions_adddup2
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r0, #28
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r6, r2
	mov	r5, r1
	bl	malloc
	mov	r1, #12
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	mov	r1, #2
	str	r1, [r0, #8]
	str	r6, [r0, #12]
	str	r5, [r0, #16]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	ldr	r1, [r4, #8]
	cmp	r1, #0
	str	r1, [r0]
	strne	r0, [r1, #4]
	mov	r1, #0
	str	r1, [r0, #4]
	str	r0, [r4, #8]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %return
	mov	r0, r1
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	posix_spawn_file_actions_adddup2, .Ltmp0-posix_spawn_file_actions_adddup2
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
