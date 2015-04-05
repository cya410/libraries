.section statvfs_text
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
	.file	"src/stat/statvfs.bc"
	.globl	__statfs
	.align	2
	.type	__statfs,%function
.section bb0_0
__statfs:                               @ @__statfs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#88
	sub	sp, sp, #88
	add	r6, sp, #4
	mov	r4, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	mov	r1, #84
	mov	r2, #0
	mov	r7, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, r6
	bl	__aeabi_memset
	mov	r0, r4
	mov	r1, r6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r2, #84
	str	r7, [r0], #4
	bl	__aeabi_memcpy
	mov	r7, #10
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	mov	r0, r5
	mov	r1, #88
	mov	r2, r4
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	add	sp, sp, #88
	pop	{r4, r5, r6, r7, r11, lr}
	b	__syscall_ret
.Ltmp0:
	.size	__statfs, .Ltmp0-__statfs
	.cantunwind
	.fnend

	.globl	__fstatfs
	.align	2
	.type	__fstatfs,%function
.section bb1_0
__fstatfs:                              @ @__fstatfs
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
	.pad	#88
	sub	sp, sp, #88
	add	r6, sp, #4
	mov	r4, r1
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r5, r0
	mov	r1, #84
	mov	r2, #0
	mov	r7, #0
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r0, r6
	bl	__aeabi_memset
	mov	r0, r4
	mov	r1, r6
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	mov	r2, #84
	str	r7, [r0], #4
	bl	__aeabi_memcpy
	mov	r7, #11
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %entry
	mov	r0, r5
	mov	r1, #88
	mov	r2, r4
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	add	sp, sp, #88
	pop	{r4, r5, r6, r7, r11, lr}
	b	__syscall_ret
.Ltmp1:
	.size	__fstatfs, .Ltmp1-__fstatfs
	.cantunwind
	.fnend

	.globl	statvfs
	.align	2
	.type	statvfs,%function
.section bb2_0
statvfs:                                @ @statvfs
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	.pad	#184
	sub	sp, sp, #184
	add	r7, sp, #92
	mov	r4, r1
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r5, r0
	mov	r1, #84
	mov	r2, #0
	mov	r6, #0
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	mov	r0, r7
	bl	__aeabi_memset
	str	r6, [sp]
	mov	r6, sp
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %entry
	mov	r1, r7
	mov	r2, #84
	orr	r0, r6, #4
	bl	__aeabi_memcpy
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %entry
	mov	r7, #10
	mov	r0, r5
	mov	r1, #88
	mov	r2, r6
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %entry
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	blt	.LBB2_19
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %if.end
	add	r5, sp, #92
	mov	r1, #92
	mov	r2, #0
	mov	r0, r5
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %if.end
	bl	__aeabi_memset
	add	r0, r4, #4
	mov	r1, r5
	mov	r2, #92
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %if.end
	bl	__aeabi_memcpy
	ldr	r1, [sp, #60]
	ldr	r0, [sp, #4]
	cmp	r1, #0
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %if.end
	str	r0, [r4]
	moveq	r1, r0
	ldr	r0, [sp, #8]
	str	r1, [r4, #4]
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %if.end
	ldr	r1, [sp, #12]
	str	r1, [r4, #12]
	str	r0, [r4, #8]
	ldr	r1, [sp, #20]
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.end
	ldr	r0, [sp, #16]
	str	r1, [r4, #20]
	str	r0, [r4, #16]
	ldr	r1, [sp, #28]
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.end
	ldr	r0, [sp, #24]
	str	r1, [r4, #28]
	str	r0, [r4, #24]
	ldr	r1, [sp, #36]
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %if.end
	ldr	r0, [sp, #32]
	str	r1, [r4, #36]
	str	r0, [r4, #32]
	ldr	r1, [sp, #44]
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %if.end
	ldr	r0, [sp, #40]
	str	r1, [r4, #44]
	str	r0, [r4, #40]
	str	r1, [r4, #52]
	b	.LBB2_17
.section bb2_17
.LBB2_17:                               @ %if.end
	str	r0, [r4, #48]
	ldr	r0, [sp, #48]
	str	r0, [r4, #56]
	ldr	r0, [sp, #64]
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %if.end
	str	r0, [r4, #64]
	ldr	r0, [sp, #56]
	str	r0, [r4, #68]
	mov	r0, #0
	b	.LBB2_19
.section bb2_19
.LBB2_19:                               @ %cleanup
	add	sp, sp, #184
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	statvfs, .Ltmp2-statvfs
	.cantunwind
	.fnend

	.globl	fstatvfs
	.align	2
	.type	fstatvfs,%function
.section bb3_0
fstatvfs:                               @ @fstatvfs
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	.pad	#184
	sub	sp, sp, #184
	add	r7, sp, #92
	mov	r4, r1
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %entry
	mov	r5, r0
	mov	r1, #84
	mov	r2, #0
	mov	r6, #0
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %entry
	mov	r0, r7
	bl	__aeabi_memset
	str	r6, [sp]
	mov	r6, sp
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %entry
	mov	r1, r7
	mov	r2, #84
	orr	r0, r6, #4
	bl	__aeabi_memcpy
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %entry
	mov	r7, #11
	mov	r0, r5
	mov	r1, #88
	mov	r2, r6
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %entry
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	blt	.LBB3_19
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %if.end
	add	r5, sp, #92
	mov	r1, #92
	mov	r2, #0
	mov	r0, r5
	b	.LBB3_9
.section bb3_9
.LBB3_9:                                @ %if.end
	bl	__aeabi_memset
	add	r0, r4, #4
	mov	r1, r5
	mov	r2, #92
	b	.LBB3_10
.section bb3_10
.LBB3_10:                               @ %if.end
	bl	__aeabi_memcpy
	ldr	r0, [sp, #4]
	str	r0, [r4]
	ldr	r1, [sp, #60]
	b	.LBB3_11
.section bb3_11
.LBB3_11:                               @ %if.end
	cmp	r1, #0
	moveq	r1, r0
	str	r1, [r4, #4]
	ldr	r0, [sp, #8]
	b	.LBB3_12
.section bb3_12
.LBB3_12:                               @ %if.end
	ldr	r1, [sp, #12]
	str	r1, [r4, #12]
	str	r0, [r4, #8]
	ldr	r0, [sp, #16]
	b	.LBB3_13
.section bb3_13
.LBB3_13:                               @ %if.end
	ldr	r1, [sp, #20]
	str	r1, [r4, #20]
	str	r0, [r4, #16]
	ldr	r0, [sp, #24]
	b	.LBB3_14
.section bb3_14
.LBB3_14:                               @ %if.end
	ldr	r1, [sp, #28]
	str	r1, [r4, #28]
	str	r0, [r4, #24]
	ldr	r0, [sp, #32]
	b	.LBB3_15
.section bb3_15
.LBB3_15:                               @ %if.end
	ldr	r1, [sp, #36]
	str	r1, [r4, #36]
	str	r0, [r4, #32]
	ldr	r0, [sp, #40]
	b	.LBB3_16
.section bb3_16
.LBB3_16:                               @ %if.end
	ldr	r1, [sp, #44]
	str	r1, [r4, #44]
	str	r0, [r4, #40]
	str	r1, [r4, #52]
	b	.LBB3_17
.section bb3_17
.LBB3_17:                               @ %if.end
	str	r0, [r4, #48]
	ldr	r0, [sp, #48]
	str	r0, [r4, #56]
	ldr	r0, [sp, #64]
	b	.LBB3_18
.section bb3_18
.LBB3_18:                               @ %if.end
	str	r0, [r4, #64]
	ldr	r0, [sp, #56]
	str	r0, [r4, #68]
	mov	r0, #0
	b	.LBB3_19
.section bb3_19
.LBB3_19:                               @ %cleanup
	add	sp, sp, #184
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	fstatvfs, .Ltmp3-fstatvfs
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	statfs
statfs = __statfs
	.weak	fstatfs
fstatfs = __fstatfs
	.weak	statvfs64
statvfs64 = statvfs
	.weak	statfs64
statfs64 = __statfs
	.weak	fstatvfs64
fstatvfs64 = fstatvfs
	.weak	fstatfs64
fstatfs64 = __fstatfs
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
