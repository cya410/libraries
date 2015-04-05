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
	.file	"src/thread/pthread_detach.bc"
	.align	2
	.type	__pthread_detach,%function
__pthread_detach:                       @ @__pthread_detach
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	add	r5, r4, #164
	b	.LBB0_2
.LBB0_2:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r5]
	mov	r1, #1
	mov	r2, r5
	mov	r0, r6
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_2
	b	.LBB0_3
.LBB0_3:                                @ %a_swap.exit
	cmp	r6, #0
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r0, r4
	mov	r1, #0
	pop	{r4, r5, r6, lr}
	b	__pthread_join
.LBB0_5:                                @ %return
	mov	r0, #2
	str	r0, [r4, #52]
	mov	r0, r5
	bl	__unlock
	mov	r0, #0
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_detach, .Ltmp0-__pthread_detach
	.cantunwind
	.fnend

	.hidden	__unlock
	.hidden	__a_cas

	.weak	pthread_detach
pthread_detach = __pthread_detach
	.weak	thrd_detach
thrd_detach = __pthread_detach
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
