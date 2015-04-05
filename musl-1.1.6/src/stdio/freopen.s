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
	.file	"src/stdio/freopen.bc"
	.globl	freopen
	.align	2
	.type	freopen,%function
freopen:                                @ @freopen
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r7, r1
	mov	r5, r0
	mov	r4, r2
	mov	r0, r7
	b	.LBB0_3
.LBB0_3:                                @ %entry
	bl	__fmodeflags
	mov	r6, r0
	ldr	r0, [r4, #76]
	mov	r8, #0
	cmp	r0, #0
	blt	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	mov	r8, r0
	b	.LBB0_5
.LBB0_5:                                @ %cond.end
	mov	r0, r4
	bl	fflush
	cmp	r5, #0
	beq	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %if.else
	mov	r0, r5
	mov	r1, r7
	bl	fopen
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB0_20
	b	.LBB0_7
.LBB0_7:                                @ %if.end16
	ldr	r1, [r4, #60]
	ldr	r0, [r7, #60]
	cmp	r0, r1
	bne	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                @ %if.then20
	mvn	r0, #0
	str	r0, [r7, #60]
	b	.LBB0_14
.LBB0_9:                                @ %if.then
	tst	r6, #524288
	beq	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %if.then4
	ldr	r0, [r4, #60]
	mov	r7, #221
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	ldr	r0, .LCPI0_0
	mov	r7, #221
	mov	r1, #4
	and	r2, r6, r0
	b	.LBB0_12
.LCPI0_0:
	.long	4294442815              @ 0xfff7ff3f
.LBB0_12:                               @ %if.end
	ldr	r0, [r4, #60]
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	cmp	r0, #0
	bge	.LBB0_17
	b	.LBB0_20
.LBB0_13:                               @ %if.else22
	and	r2, r6, #524288
	bl	__dup3
	cmp	r0, #0
	blt	.LBB0_19
	b	.LBB0_14
.LBB0_14:                               @ %if.end30
	ldr	r1, [r4]
	ldr	r0, [r7]
	and	r1, r1, #1
	orr	r0, r1, r0
	b	.LBB0_15
.LBB0_15:                               @ %if.end30
	str	r0, [r4]
	ldr	r0, [r7, #32]
	str	r0, [r4, #32]
	ldr	r0, [r7, #36]
	b	.LBB0_16
.LBB0_16:                               @ %if.end30
	str	r0, [r4, #36]
	ldr	r0, [r7, #40]
	str	r0, [r4, #40]
	ldr	r0, [r7, #12]
	str	r0, [r4, #12]
	mov	r0, r7
	bl	fclose
	b	.LBB0_17
.LBB0_17:                               @ %if.end39
	cmp	r8, #0
	beq	.LBB0_21
	b	.LBB0_18
.LBB0_18:                               @ %if.then41
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_21
.LBB0_19:                               @ %fail2
	mov	r0, r7
	bl	fclose
	b	.LBB0_20
.LBB0_20:                               @ %fail
	mov	r0, r4
	bl	fclose
	mov	r4, #0
	b	.LBB0_21
.LBB0_21:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	freopen, .Ltmp0-freopen
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__syscall_ret
	.hidden	__unlockfile

	.weak	freopen64
freopen64 = freopen
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
