.section forkpty_text
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
	.file	"src/misc/forkpty.bc"
	.globl	forkpty
	.align	2
	.type	forkpty,%function
.section bb0_0
forkpty:                                @ @forkpty
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#288
	sub	sp, sp, #288
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r5, r2
	mov	r4, r0
	mov	r0, #0
	mov	r2, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r3, [sp]
	add	r1, sp, #280
	str	r0, [sp, #276]
	add	r0, sp, #284
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r3, r5
	bl	openpty
	mvn	r5, #0
	cmp	r0, #0
	blt	.LBB0_19
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	add	r5, sp, #136
	mov	r0, r5
	bl	sigfillset
	add	r2, sp, #8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	mov	r0, #0
	mov	r1, r5
	bl	pthread_sigmask
	add	r1, sp, #264
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	mov	r0, #1
	bl	pthread_setcancelstate
	add	r0, sp, #268
	mov	r1, #524288
	bl	pipe2
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %out.thread
	ldr	r0, [sp, #280]
	bl	close
	ldr	r0, [sp, #284]
	mvn	r5, #0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.else
	bl	close
	b	.LBB0_17
.section bb0_10
.LBB0_10:                               @ %if.end7
	bl	fork
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB0_20
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end24
	ldr	r0, [sp, #280]
	bl	close
	ldr	r0, [sp, #272]
	bl	close
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end24
	ldr	r0, [sp, #268]
	add	r1, sp, #276
	mov	r2, #4
	bl	read
	cmp	r0, #1
	blt	.LBB0_15
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then31
	add	r1, sp, #4
	mov	r0, r5
	mov	r2, #0
	bl	waitpid
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then31
	ldr	r5, [sp, #276]
	bl	__errno_location
	str	r5, [r0]
	mvn	r5, #0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %out
	ldr	r0, [sp, #268]
	bl	close
	ldr	r0, [sp, #284]
	cmp	r5, #1
	blt	.LBB0_9
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then38
	str	r0, [r4]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end40
	ldr	r0, [sp, #264]
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %cleanup
	mov	r1, #0
	bl	pthread_setcancelstate
	add	r1, sp, #8
	mov	r0, #2
	mov	r2, #0
	bl	pthread_sigmask
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %cleanup
	mov	r0, r5
	add	sp, sp, #288
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.section bb0_20
.LBB0_20:                               @ %if.then10
	ldr	r0, [sp, #284]
	bl	close
	ldr	r0, [sp, #268]
	bl	close
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then10
	ldr	r0, [sp, #280]
	bl	login_tty
	ldr	r4, [sp, #272]
	cmp	r0, #0
	bne	.LBB0_23
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end19
	mov	r0, r4
	bl	close
	ldr	r0, [sp, #264]
	mov	r5, #0
	b	.LBB0_18
.section bb0_23
.LBB0_23:                               @ %if.then15
	bl	__errno_location
	mov	r1, r0
	mov	r0, r4
	mov	r2, #4
	bl	write
	mov	r0, #127
	bl	_exit
.Ltmp0:
	.size	forkpty, .Ltmp0-forkpty
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
