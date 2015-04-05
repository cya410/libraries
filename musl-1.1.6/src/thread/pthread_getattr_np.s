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
	.file	"src/thread/pthread_getattr_np.bc"
	.globl	pthread_getattr_np
	.align	2
	.type	pthread_getattr_np,%function
pthread_getattr_np:                     @ @pthread_getattr_np
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#40
	sub	sp, sp, #40
	mov	r4, r1
	mov	r5, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	add	r0, sp, #4
	mov	r1, #36
	mov	r2, #0
	bl	__aeabi_memset
	b	.LBB0_4
.LBB0_4:                                @ %entry
	ldmib	sp, {r0, r1, r2, r3, r7}
	ldr	r6, [sp, #24]
	str	r6, [r4, #20]
	stm	r4, {r0, r1, r2, r3, r7}
	b	.LBB0_5
.LBB0_5:                                @ %entry
	add	r2, sp, #28
	add	r3, r4, #24
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	b	.LBB0_6
.LBB0_6:                                @ %entry
	ldr	r0, [r5, #52]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [r4, #12]
	ldr	r0, [r5, #64]
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then
	str	r0, [r4, #8]
	ldr	r0, [r5, #68]
	sub	r0, r0, #81920
	b	.LBB0_17
.LBB0_8:                                @ %if.else
	ldr	r0, .LCPI0_2
	mov	r2, #255
	mov	r3, #0
	mov	r7, #4096
	b	.LBB0_9
.LCPI0_2:
	.long	__libc
.LBB0_9:                                @ %if.else
	orr	r2, r2, #3840
	ldr	r0, [r0, #16]
	rsb	r1, r0, #0
	and	r2, r1, r2
	b	.LBB0_10
.LBB0_10:                               @ %if.else
	add	r2, r0, r2
	str	r2, [r4, #8]
	ldr	r2, .LCPI0_3
	orr	r1, r1, r2
	b	.LBB0_11
.LCPI0_3:
	.long	4294963200              @ 0xfffff000
.LBB0_11:                               @ %if.else
	mov	r2, #8192
	add	r5, r1, r0
	mov	r1, #4096
	sub	r0, r5, #4096
	bl	mremap
	cmn	r0, #1
	bne	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               @ %land.rhs.lr.ph
	sub	r5, r5, #8192
	bl	__errno_location
	mov	r6, r0
	mov	r7, #4096
	b	.LBB0_13
.LBB0_13:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6]
	cmp	r0, #12
	bne	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               @ %while.body
                                        @   in Loop: Header=BB0_13 Depth=1
	mov	r0, r5
	mov	r1, #4096
	mov	r2, #8192
	mov	r3, #0
	b	.LBB0_15
.LBB0_15:                               @ %while.body
                                        @   in Loop: Header=BB0_13 Depth=1
	bl	mremap
	sub	r5, r5, #4096
	add	r7, r7, #4096
	cmn	r0, #1
	beq	.LBB0_13
	b	.LBB0_16
.LBB0_16:                               @ %while.end
	sub	r0, r7, #81920
	b	.LBB0_17
.LBB0_17:                               @ %if.end
	str	r0, [r4]
	mov	r0, #0
	add	sp, sp, #40
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	pthread_getattr_np, .Ltmp0-pthread_getattr_np
	.cantunwind
	.fnend

	.hidden	__libc

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
