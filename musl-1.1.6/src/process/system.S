.section system_text
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
	.file	"src/process/system.bc"
	.globl	system
	.align	2
	.type	system,%function
.section bb0_0
system:                                 @ @system
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	.pad	#1024
	sub	sp, sp, #1024
	add	r5, sp, #648
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r1, #140
	mov	r2, #0
	mov	r0, r5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	bl	__aeabi_memset
	mov	r6, #1
	mov	r0, #32512
	str	r6, [sp, #648]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	str	r0, [sp, #364]
	bl	pthread_testcancel
	cmp	r4, #0
	beq	.LBB0_32
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	add	r2, sp, #508
	mov	r0, #2
	mov	r1, r5
	bl	sigaction
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	add	r2, sp, #368
	mov	r0, #3
	mov	r1, r5
	bl	sigaction
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	add	r5, r5, #4
	mov	r1, #17
	mov	r0, r5
	bl	sigaddset
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end
	add	r2, sp, #916
	mov	r0, #0
	mov	r1, r5
	bl	sigprocmask
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end
	add	r0, sp, #788
	bl	sigemptyset
	ldr	r0, [sp, #508]
	cmp	r0, #1
	beq	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then6
	add	r0, sp, #788
	mov	r1, #2
	bl	sigaddset
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end8
	ldr	r0, [sp, #368]
	cmp	r0, #1
	beq	.LBB0_14
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then12
	add	r0, sp, #788
	mov	r1, #3
	bl	sigaddset
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end14
	add	r5, sp, #28
	mov	r0, r5
	bl	posix_spawnattr_init
	add	r1, sp, #916
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end14
	mov	r0, r5
	bl	posix_spawnattr_setsigmask
	add	r1, sp, #788
	mov	r0, r5
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end14
	bl	posix_spawnattr_setsigdefault
	mov	r0, r5
	mov	r1, #12
	bl	posix_spawnattr_setflags
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end14
	ldr	r0, .LCPI0_4
	add	r1, sp, #12
	add	r6, sp, #1024
	mov	r2, #0
	b	.LBB0_18
.LCPI0_4:
	.long	.L.str1
.section bb0_18
.LBB0_18:                               @ %if.end14
	mov	r3, r5
	str	r1, [sp]
	ldr	r1, .LCPI0_7
	str	r0, [sp, #12]
	b	.LBB0_19
.LCPI0_7:
	.long	.L.str
.section bb0_19
.LBB0_19:                               @ %if.end14
	ldr	r0, .LCPI0_5
	str	r0, [sp, #16]
	mov	r0, #0
	str	r4, [sp, #20]
	b	.LBB0_20
.LCPI0_5:
	.long	.L.str2
.section bb0_20
.LBB0_20:                               @ %if.end14
	str	r0, [sp, #24]
	ldr	r0, .LCPI0_6
	ldr	r0, [r0]
	str	r0, [sp, #4]
	b	.LBB0_21
.LCPI0_6:
	.long	__environ
.section bb0_21
.LBB0_21:                               @ %if.end14
	add	r0, r6, #20
	bl	posix_spawn
	mov	r4, r0
	mov	r0, r5
	bl	posix_spawnattr_destroy
	cmp	r4, #0
	beq	.LBB0_25
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then34
	add	r1, sp, #508
	mov	r0, #2
	mov	r2, #0
	bl	sigaction
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then34
	add	r1, sp, #368
	mov	r0, #3
	mov	r2, #0
	bl	sigaction
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.then34
	add	r1, sp, #916
	mov	r0, #2
	mov	r2, #0
	bl	sigprocmask
	bl	__errno_location
	str	r4, [r0]
	b	.LBB0_31
.section bb0_25
.LBB0_25:
	add	r4, sp, #364
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #1044]
	mov	r1, r4
	mov	r2, #0
	bl	waitpid
	cmp	r0, #0
	bge	.LBB0_28
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %land.rhs
                                        @   in Loop: Header=BB0_26 Depth=1
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #4
	beq	.LBB0_26
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end29
	add	r1, sp, #508
	mov	r0, #2
	mov	r2, #0
	bl	sigaction
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end29
	add	r1, sp, #368
	mov	r0, #3
	mov	r2, #0
	bl	sigaction
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end29
	add	r1, sp, #916
	mov	r0, #2
	mov	r2, #0
	bl	sigprocmask
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end36
	ldr	r6, [sp, #364]
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %cleanup
	mov	r0, r6
	add	sp, sp, #24
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	system, .Ltmp0-system
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


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
