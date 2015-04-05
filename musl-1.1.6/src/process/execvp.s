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
	.file	"src/process/execvp.bc"
	.globl	__execvpe
	.align	2
	.type	__execvpe,%function
__execvpe:                              @ @__execvpe
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.setfp	r11, sp, #28
	add	r11, sp, #28
	b	.LBB0_3
.LBB0_3:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	mov	r6, r0
	ldr	r0, .LCPI0_2
	b	.LBB0_4
.LCPI0_2:
	.long	.L.str
.LBB0_4:                                @ %entry
	mov	r10, r2
	mov	r7, r1
	bl	getenv
	mov	r5, r0
	b	.LBB0_5
.LBB0_5:                                @ %entry
	bl	__errno_location
	mov	r1, #2
	str	r0, [r11, #-44]         @ 4-byte Spill
	str	r1, [r0]
	ldrb	r0, [r6]
	cmp	r0, #0
	beq	.LBB0_26
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	r0, r6
	mov	r1, #47
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then4
	mov	r0, r6
	mov	r1, r7
	mov	r2, r10
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	execve
.LBB0_8:                                @ %if.end6
	ldr	r4, .LCPI0_3
	cmp	r5, #0
	mov	r0, r6
	mov	r1, #256
	b	.LBB0_9
.LCPI0_3:
	.long	.L.str1
.LBB0_9:                                @ %if.end6
	movne	r4, r5
	bl	strnlen
	mov	r5, r0
	cmp	r5, #256
	blo	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %if.then11
	ldr	r1, [r11, #-44]         @ 4-byte Reload
	mov	r0, #36
	str	r0, [r1]
	b	.LBB0_26
.LBB0_11:                               @ %if.end13
	mov	r1, #255
	mov	r0, r4
	str	r6, [r11, #-48]         @ 4-byte Spill
	mov	r6, r7
	b	.LBB0_12
.LBB0_12:                               @ %if.end13
	orr	r1, r1, #3840
	bl	strnlen
	add	r0, r0, #1
	add	r1, r5, #1
	b	.LBB0_13
.LBB0_13:                               @ %if.end13
	str	r0, [r11, #-36]         @ 4-byte Spill
	add	r0, r1, r0
	str	r1, [r11, #-52]         @ 4-byte Spill
	add	r0, r0, #7
	bic	r0, r0, #7
	str	r0, [r11, #-40]         @ 4-byte Spill
	b	.LBB0_15
.LBB0_14:                               @ %cleanup.thread90
                                        @   in Loop: Header=BB0_15 Depth=1
	add	r4, r5, #1
	mov	sp, r7
	b	.LBB0_15
.LBB0_15:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-40]         @ 4-byte Reload
	mov	r7, sp
	sub	r8, sp, r0
	mov	sp, r8
	b	.LBB0_16
.LBB0_16:                               @ %for.cond
                                        @   in Loop: Header=BB0_15 Depth=1
	mov	r0, r4
	mov	r1, #58
	bl	strchr
	mov	r5, r0
	cmp	r5, #0
	bne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               @ %if.then19
                                        @   in Loop: Header=BB0_15 Depth=1
	mov	r0, r4
	bl	strlen
	add	r5, r4, r0
	b	.LBB0_18
.LBB0_18:                               @ %if.end21
                                        @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [r11, #-36]         @ 4-byte Reload
	sub	r9, r5, r4
	cmp	r9, r0
	bhs	.LBB0_24
	b	.LBB0_19
.LBB0_19:                               @ %if.end27
                                        @   in Loop: Header=BB0_15 Depth=1
	mov	r0, r8
	mov	r1, r4
	mov	r2, r9
	bl	memcpy
	b	.LBB0_20
.LBB0_20:                               @ %if.end27
                                        @   in Loop: Header=BB0_15 Depth=1
	ldr	r1, [r11, #-48]         @ 4-byte Reload
	ldr	r2, [r11, #-52]         @ 4-byte Reload
	mov	r0, #47
	cmp	r5, r4
	b	.LBB0_21
.LBB0_21:                               @ %if.end27
                                        @   in Loop: Header=BB0_15 Depth=1
	strb	r0, [r8, r9]
	addhi	r9, r9, #1
	add	r0, r8, r9
	bl	memcpy
	b	.LBB0_22
.LBB0_22:                               @ %if.end27
                                        @   in Loop: Header=BB0_15 Depth=1
	mov	r0, r8
	mov	r1, r6
	mov	r2, r10
	bl	execve
	b	.LBB0_23
.LBB0_23:                               @ %if.end27
                                        @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [r11, #-44]         @ 4-byte Reload
	ldr	r0, [r0]
	cmp	r0, #2
	bne	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               @ %if.end48
                                        @   in Loop: Header=BB0_15 Depth=1
	ldrb	r0, [r5]
	cmp	r0, #0
	bne	.LBB0_14
	b	.LBB0_25
.LBB0_25:                               @ %return.loopexit
	mov	sp, r7
	b	.LBB0_26
.LBB0_26:                               @ %return
	mvn	r0, #0
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__execvpe, .Ltmp0-__execvpe
	.cantunwind
	.fnend

	.globl	execvp
	.align	2
	.type	execvp,%function
execvp:                                 @ @execvp
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r2, .LCPI1_0
	ldr	r2, [r2]
	b	__execvpe
.LCPI1_0:
	.long	__environ
.Ltmp1:
	.size	execvp, .Ltmp1-execvp
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"PATH"
	.size	.L.str, 5

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"/usr/local/bin:/bin:/usr/bin"
	.size	.L.str1, 29


	.weak	execvpe
execvpe = __execvpe
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
