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
	.file	"src/misc/realpath.bc"
	.globl	realpath
	.align	2
	.type	realpath,%function
realpath:                               @ @realpath
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#240
	sub	sp, sp, #240
	.pad	#4096
	sub	sp, sp, #4096
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r8, r1
	cmp	r0, #0
	beq	.LBB0_18
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	mov	r1, #133120
	mov	r7, #5
	orr	r1, r1, #2621440
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	bl	__syscall_ret
	mov	r6, r0
	mov	r4, #0
	cmp	r6, #0
	blt	.LBB0_22
	b	.LBB0_6
.LBB0_6:                                @ %if.end4
	add	r9, sp, #4096
	mov	r1, r6
	add	r5, r9, #5
	mov	r0, r5
	b	.LBB0_7
.LBB0_7:                                @ %if.end4
	bl	__procfdname
	mov	r2, #255
	add	r7, sp, #5
	mov	r0, r5
	b	.LBB0_8
.LBB0_8:                                @ %if.end4
	orr	r2, r2, #3840
	mov	r1, r7
	bl	readlink
	cmp	r0, #0
	blt	.LBB0_21
	b	.LBB0_9
.LBB0_9:                                @ %if.end10
	mov	r1, #0
	add	r5, sp, #4096
	strb	r1, [r7, r0]
	add	r1, r5, #136
	b	.LBB0_10
.LBB0_10:                               @ %if.end10
	mov	r0, r6
	bl	fstat
	add	r5, sp, #4096
	mov	r0, r7
	b	.LBB0_11
.LBB0_11:                               @ %if.end10
	add	r1, r5, #32
	bl	stat
	cmp	r0, #0
	blt	.LBB0_21
	b	.LBB0_12
.LBB0_12:                               @ %lor.lhs.false
	add	lr, sp, #4096
	add	r1, lr, #32
	ldr	r2, [r1, #4]
	ldr	r5, [r1, #108]
	b	.LBB0_13
.LBB0_13:                               @ %lor.lhs.false
	ldr	r3, [r1]
	ldr	r7, [r1, #104]
	eor	r2, r5, r2
	eor	r3, r7, r3
	orrs	r2, r3, r2
	bne	.LBB0_19
	b	.LBB0_14
.LBB0_14:                               @ %lor.lhs.false17
	ldr	r2, [r1, #100]
	ldr	r3, [r1, #96]
	ldr	r7, [r1, #200]
	ldr	r1, [r1, #204]
	b	.LBB0_15
.LBB0_15:                               @ %lor.lhs.false17
	eor	r1, r1, r2
	eor	r2, r7, r3
	orrs	r1, r2, r1
	bne	.LBB0_19
	b	.LBB0_16
.LBB0_16:                               @ %if.end25
	mov	r7, #6
	mov	r0, r6
	cmp	r8, #0
	@APP
	svc	#0
	@NO_APP
	beq	.LBB0_23
	b	.LBB0_17
.LBB0_17:                               @ %cond.true
	add	r1, sp, #5
	mov	r0, r8
	bl	strcpy
	b	.LBB0_24
.LBB0_18:                               @ %if.then
	bl	__errno_location
	mov	r1, #22
	mov	r4, #0
	str	r1, [r0]
	b	.LBB0_22
.LBB0_19:                               @ %if.then20
	cmp	r0, #0
	bne	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %if.then22
	bl	__errno_location
	mov	r1, #40
	str	r1, [r0]
	b	.LBB0_21
.LBB0_21:                               @ %err
	mov	r7, #6
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_22
.LBB0_22:                               @ %cleanup
	mov	r0, r4
	add	sp, sp, #240
	add	sp, sp, #4096
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.LBB0_23:                               @ %cond.false
	add	r0, sp, #5
	bl	strdup
	b	.LBB0_24
.LBB0_24:                               @ %cleanup
	mov	r4, r0
	b	.LBB0_22
.Ltmp0:
	.size	realpath, .Ltmp0-realpath
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
