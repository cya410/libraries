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
	.file	"src/mman/shm_open.bc"
	.globl	__shm_mapname
	.align	2
	.type	__shm_mapname,%function
__shm_mapname:                          @ @__shm_mapname
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r1
	sub	r5, r0, #1
	b	.LBB0_2
.LBB0_2:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r5, #1]!
	cmp	r0, #47
	beq	.LBB0_2
	b	.LBB0_3
.LBB0_3:                                @ %while.end
	mov	r0, r5
	mov	r1, #47
	bl	__strchrnul
	cmp	r0, r5
	beq	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                @ %while.end
	ldrb	r1, [r0]
	cmp	r1, #0
	bne	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %lor.lhs.false5
	sub	r6, r0, r5
	cmp	r6, #2
	bgt	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                @ %land.lhs.true
	ldrb	r1, [r5]
	cmp	r1, #46
	ldrbeq	r0, [r0, #-1]
	cmpeq	r0, #46
	bne	.LBB0_12
	b	.LBB0_7
.LBB0_7:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	b	.LBB0_8
.LBB0_8:                                @ %return
	str	r1, [r0]
	mov	r4, #0
	b	.LBB0_9
.LBB0_9:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.LBB0_10:                               @ %if.end
	cmp	r6, #256
	blt	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               @ %if.then22
	bl	__errno_location
	mov	r1, #36
	b	.LBB0_8
.LBB0_12:                               @ %if.end24
	ldr	r1, .LCPI0_0
	mov	r0, r4
	mov	r2, #9
	bl	memcpy
	b	.LBB0_13
.LCPI0_0:
	.long	.L.str
.LBB0_13:                               @ %if.end24
	add	r0, r4, #9
	add	r2, r6, #1
	mov	r1, r5
	bl	memcpy
	b	.LBB0_9
.Ltmp0:
	.size	__shm_mapname, .Ltmp0-__shm_mapname
	.cantunwind
	.fnend

	.globl	shm_open
	.align	2
	.type	shm_open,%function
shm_open:                               @ @shm_open
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#272
	sub	sp, sp, #272
	mov	r5, r1
	add	r1, sp, #3
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r4, r2
	bl	__shm_mapname
	mov	r6, r0
	mvn	r7, #0
	cmp	r6, #0
	beq	.LBB1_7
	b	.LBB1_4
.LBB1_4:                                @ %if.end
	add	r1, sp, #268
	mov	r0, #1
	bl	pthread_setcancelstate
	orr	r0, r5, #34816
	b	.LBB1_5
.LBB1_5:                                @ %if.end
	mov	r2, r4
	orr	r1, r0, #524288
	mov	r0, r6
	bl	open
	b	.LBB1_6
.LBB1_6:                                @ %if.end
	mov	r7, r0
	ldr	r0, [sp, #268]
	mov	r1, #0
	bl	pthread_setcancelstate
	b	.LBB1_7
.LBB1_7:                                @ %cleanup
	mov	r0, r7
	add	sp, sp, #272
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	shm_open, .Ltmp1-shm_open
	.cantunwind
	.fnend

	.globl	shm_unlink
	.align	2
	.type	shm_unlink,%function
shm_unlink:                             @ @shm_unlink
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#272
	sub	sp, sp, #272
	add	r1, sp, #7
	bl	__shm_mapname
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	beq	.LBB2_4
	b	.LBB2_3
.LBB2_3:                                @ %if.end
	mov	r0, r1
	bl	unlink
	b	.LBB2_4
.LBB2_4:                                @ %cleanup
	add	sp, sp, #272
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	shm_unlink, .Ltmp2-shm_unlink
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/dev/shm/"
	.size	.L.str, 10


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
