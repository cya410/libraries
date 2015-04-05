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
	.file	"src/thread/pthread_getspecific.bc"
	.align	2
	.type	__pthread_getspecific,%function
__pthread_getspecific:                  @ @__pthread_getspecific
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r1, r0
	@APP
	bl	__a_gettp
	mov	r2, r0
	@NO_APP
	ldr	r0, [r2, #-96]
	ldr	r0, [r0, r1, lsl #2]
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_getspecific, .Ltmp0-__pthread_getspecific
	.cantunwind
	.fnend


	.weak	pthread_getspecific
pthread_getspecific = __pthread_getspecific
	.weak	tss_get
tss_get = __pthread_getspecific
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
