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
	.file	"src/stat/fchmodat.bc"
	.globl	fchmodat
	.align	2
	.type	fchmodat,%function
fchmodat:                               @ @fchmodat
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#136
	sub	sp, sp, #136
	mov	r4, r2
	mov	r5, r0
	cmp	r3, #256
	bne	.LBB0_14
	b	.LBB0_3
.LBB0_3:                                @ %if.end4
	mov	r7, #71
	add	r2, sp, #32
	mov	r0, r5
	mov	r3, #256
	b	.LBB0_4
.LBB0_4:                                @ %if.end4
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	bne	.LBB0_20
	b	.LBB0_5
.LBB0_5:                                @ %if.end9
	ldr	r0, [sp, #48]
	and	r0, r0, #61440
	cmp	r0, #40960
	beq	.LBB0_19
	b	.LBB0_6
.LBB0_6:                                @ %if.end13
	mov	r7, #66
	mov	r2, #33024
	mov	r0, r5
	orr	r7, r7, #256
	b	.LBB0_7
.LBB0_7:                                @ %if.end13
	orr	r2, r2, #2097152
	@APP
	svc	#0
	@NO_APP
	mov	r5, r0
	cmp	r5, #0
	blt	.LBB0_18
	b	.LBB0_8
.LBB0_8:                                @ %if.end22
	add	r6, sp, #5
	mov	r1, r5
	mov	r0, r6
	bl	__procfdname
	b	.LBB0_9
.LBB0_9:                                @ %if.end22
	mov	r7, #71
	add	r2, sp, #32
	mvn	r0, #99
	mov	r1, r6
	b	.LBB0_10
.LBB0_10:                               @ %if.end22
	mov	r3, #0
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	mov	r1, r0
	cmp	r1, #0
	bne	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               @ %land.lhs.true
	ldr	r0, [sp, #48]
	mov	r1, #0
	and	r0, r0, #61440
	cmp	r0, #40960
	beq	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %if.then29
	mov	r7, #77
	add	r1, sp, #5
	mvn	r0, #99
	mov	r2, r4
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	mov	r1, r0
	b	.LBB0_13
.LBB0_13:                               @ %if.end32
	mov	r7, #6
	mov	r0, r5
	@APP
	svc	#0
	@NO_APP
	mov	r0, r1
	b	.LBB0_20
.LBB0_14:                               @ %entry
	cmp	r3, #0
	bne	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %if.then
	mov	r7, #77
	mov	r0, r5
	mov	r2, r4
	mov	r3, #0
	orr	r7, r7, #256
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_17
.LBB0_16:                               @ %if.then2
	mvn	r0, #21
	b	.LBB0_17
.LBB0_17:                               @ %if.then2
	add	sp, sp, #136
	pop	{r4, r5, r6, r7, r11, lr}
	b	__syscall_ret
.LBB0_18:                               @ %if.then16
	cmn	r5, #40
	bne	.LBB0_21
	b	.LBB0_19
.LBB0_19:                               @ %if.then11
	mvn	r0, #94
	b	.LBB0_20
.LBB0_20:                               @ %return
	bl	__syscall_ret
	add	sp, sp, #136
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.LBB0_21:                               @ %if.end20
	mov	r0, r5
	b	.LBB0_20
.Ltmp0:
	.size	fchmodat, .Ltmp0-fchmodat
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
