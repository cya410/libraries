.section __xstat_text
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
	.file	"src/stat/__xstat.bc"
	.globl	__fxstat
	.align	2
	.type	__fxstat,%function
.section bb0_0
__fxstat:                               @ @__fxstat
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r0, r1
	mov	r1, r2
	b	fstat
.Ltmp0:
	.size	__fxstat, .Ltmp0-__fxstat
	.cantunwind
	.fnend

	.globl	__fxstatat
	.align	2
	.type	__fxstatat,%function
.section bb1_0
__fxstatat:                             @ @__fxstatat
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r12, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	b	fstatat
.Ltmp1:
	.size	__fxstatat, .Ltmp1-__fxstatat
	.cantunwind
	.fnend

	.globl	__lxstat
	.align	2
	.type	__lxstat,%function
.section bb2_0
__lxstat:                               @ @__lxstat
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r0, r1
	mov	r1, r2
	b	lstat
.Ltmp2:
	.size	__lxstat, .Ltmp2-__lxstat
	.cantunwind
	.fnend

	.globl	__xstat
	.align	2
	.type	__xstat,%function
.section bb3_0
__xstat:                                @ @__xstat
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r0, r1
	mov	r1, r2
	b	stat
.Ltmp3:
	.size	__xstat, .Ltmp3-__xstat
	.cantunwind
	.fnend

	.globl	__xmknod
	.align	2
	.type	__xmknod,%function
.section bb4_0
__xmknod:                               @ @__xmknod
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	ldr	r12, [r3]
	ldr	r3, [r3, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r12
	b	mknod
.Ltmp4:
	.size	__xmknod, .Ltmp4-__xmknod
	.cantunwind
	.fnend

	.globl	__xmknodat
	.align	2
	.type	__xmknodat,%function
.section bb5_0
__xmknodat:                             @ @__xmknodat
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	ldr	r12, [sp, #16]
	ldm	r12, {r0, r12}
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %entry
	stm	sp, {r0, r12}
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	mknodat
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	__xmknodat, .Ltmp5-__xmknodat
	.cantunwind
	.fnend


	.weak	__fxstat64
__fxstat64 = __fxstat
	.weak	__fxstatat64
__fxstatat64 = __fxstatat
	.weak	__lxstat64
__lxstat64 = __lxstat
	.weak	__xstat64
__xstat64 = __xstat
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
