.section posix_spawn_file_actions_addopen_text
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
	.file	"src/process/posix_spawn_file_actions_addopen.bc"
	.globl	posix_spawn_file_actions_addopen
	.align	2
	.type	posix_spawn_file_actions_addopen,%function
.section bb0_0
posix_spawn_file_actions_addopen:       @ @posix_spawn_file_actions_addopen
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r6, r2
	mov	r4, r0
	mov	r8, r3
	mov	r7, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r0, r6
	bl	strlen
	add	r0, r0, #29
	bl	malloc
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r5, r0
	mov	r0, #12
	cmp	r5, #0
	beq	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	ldr	r0, [sp, #24]
	mov	r1, #3
	str	r1, [r5, #8]
	str	r7, [r5, #12]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	str	r8, [r5, #20]
	mov	r1, r6
	str	r0, [r5, #24]
	add	r0, r5, #28
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	bl	strcpy
	ldr	r0, [r4, #8]
	cmp	r0, #0
	str	r0, [r5]
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	strne	r5, [r0, #4]
	mov	r0, #0
	str	r0, [r5, #4]
	str	r5, [r4, #8]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	posix_spawn_file_actions_addopen, .Ltmp0-posix_spawn_file_actions_addopen
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
