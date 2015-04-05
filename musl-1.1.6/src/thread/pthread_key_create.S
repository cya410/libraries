.section pthread_key_create_text
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
	.file	"src/thread/pthread_key_create.bc"
	.globl	__pthread_key_create
	.align	2
	.type	__pthread_key_create,%function
.section bb0_0
__pthread_key_create:                   @ @__pthread_key_create
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
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, .LCPI0_4
	b	.LBB0_3
.LCPI0_4:
	.long	__libc
.section bb0_3
.LBB0_3:                                @ %entry
	add	r2, sp, #4
	mov	r3, #127
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	@APP
	bl	__a_gettp
	mov	r7, r0
	@NO_APP
	ldr	r0, [r7, #-96]
	cmp	r0, #0
	ldreq	r0, .LCPI0_5
	streq	r0, [r7, #-96]
	b	.LBB0_5
.LCPI0_5:
	.long	__pthread_tsd_main
.section bb0_5
.LBB0_5:                                @ %if.end4
	ldr	r8, .LCPI0_7
	ldr	r4, .LCPI0_6
	and	r7, r3, r2, lsr #4
	cmp	r1, #0
	movne	r4, r1
	mov	r6, r7
	b	.LBB0_6
.LCPI0_6:
	.long	nodtor
.LCPI0_7:
	.long	keys
.section bb0_6
.LBB0_6:                                @ %do.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_7 Depth 2
	add	r5, r8, r6, lsl #2
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.cond.i.i
                                        @   Parent Loop BB0_6 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, #0
	mov	r1, r4
	mov	r2, r5
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end.i.i
                                        @   in Loop: Header=BB0_7 Depth=2
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %do.cond
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r0, r6, #1
	and	r6, r0, #127
	mov	r0, #11
	cmp	r6, r7
	bne	.LBB0_6
	b	.LBB0_11
.section bb0_10
.LBB0_10:                               @ %if.then10
	ldr	r0, [sp, #4]
	str	r6, [r0]
	mov	r0, #0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__pthread_key_create, .Ltmp0-__pthread_key_create
	.cantunwind
	.fnend

	.align	2
	.type	nodtor,%function
.section bb1_0
nodtor:                                 @ @nodtor
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	pc, lr
.Ltmp1:
	.size	nodtor, .Ltmp1-nodtor
	.cantunwind
	.fnend

	.globl	__pthread_key_delete
	.align	2
	.type	__pthread_key_delete,%function
.section bb2_0
__pthread_key_delete:                   @ @__pthread_key_delete
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	ldr	r1, .LCPI2_0
	mov	r2, #0
	str	r2, [r1, r0, lsl #2]
	mov	r0, #0
	mov	pc, lr
.LCPI2_0:
	.long	keys
.Ltmp2:
	.size	__pthread_key_delete, .Ltmp2-__pthread_key_delete
	.cantunwind
	.fnend

	.globl	__pthread_tsd_run_dtors
	.align	2
	.type	__pthread_tsd_run_dtors,%function
.section bb3_0
__pthread_tsd_run_dtors:                @ @__pthread_tsd_run_dtors
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	@APP
	bl	__a_gettp
	mov	r4, r0
	@NO_APP
	ldr	r0, [r4, #-152]
	cmp	r0, #0
	beq	.LBB3_10
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %for.cond1.preheader.lr.ph
	ldr	r6, .LCPI3_0
	mov	r8, #0
	mov	r7, #0
	b	.LBB3_4
.LCPI3_0:
	.long	keys
.section bb3_4
.LBB3_4:                                @ %for.cond1.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_5 Depth 2
	mov	r5, #0
	mov	r1, #0
	b	.LBB3_5
.section bb3_5
.LBB3_5:                                @ %for.body3
                                        @   Parent Loop BB3_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r4, #-96]
	ldr	r0, [r2, r5, lsl #2]
	cmp	r0, #0
	ldrne	r3, [r6, r5, lsl #2]
	cmpne	r3, #0
	beq	.LBB3_7
	b	.LBB3_6
.section bb3_6
.LBB3_6:                                @ %if.then
                                        @   in Loop: Header=BB3_5 Depth=2
	str	r8, [r2, r5, lsl #2]
	ldr	r1, [r6, r5, lsl #2]
	mov	lr, pc
	mov	pc, r1
	mov	r1, #1
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %for.inc
                                        @   in Loop: Header=BB3_5 Depth=2
	add	r5, r5, #1
	cmp	r5, #128
	bne	.LBB3_5
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %for.inc12
                                        @   in Loop: Header=BB3_4 Depth=1
	add	r7, r7, #1
	cmp	r7, #3
	bgt	.LBB3_10
	b	.LBB3_9
.section bb3_9
.LBB3_9:                                @ %for.inc12
                                        @   in Loop: Header=BB3_4 Depth=1
	cmp	r1, #0
	bne	.LBB3_4
	b	.LBB3_10
.section bb3_10
.LBB3_10:                               @ %for.end14
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp3:
	.size	__pthread_tsd_run_dtors, .Ltmp3-__pthread_tsd_run_dtors
	.cantunwind
	.fnend

	.type	__pthread_tsd_size,%object @ @__pthread_tsd_size
	.data
	.globl	__pthread_tsd_size
	.align	2
__pthread_tsd_size:
	.long	512                     @ 0x200
	.size	__pthread_tsd_size, 4

	.type	__pthread_tsd_main,%object @ @__pthread_tsd_main
	.bss
	.globl	__pthread_tsd_main
	.align	2
__pthread_tsd_main:
	.zero	512
	.size	__pthread_tsd_main, 512

	.hidden	__libc
	.type	keys,%object            @ @keys
	.local	keys
	.comm	keys,512,4
	.hidden	__a_cas

	.weak	pthread_key_delete
pthread_key_delete = __pthread_key_delete
	.weak	pthread_key_create
pthread_key_create = __pthread_key_create
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
