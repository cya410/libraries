.section popen_text
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
	.file	"src/stdio/popen.bc"
	.globl	popen
	.align	2
	.type	popen,%function
.section bb0_0
popen:                                  @ @popen
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#116
	sub	sp, sp, #116
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r6, r1
	mov	r4, r0
	mov	r5, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r9, #0
	ldrb	r0, [r6]
	cmp	r0, #114
	beq	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	cmp	r0, #119
	bne	.LBB0_23
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then5
	mov	r9, #1
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end7
	add	r10, sp, #108
	mov	r1, #524288
	mov	r0, r10
	bl	pipe2
	cmp	r0, #0
	bne	.LBB0_28
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end10
	ldr	r0, [r10, r9, lsl #2]
	mov	r1, r6
	bl	fdopen
	mov	r8, r0
	cmp	r8, #0
	beq	.LBB0_24
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end18
	ldr	r0, [r8, #76]
	mov	r5, #0
	cmp	r0, #0
	blt	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %cond.true
	mov	r0, r8
	bl	__lockfile
	mov	r5, r0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %cond.end
	eor	r11, r9, #1
	ldr	r0, [r10, r11, lsl #2]
	cmp	r0, r11
	bne	.LBB0_15
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then26
	mov	r1, #6
	mov	r0, r11
	mov	r2, #0
	orr	r1, r1, #1024
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then26
	bl	fcntl
	mov	r1, r0
	cmp	r1, #0
	blt	.LBB0_25
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end33
	ldr	r0, [r10, r11, lsl #2]
	mov	r7, #6
	@APP
	svc	#0
	@NO_APP
	str	r1, [r10, r11, lsl #2]
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end39
	add	r0, sp, #28
	str	r5, [sp, #8]            @ 4-byte Spill
	bl	posix_spawn_file_actions_init
	mov	r5, #12
	cmp	r0, #0
	bne	.LBB0_26
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then42
	ldr	r1, [r10, r11, lsl #2]
	add	r0, sp, #28
	mov	r2, r11
	bl	posix_spawn_file_actions_adddup2
	mov	r5, #12
	cmp	r0, #0
	bne	.LBB0_22
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then48
	ldr	r0, .LCPI0_4
	add	r1, sp, #12
	add	r2, sp, #28
	mov	r3, #0
	b	.LBB0_18
.LCPI0_4:
	.long	.L.str1
.section bb0_18
.LBB0_18:                               @ %if.then48
	str	r1, [sp]
	ldr	r1, .LCPI0_7
	str	r0, [sp, #12]
	ldr	r0, .LCPI0_5
	b	.LBB0_19
.LCPI0_5:
	.long	.L.str2
.LCPI0_7:
	.long	.L.str
.section bb0_19
.LBB0_19:                               @ %if.then48
	str	r0, [sp, #16]
	mov	r0, #0
	str	r4, [sp, #20]
	str	r0, [sp, #24]
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then48
	ldr	r0, .LCPI0_6
	ldr	r0, [r0]
	str	r0, [sp, #4]
	add	r0, sp, #104
	b	.LBB0_21
.LCPI0_6:
	.long	__environ
.section bb0_21
.LBB0_21:                               @ %if.then48
	bl	posix_spawn
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB0_29
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end70
	add	r0, sp, #28
	bl	posix_spawn_file_actions_destroy
	b	.LBB0_26
.section bb0_23
.LBB0_23:                               @ %if.else6
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_27
.section bb0_24
.LBB0_24:                               @ %if.then13
	ldr	r0, [sp, #108]
	mov	r7, #6
	@APP
	svc	#0
	@NO_APP
	mov	r7, #6
	ldr	r0, [sp, #112]
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_28
.section bb0_25
.LBB0_25:                               @ %if.then31
	bl	__errno_location
	ldr	r5, [r0]
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %fail
	mov	r0, r8
	bl	fclose
	ldr	r0, [r10, r11, lsl #2]
	mov	r7, #6
	@APP
	svc	#0
	@NO_APP
	bl	__errno_location
	str	r5, [r0]
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %cleanup
	mov	r5, #0
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %cleanup
	mov	r0, r5
	add	sp, sp, #116
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_29
.LBB0_29:                               @ %if.then54
	add	r0, sp, #28
	bl	posix_spawn_file_actions_destroy
	ldr	r0, [sp, #104]
	mov	r1, #101
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.then54
	str	r0, [r8, #64]
	mov	r0, r6
	bl	strchr
	cmp	r0, #0
	bne	.LBB0_32
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.then58
	ldr	r0, [r10, r9, lsl #2]
	mov	r1, #2
	mov	r2, #0
	bl	fcntl
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end61
	ldr	r0, [r10, r11, lsl #2]
	mov	r7, #6
	@APP
	svc	#0
	@NO_APP
	ldr	r0, [sp, #8]            @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_34
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.then66
	mov	r0, r8
	bl	__unlockfile
	b	.LBB0_34
.section bb0_34
.LBB0_34:
	mov	r5, r8
	b	.LBB0_28
.Ltmp0:
	.size	popen, .Ltmp0-popen
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/bin/sh"
	.size	.L.str, 8

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"sh"
	.size	.L.str1, 3

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"-c"
	.size	.L.str2, 3

	.hidden	__lockfile
	.hidden	__unlockfile

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
