.section dynlink_text
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
	.file	"src/ldso/dynlink.bc"
	.globl	_dl_debug_state
	.align	2
	.type	_dl_debug_state,%function
.section bb0_0
_dl_debug_state:                        @ @_dl_debug_state
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	_dl_debug_state, .Ltmp0-_dl_debug_state
	.cantunwind
	.fnend

	.globl	__reset_tls
	.align	2
	.type	__reset_tls,%function
.section bb1_0
__reset_tls:                            @ @__reset_tls
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	ldr	r0, .LCPI1_0
	ldr	r4, [r0, #4]
	@APP
	bl	__a_gettp
	mov	r5, r0
	@NO_APP
	b	.LBB1_3
.LCPI1_0:
	.long	_MergedGlobals1
.section bb1_2
.LBB1_2:                                @ %for.inc
                                        @   in Loop: Header=BB1_3 Depth=1
	ldr	r4, [r4, #12]
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r4, #0
	beq	.LBB1_10
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %for.body
                                        @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r4, #116]
	cmp	r0, #0
	beq	.LBB1_2
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %lor.lhs.false
                                        @   in Loop: Header=BB1_3 Depth=1
	ldr	r1, [r5, #-180]
	ldr	r0, [r1, r0, lsl #2]
	cmp	r0, #0
	beq	.LBB1_2
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.end
                                        @   in Loop: Header=BB1_3 Depth=1
	ldr	r1, [r4, #100]
	ldr	r2, [r4, #104]
	bl	memcpy
	ldr	r0, [r4, #116]
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %if.end
                                        @   in Loop: Header=BB1_3 Depth=1
	ldr	r3, [r5, #-180]
	ldr	r1, [r4, #108]
	ldr	r2, [r4, #104]
	ldr	r0, [r3, r0, lsl #2]
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.end
                                        @   in Loop: Header=BB1_3 Depth=1
	add	r0, r0, r2
	sub	r2, r1, r2
	mov	r1, #0
	bl	memset
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %if.end
                                        @   in Loop: Header=BB1_3 Depth=1
	ldr	r1, [r5, #-180]
	ldr	r0, [r4, #116]
	ldr	r1, [r1]
	cmp	r0, r1
	bne	.LBB1_2
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %for.end
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__reset_tls, .Ltmp1-__reset_tls
	.cantunwind
	.fnend

	.globl	__copy_tls
	.align	2
	.type	__copy_tls,%function
.section bb2_0
__copy_tls:                             @ @__copy_tls
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	mov	r4, r0
	ldr	r0, .LCPI2_2
	ldr	r1, [r0, #8]
	str	r1, [r4]
	cmp	r1, #0
	beq	.LBB2_11
	b	.LBB2_3
.LCPI2_2:
	.long	_MergedGlobals1
.section bb2_3
.LBB2_3:                                @ %if.end
	mov	r2, #4
	mvn	r3, #191
	ldr	r6, [r0, #4]
	add	r1, r2, r1, lsl #2
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %if.end
	add	r2, r4, r1
	sub	r2, r3, r2
	ldr	r3, .LCPI2_3
	cmp	r6, #0
	b	.LBB2_5
.LCPI2_3:
	.long	_MergedGlobals
.section bb2_5
.LBB2_5:                                @ %if.end
	ldr	r3, [r3]
	sub	r3, r3, #1
	and	r2, r3, r2
	add	r5, r2, r1
	beq	.LBB2_10
	b	.LBB2_6
.section bb2_6
.LBB2_6:
	add	r7, r5, #192
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r6, #116]
	cmp	r1, #0
	beq	.LBB2_9
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %if.end10
                                        @   in Loop: Header=BB2_7 Depth=1
	ldr	r0, [r6, #120]
	add	r0, r7, r0
	add	r0, r4, r0
	str	r0, [r4, r1, lsl #2]
	ldr	r1, [r6, #100]
	ldr	r2, [r6, #104]
	bl	memcpy
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %for.inc
                                        @   in Loop: Header=BB2_7 Depth=1
	ldr	r6, [r6, #12]
	cmp	r6, #0
	bne	.LBB2_7
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %for.end
	add	r0, r4, r5
	add	r1, r4, r5
	str	r4, [r1, #4]
	b	.LBB2_12
.section bb2_11
.LBB2_11:                               @ %if.then
	str	r4, [r4, #8]
	add	r0, r4, #4
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	__copy_tls, .Ltmp2-__copy_tls
	.cantunwind
	.fnend

	.globl	__tls_get_new
	.align	2
	.type	__tls_get_new,%function
.section bb3_0
__tls_get_new:                          @ @__tls_get_new
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	.pad	#132
	sub	sp, sp, #132
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %entry
	mov	r8, r0
	add	r0, sp, #4
	bl	__block_all_sigs
	b	.LBB3_4
.section bb3_4
.LBB3_4:                                @ %entry
	@APP
	bl	__a_gettp
	mov	r9, r0
	@NO_APP
	ldr	r1, [r8]
	ldr	r0, [r9, #-180]
	ldr	r0, [r0]
	cmp	r1, r0
	bls	.LBB3_22
	b	.LBB3_5
.section bb3_5
.LBB3_5:
	ldr	r10, .LCPI3_0
	add	r0, r10, #4
	b	.LBB3_6
.LCPI3_0:
	.long	_MergedGlobals1
.section bb3_6
.LBB3_6:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0]
	ldr	r3, [r2, #116]
	add	r0, r2, #12
	cmp	r3, r1
	bne	.LBB3_6
	b	.LBB3_7
.section bb3_7
.LBB3_7:                                @ %if.then12
	ldr	r7, [r2, #132]
	add	r5, r2, #140
	lsl	r4, r1, #2
	b	.LBB3_8
.section bb3_8
.LBB3_8:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r5]
	mov	r2, r5
	add	r1, r6, #1
	mov	r0, r6
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB3_8
	b	.LBB3_9
.section bb3_9
.LBB3_9:                                @ %for.cond27.preheader
	ldr	r1, [r9, #-180]
	add	r0, r4, #4
	mov	r2, #4
	mul	r4, r6, r0
	b	.LBB3_10
.section bb3_10
.LBB3_10:                               @ %for.cond27.preheader
	add	r5, r7, r4, lsl #2
	ldr	r0, [r1]
	add	r2, r2, r0, lsl #2
	mov	r0, r5
	b	.LBB3_11
.section bb3_11
.LBB3_11:                               @ %for.cond27.preheader
	bl	memcpy
	ldr	r0, [r8]
	str	r0, [r7, r4, lsl #2]
	add	r0, r10, #4
	str	r5, [r9, #-180]
	b	.LBB3_13
.section bb3_12
.LBB3_12:                               @ %for.inc52
                                        @   in Loop: Header=BB3_13 Depth=1
	add	r0, r4, #12
	b	.LBB3_13
.section bb3_13
.LBB3_13:                               @ %for.cond27
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_16 Depth 2
	ldr	r4, [r0]
	ldr	r0, [r4, #116]
	cmp	r0, #0
	beq	.LBB3_12
	b	.LBB3_14
.section bb3_14
.LBB3_14:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB3_13 Depth=1
	ldr	r1, [r9, #-180]
	ldr	r0, [r1, r0, lsl #2]
	cmp	r0, #0
	bne	.LBB3_12
	b	.LBB3_15
.section bb3_15
.LBB3_15:                               @ %if.end34
                                        @   in Loop: Header=BB3_13 Depth=1
	ldr	r11, [r4, #112]
	ldr	r7, [r4, #108]
	ldr	r10, [r4, #136]
	add	r6, r4, #144
	b	.LBB3_16
.section bb3_16
.LBB3_16:                               @ %do.body.i97
                                        @   Parent Loop BB3_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r5, [r6]
	mov	r2, r6
	add	r1, r5, #1
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB3_16
	b	.LBB3_17
.section bb3_17
.LBB3_17:                               @ %a_fetch_add.exit98
                                        @   in Loop: Header=BB3_13 Depth=1
	ldr	r2, [r4, #100]
	ldr	r3, [r4, #112]
	add	r0, r11, r7
	ldr	r7, [r4, #116]
	b	.LBB3_18
.section bb3_18
.LBB3_18:                               @ %a_fetch_add.exit98
                                        @   in Loop: Header=BB3_13 Depth=1
	mla	r1, r5, r0, r10
	sub	r1, r2, r1
	sub	r2, r3, #1
	and	r1, r1, r2
	b	.LBB3_19
.section bb3_19
.LBB3_19:                               @ %a_fetch_add.exit98
                                        @   in Loop: Header=BB3_13 Depth=1
	mla	r6, r5, r0, r1
	ldr	r1, [r9, #-180]
	add	r0, r10, r6
	str	r0, [r1, r7, lsl #2]
	b	.LBB3_20
.section bb3_20
.LBB3_20:                               @ %a_fetch_add.exit98
                                        @   in Loop: Header=BB3_13 Depth=1
	ldr	r1, [r4, #100]
	ldr	r2, [r4, #104]
	bl	memcpy
	ldr	r0, [r8]
	ldr	r1, [r4, #116]
	cmp	r1, r0
	bne	.LBB3_12
	b	.LBB3_21
.section bb3_21
.LBB3_21:                               @ %for.end54
	add	r0, sp, #4
	bl	__restore_sigs
	ldr	r0, [r8, #4]
	add	r0, r0, r6
	add	r0, r10, r0
	b	.LBB3_23
.section bb3_22
.LBB3_22:                               @ %if.then
	add	r0, sp, #4
	bl	__restore_sigs
	ldm	r8, {r0, r1}
	ldr	r2, [r9, #-180]
	ldr	r0, [r2, r0, lsl #2]
	add	r0, r0, r1
	b	.LBB3_23
.section bb3_23
.LBB3_23:                               @ %cleanup
	add	sp, sp, #132
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	__tls_get_new, .Ltmp3-__tls_get_new
	.cantunwind
	.fnend

	.globl	__dynlink
	.align	2
	.type	__dynlink,%function
.section bb4_0
__dynlink:                              @ @__dynlink
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	.pad	#172
	sub	sp, sp, #172
	b	.LBB4_3
.section bb4_3
.LBB4_3:                                @ %entry
	mov	r11, r1
	mov	r4, r0
	add	r0, sp, #20
	b	.LBB4_4
.section bb4_4
.LBB4_4:                                @ %entry
	mov	r1, #152
	mov	r2, #0
	mov	r10, #0
	bl	__aeabi_memset
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %entry
	add	r7, r4, #1
	mov	r1, r11
	ldr	r0, [r1, r7, lsl #2]!
	cmp	r0, #0
	beq	.LBB4_16
	b	.LBB4_6
.section bb4_6
.LBB4_6:
	ldr	r4, .LCPI4_23
	ldr	r6, .LCPI4_24
	mov	r2, #4
	mov	r5, r1
	str	r1, [sp, #16]           @ 4-byte Spill
	b	.LBB4_7
.LCPI4_23:
	.long	.L.str
.LCPI4_24:
	.long	.L.str1
.section bb4_7
.LBB4_7:                                @ %for.body.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_8 Depth 2
	add	r9, r2, r7, lsl #2
	add	r1, r7, #1
	b	.LBB4_8
.section bb4_8
.LBB4_8:                                @ %for.body
                                        @   Parent Loop BB4_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r8, r1
	mov	r1, r4
	mov	r2, #16
	bl	memcmp
	b	.LBB4_9
.section bb4_9
.LBB4_9:                                @ %for.body
                                        @   in Loop: Header=BB4_8 Depth=2
	mov	r1, r0
	ldr	r0, [r5]
	cmp	r1, #0
	beq	.LBB4_11
	b	.LBB4_10
.section bb4_10
.LBB4_10:                               @ %if.else
                                        @   in Loop: Header=BB4_8 Depth=2
	mov	r1, r6
	mov	r2, #11
	bl	memcmp
	cmp	r0, #0
	bne	.LBB4_12
	b	.LBB4_13
.section bb4_11
.LBB4_11:                               @ %if.then
                                        @   in Loop: Header=BB4_8 Depth=2
	ldr	r1, .LCPI4_25
	add	r0, r0, #16
	str	r0, [r1, #12]
	b	.LBB4_12
.LCPI4_25:
	.long	_MergedGlobals1
.section bb4_12
.LBB4_12:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB4_8 Depth=2
	ldr	r0, [r11, r8, lsl #2]
	add	r7, r7, #1
	add	r9, r9, #4
	add	r1, r8, #1
	add	r5, r11, r7, lsl #2
	cmp	r0, #0
	bne	.LBB4_8
	b	.LBB4_15
.section bb4_13
.LBB4_13:                               @ %if.then9
                                        @   in Loop: Header=BB4_7 Depth=1
	ldr	r2, [r5]
	ldr	r0, [r11, r8, lsl #2]
	add	r1, r11, r9
	mov	r7, r8
	b	.LBB4_14
.section bb4_14
.LBB4_14:                               @ %if.then9
                                        @   in Loop: Header=BB4_7 Depth=1
	mov	r5, r1
	add	r10, r2, #11
	mov	r2, #4
	cmp	r0, #0
	bne	.LBB4_7
	b	.LBB4_15
.section bb4_15
.LBB4_15:                               @ %for.end.loopexit2
	sub	r4, r8, #1
	b	.LBB4_17
.section bb4_16
.LBB4_16:
	str	r1, [sp, #16]           @ 4-byte Spill
	b	.LBB4_17
.section bb4_17
.LBB4_17:                               @ %for.end
	add	r0, r11, r4, lsl #2
	add	r1, sp, #20
	mov	r2, #38
	add	r5, r0, #8
	b	.LBB4_18
.section bb4_18
.LBB4_18:                               @ %for.end
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r5
	bl	decode_vec
	ldr	r0, [sp, #20]
	and	r0, r0, #30720
	cmp	r0, #30720
	bne	.LBB4_21
	b	.LBB4_19
.section bb4_19
.LBB4_19:                               @ %lor.lhs.false
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #68]
	cmp	r0, r1
	bne	.LBB4_21
	b	.LBB4_20
.section bb4_20
.LBB4_20:                               @ %lor.lhs.false19
	ldr	r0, [sp, #72]
	ldr	r1, [sp, #76]
	cmp	r0, r1
	ldreq	r0, [sp, #112]
	cmpeq	r0, #0
	beq	.LBB4_22
	b	.LBB4_21
.section bb4_21
.LBB4_21:                               @ %if.then26
	ldr	r0, .LCPI4_26
	mov	r10, #0
	mov	r1, #1
	str	r10, [r0, #12]
	ldr	r0, .LCPI4_28
	str	r1, [r0, #12]
	b	.LBB4_22
.LCPI4_26:
	.long	_MergedGlobals1
.LCPI4_28:
	.long	__libc
.section bb4_22
.LBB4_22:                               @ %if.end27
	ldr	r0, [sp, #44]
	ldr	r1, .LCPI4_29
	str	r0, [r1, #40]
	ldr	r0, [sp, #48]
	str	r5, [r1, #16]
	cmp	r0, #0
	bne	.LBB4_25
	b	.LBB4_23
.LCPI4_29:
	.long	__libc
.section bb4_23
.LBB4_23:                               @ %if.then31
	ldr	r0, .LCPI4_31
	ldr	r1, [sp, #32]
	and	r0, r1, r0
	mov	r1, #0
	b	.LBB4_24
.LCPI4_31:
	.long	4294963200              @ 0xfffff000
.section bb4_24
.LBB4_24:                               @ %if.then31
	str	r0, [sp, #48]
	str	r1, [sp, #40]
	str	r1, [sp, #36]
	str	r1, [sp, #32]
	b	.LBB4_25
.section bb4_25
.LBB4_25:                               @ %if.end38
	ldr	r9, .LCPI4_27
	ldr	r1, .LCPI4_32
	mov	r4, r9
	str	r0, [r4, #664]!
	b	.LBB4_26
.LCPI4_27:
	.long	_MergedGlobals1
.LCPI4_32:
	.long	.L.str2
.section bb4_26
.LBB4_26:                               @ %if.end38
	str	r1, [r4, #156]
	str	r1, [r4, #4]
	mov	r1, #1
	strb	r1, [r4, #80]
	b	.LBB4_27
.section bb4_27
.LBB4_27:                               @ %if.end38
	ldrh	r1, [r0, #44]
	str	r1, [r4, #24]
	ldr	r1, [r0, #28]
	add	r1, r1, r0
	b	.LBB4_28
.section bb4_28
.LBB4_28:                               @ %if.end38
	str	r1, [r4, #20]
	ldrh	r0, [r0, #42]
	str	r0, [r4, #28]
	mov	r0, r4
	b	.LBB4_29
.section bb4_29
.LBB4_29:                               @ %if.end38
	bl	kernel_mapped_dso
	mov	r0, r4
	bl	decode_dyn
	ldr	r0, [sp, #32]
	cmp	r0, #0
	beq	.LBB4_46
	b	.LBB4_30
.section bb4_30
.LBB4_30:                               @ %if.then47
	ldr	r3, [sp, #40]
	ldr	r7, [sp, #36]
	mov	r4, r5
	mov	r2, #0
	b	.LBB4_31
.section bb4_31
.LBB4_31:                               @ %if.then47
	mov	r1, #0
	str	r0, [r9, #524]
	str	r3, [r9, #528]
	str	r7, [r9, #532]
	cmp	r3, #0
	beq	.LBB4_39
	b	.LBB4_32
.section bb4_32
.LBB4_32:                               @ %for.body57.preheader
	add	r6, r0, #16
	mov	r2, #0
	mov	r1, #0
	b	.LBB4_33
.section bb4_33
.LBB4_33:                               @ %for.body57
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r6, #-16]
	cmp	r5, #3
	beq	.LBB4_36
	b	.LBB4_34
.section bb4_34
.LBB4_34:                               @ %for.body57
                                        @   in Loop: Header=BB4_33 Depth=1
	cmp	r5, #7
	bne	.LBB4_37
	b	.LBB4_35
.section bb4_35
.LBB4_35:                               @ %if.then73
                                        @   in Loop: Header=BB4_33 Depth=1
	ldr	r5, [r6]
	ldr	r2, [r6, #-8]
	str	r5, [r9, #608]
	ldr	r5, [r6, #4]
	str	r5, [r9, #612]
	ldr	r5, [r6, #12]
	str	r5, [r9, #616]
	b	.LBB4_38
.section bb4_36
.LBB4_36:                               @ %if.then67
                                        @   in Loop: Header=BB4_33 Depth=1
	ldr	r1, [r6, #-8]
	b	.LBB4_38
.section bb4_37
.LBB4_37:                               @ %for.body57
                                        @   in Loop: Header=BB4_33 Depth=1
	cmp	r5, #6
	ldreq	r5, [r6, #-8]
	subeq	r5, r0, r5
	streq	r5, [r9, #504]
	b	.LBB4_38
.section bb4_38
.LBB4_38:                               @ %for.inc78
                                        @   in Loop: Header=BB4_33 Depth=1
	add	r6, r6, r7
	subs	r3, r3, #1
	bne	.LBB4_33
	b	.LBB4_39
.section bb4_39
.LBB4_39:                               @ %for.end81
	ldr	r0, [r9, #612]
	cmp	r0, #0
	ldrne	r0, [r9, #504]
	addne	r0, r0, r2
	b	.LBB4_40
.section bb4_40
.LBB4_40:                               @ %for.end81
	strne	r0, [r9, #604]
	cmp	r1, #0
	ldrne	r0, [r9, #504]
	addne	r0, r0, r1
	b	.LBB4_41
.section bb4_41
.LBB4_41:                               @ %for.end81
	strne	r0, [r9, #668]
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bge	.LBB4_44
	b	.LBB4_42
.section bb4_42
.LBB4_42:                               @ %land.lhs.true
	ldr	r0, [sp, #144]
	ldr	r1, .LCPI4_33
	mov	r2, #6
	bl	strncmp
	cmp	r0, #0
	beq	.LBB4_44
	b	.LBB4_43
.LCPI4_33:
	.long	.L.str3
.section bb4_43
.LBB4_43:                               @ %if.then101
	ldr	r0, [sp, #144]
	b	.LBB4_45
.section bb4_44
.LBB4_44:                               @ %if.else104
	ldr	r0, [r11]
	b	.LBB4_45
.section bb4_45
.LBB4_45:                               @ %if.end107
	str	r0, [r9, #508]
	add	r0, r9, #504
	bl	kernel_mapped_dso
	b	.LBB4_82
.section bb4_46
.LBB4_46:                               @ %if.else108
	ldr	r7, [r11]
	str	r5, [sp, #8]            @ 4-byte Spill
	mov	r0, r7
	bl	strlen
	cmp	r0, #3
	blo	.LBB4_48
	b	.LBB4_47
.section bb4_47
.LBB4_47:                               @ %land.lhs.true113
	ldr	r1, .LCPI4_34
	add	r0, r0, r7
	sub	r0, r0, #3
	bl	strcmp
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r9]
	b	.LBB4_48
.LCPI4_34:
	.long	.L.str4
.section bb4_48
.LBB4_48:                               @ %if.end119
	mvn	r4, #0
	str	r4, [r11]
	ldr	r6, [r11, #4]!
	cmp	r6, #0
	beq	.LBB4_142
	b	.LBB4_49
.section bb4_49
.LBB4_49:
	mov	r5, r11
	b	.LBB4_50
.section bb4_50
.LBB4_50:                               @ %land.lhs.true122
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r6]
	cmp	r0, #45
	ldrbeq	r0, [r6, #1]
	cmpeq	r0, #45
	bne	.LBB4_68
	b	.LBB4_51
.section bb4_51
.LBB4_51:                               @ %while.body
                                        @   in Loop: Header=BB4_50 Depth=1
	mov	r11, r5
	mov	r8, r6
	str	r4, [r11], #4
	ldrb	r0, [r8, #2]!
	cmp	r0, #0
	beq	.LBB4_69
	b	.LBB4_52
.section bb4_52
.LBB4_52:                               @ %if.else138
                                        @   in Loop: Header=BB4_50 Depth=1
	ldr	r1, .LCPI4_35
	mov	r0, r8
	mov	r2, #5
	bl	memcmp
	cmp	r0, #0
	beq	.LBB4_57
	b	.LBB4_53
.LCPI4_35:
	.long	.L.str5
.section bb4_53
.LBB4_53:                               @ %if.else142
                                        @   in Loop: Header=BB4_50 Depth=1
	ldr	r1, .LCPI4_36
	mov	r0, r8
	mov	r2, #12
	bl	memcmp
	cmp	r0, #0
	beq	.LBB4_58
	b	.LBB4_54
.LCPI4_36:
	.long	.L.str6
.section bb4_54
.LBB4_54:                               @ %if.else163
                                        @   in Loop: Header=BB4_50 Depth=1
	ldr	r1, .LCPI4_37
	mov	r0, r8
	mov	r2, #7
	bl	memcmp
	cmp	r0, #0
	bne	.LBB4_65
	b	.LBB4_55
.LCPI4_37:
	.long	.L.str7
.section bb4_55
.LBB4_55:                               @ %if.then166
                                        @   in Loop: Header=BB4_50 Depth=1
	ldrb	r0, [r6, #9]
	cmp	r0, #0
	bne	.LBB4_63
	b	.LBB4_56
.section bb4_56
.LBB4_56:                               @ %if.else177
                                        @   in Loop: Header=BB4_50 Depth=1
	ldr	r0, [r5, #4]
	cmp	r0, #0
	addne	r11, r5, #8
	movne	r10, r0
	b	.LBB4_66
.section bb4_57
.LBB4_57:                               @ %if.then141
                                        @   in Loop: Header=BB4_50 Depth=1
	mov	r0, #1
	strb	r0, [r9]
	b	.LBB4_66
.section bb4_58
.LBB4_58:                               @ %if.then145
                                        @   in Loop: Header=BB4_50 Depth=1
	ldrb	r0, [r6, #14]
	cmp	r0, #0
	bne	.LBB4_61
	b	.LBB4_59
.section bb4_59
.LBB4_59:                               @ %if.else156
                                        @   in Loop: Header=BB4_50 Depth=1
	ldr	r0, [r11]
	cmp	r0, #0
	beq	.LBB4_66
	b	.LBB4_60
.section bb4_60
.LBB4_60:                               @ %if.then158
                                        @   in Loop: Header=BB4_50 Depth=1
	str	r0, [r9, #12]
	add	r5, r5, #8
	b	.LBB4_67
.section bb4_61
.LBB4_61:                               @ %if.then145
                                        @   in Loop: Header=BB4_50 Depth=1
	cmp	r0, #61
	bne	.LBB4_65
	b	.LBB4_62
.section bb4_62
.LBB4_62:                               @ %if.then150
                                        @   in Loop: Header=BB4_50 Depth=1
	add	r0, r6, #15
	str	r0, [r9, #12]
	b	.LBB4_66
.section bb4_63
.LBB4_63:                               @ %if.then166
                                        @   in Loop: Header=BB4_50 Depth=1
	cmp	r0, #61
	bne	.LBB4_65
	b	.LBB4_64
.section bb4_64
.LBB4_64:                               @ %if.then171
                                        @   in Loop: Header=BB4_50 Depth=1
	add	r10, r6, #10
	b	.LBB4_66
.section bb4_65
.LBB4_65:                               @ %if.else184
                                        @   in Loop: Header=BB4_50 Depth=1
	mov	r0, #0
	str	r0, [r11]
	b	.LBB4_66
.section bb4_66
.LBB4_66:                               @ %if.end189
                                        @   in Loop: Header=BB4_50 Depth=1
	mov	r5, r11
	b	.LBB4_67
.section bb4_67
.LBB4_67:                               @ %if.end189
                                        @   in Loop: Header=BB4_50 Depth=1
	str	r4, [r5, #-4]
	ldr	r6, [r5]
	cmp	r6, #0
	bne	.LBB4_50
	b	.LBB4_142
.section bb4_68
.LBB4_68:
	mov	r11, r5
	b	.LBB4_70
.section bb4_69
.LBB4_69:                               @ %while.end
	ldr	r6, [r11]
	cmp	r6, #0
	beq	.LBB4_142
	b	.LBB4_70
.section bb4_70
.LBB4_70:                               @ %if.end197
	mov	r0, r6
	mov	r1, #0
	bl	open
	mov	r4, r0
	cmp	r4, #0
	blt	.LBB4_148
	b	.LBB4_71
.section bb4_71
.LBB4_71:                               @ %if.end207
	mov	r0, #1
	add	r1, r9, #504
	strb	r0, [r9, #1]
	mov	r0, r4
	b	.LBB4_72
.section bb4_72
.LBB4_72:                               @ %if.end207
	bl	map_library
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB4_150
	b	.LBB4_73
.section bb4_73
.LBB4_73:                               @ %if.end213
	mov	r0, #0
	strb	r0, [r9, #1]
	mov	r0, r4
	bl	close
	b	.LBB4_74
.section bb4_74
.LBB4_74:                               @ %if.end213
	str	r7, [r9, #668]
	ldr	r0, [r11]
	str	r0, [r9, #508]
	ldr	r1, [r6, #24]
	b	.LBB4_75
.section bb4_75
.LBB4_75:                               @ %if.end213
	ldr	r0, [r9, #504]
	add	r1, r0, r1
	str	r1, [sp, #56]
	ldrb	r1, [r9]
	cmp	r1, #1
	bne	.LBB4_81
	b	.LBB4_76
.section bb4_76
.LBB4_76:                               @ %for.cond223.preheader
	ldr	r1, [r9, #528]
	cmp	r1, #0
	beq	.LBB4_80
	b	.LBB4_77
.section bb4_77
.LBB4_77:                               @ %for.body227.lr.ph
	ldr	r2, [r9, #524]
	mov	r3, #0
	b	.LBB4_78
.section bb4_78
.LBB4_78:                               @ %for.body227
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2, r3, lsl #5]
	cmp	r6, #3
	addeq	r7, r2, r3, lsl #5
	add	r3, r3, #1
	b	.LBB4_79
.section bb4_79
.LBB4_79:                               @ %for.body227
                                        @   in Loop: Header=BB4_78 Depth=1
	ldreq	r7, [r7, #8]
	addeq	r7, r0, r7
	streq	r7, [r9, #668]
	cmp	r3, r1
	blo	.LBB4_78
	b	.LBB4_80
.section bb4_80
.LBB4_80:                               @ %for.end243
	ldr	r3, [r9, #664]
	ldr	r1, .LCPI4_38
	mov	r0, #1
	mov	r2, r7
	bl	dprintf
	b	.LBB4_81
.LCPI4_38:
	.long	.L.str13
.section bb4_81
.LBB4_81:                               @ %if.end248
	ldr	r4, [sp, #8]            @ 4-byte Reload
	b	.LBB4_82
.section bb4_82
.LBB4_82:                               @ %if.end248
	ldr	r0, [r9, #612]
	cmp	r0, #0
	beq	.LBB4_88
	b	.LBB4_83
.section bb4_83
.LBB4_83:                               @ %if.then251
	mov	r1, #1
	mov	r2, #0
	str	r1, [r9, #8]
	str	r1, [r9, #620]
	b	.LBB4_84
.section bb4_84
.LBB4_84:                               @ %if.then251
	str	r2, [r9, #624]
	ldr	r1, [r9, #604]
	ldr	r2, [r9, #616]
	add	r1, r0, r1
	b	.LBB4_85
.section bb4_85
.LBB4_85:                               @ %if.then251
	sub	r3, r2, #1
	rsb	r1, r1, #0
	and	r1, r3, r1
	add	r0, r1, r0
	b	.LBB4_86
.section bb4_86
.LBB4_86:                               @ %if.then251
	ldr	r1, .LCPI4_39
	str	r0, [r9, #16]
	rsb	r0, r2, #0
	ldr	r2, [r1]
	b	.LBB4_87
.LCPI4_39:
	.long	_MergedGlobals
.section bb4_87
.LBB4_87:                               @ %if.then251
	rsb	r2, r2, #0
	and	r0, r0, r2
	rsb	r0, r0, #0
	str	r0, [r1]
	b	.LBB4_88
.section bb4_88
.LBB4_88:                               @ %if.end266
	mov	r0, #1
	add	r7, r9, #504
	strb	r0, [r9, #584]
	mov	r0, r7
	b	.LBB4_89
.section bb4_89
.LBB4_89:                               @ %if.end266
	bl	decode_dyn
	ldr	r0, [r4]
	cmp	r0, #33
	beq	.LBB4_94
	b	.LBB4_90
.section bb4_90
.LBB4_90:                               @ %for.body.i.preheader
	ldr	r1, [sp, #12]           @ 4-byte Reload
	add	r1, r1, #16
	b	.LBB4_91
.section bb4_91
.LBB4_91:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, #0
	beq	.LBB4_104
	b	.LBB4_92
.section bb4_92
.LBB4_92:                               @ %for.inc.i
                                        @   in Loop: Header=BB4_91 Depth=1
	ldr	r0, [r1], #8
	cmp	r0, #33
	bne	.LBB4_91
	b	.LBB4_93
.section bb4_93
.LBB4_93:                               @ %if.then270.loopexit
	sub	r4, r1, #8
	b	.LBB4_94
.section bb4_94
.LBB4_94:                               @ %if.then270
	ldr	r0, [r4, #4]
	ldr	r1, [r0, #28]
	add	r2, r1, r0
	str	r2, [r9, #844]
	b	.LBB4_95
.section bb4_95
.LBB4_95:                               @ %if.then270
	ldrh	r3, [r0, #44]
	str	r3, [r9, #848]
	cmp	r3, #0
	ldrh	r1, [r0, #42]
	str	r1, [r9, #852]
	beq	.LBB4_101
	b	.LBB4_96
.section bb4_96
.LBB4_96:                               @ %for.body284.preheader
	add	r2, r2, #4
	rsb	r3, r3, #0
	b	.LBB4_97
.section bb4_97
.LBB4_97:                               @ %for.body284
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2, #-4]
	cmp	r6, #1
	bne	.LBB4_99
	b	.LBB4_98
.section bb4_98
.LBB4_98:                               @ %if.then294
                                        @   in Loop: Header=BB4_97 Depth=1
	ldr	r5, [r2, #4]
	ldr	r6, [r2]
	sub	r5, r0, r5
	add	r6, r5, r6
	str	r6, [r9, #824]
	b	.LBB4_100
.section bb4_99
.LBB4_99:                               @ %for.body284
                                        @   in Loop: Header=BB4_97 Depth=1
	cmp	r6, #2
	ldreq	r6, [r2]
	addeq	r6, r6, r0
	streq	r6, [r9, #832]
	b	.LBB4_100
.section bb4_100
.LBB4_100:                              @ %for.inc301
                                        @   in Loop: Header=BB4_97 Depth=1
	add	r2, r2, r1
	adds	r3, r3, #1
	bne	.LBB4_97
	b	.LBB4_101
.section bb4_101
.LBB4_101:                              @ %for.end306
	ldr	r0, .LCPI4_41
	add	r4, r9, #824
	str	r0, [r9, #828]
	ldr	r0, .LCPI4_43
	b	.LBB4_102
.LCPI4_41:
	.long	.L.str9
.LCPI4_43:
	.long	.L.str14
.section bb4_102
.LBB4_102:                              @ %for.end306
	str	r0, [r9, #980]
	mov	r0, #1
	strb	r0, [r9, #904]
	mov	r0, r4
	b	.LBB4_103
.section bb4_103
.LBB4_103:                              @ %for.end306
	bl	decode_dyn
	add	r0, r9, #664
	str	r0, [r9, #840]
	str	r4, [r9, #676]
	b	.LBB4_104
.section bb4_104
.LBB4_104:                              @ %if.end310
	add	r4, r9, #664
	str	r7, [r9, #20]
	str	r7, [r9, #4]
	mov	r0, r4
	b	.LBB4_105
.section bb4_105
.LBB4_105:                              @ %if.end310
	str	r4, [r9, #24]
	str	r4, [r9, #516]
	bl	reloc_all
	mov	r0, #0
	b	.LBB4_106
.section bb4_106
.LBB4_106:                              @ %if.end310
	str	r0, [r9, #516]
	mov	r0, r7
	bl	reclaim_gaps
	mov	r0, r4
	b	.LBB4_107
.section bb4_107
.LBB4_107:                              @ %if.end310
	bl	reclaim_gaps
	cmp	r10, #0
	ldrbne	r5, [r10]
	cmpne	r5, #0
	beq	.LBB4_121
	b	.LBB4_108
.section bb4_108
.LBB4_108:
	mov	r4, #0
	b	.LBB4_109
.section bb4_109
.LBB4_109:                              @ %for.cond2.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_110 Depth 2
                                        @     Child Loop BB4_115 Depth 2
	tst	r5, #255
	mov	r1, r5
	mov	r0, r10
	mov	r5, #0
	beq	.LBB4_120
	b	.LBB4_110
.section bb4_110
.LBB4_110:                              @ %land.rhs.i
                                        @   Parent Loop BB4_109 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r0, r1, #255
	sub	r2, r0, #9
	cmp	r2, #5
	blo	.LBB4_112
	b	.LBB4_111
.section bb4_111
.LBB4_111:                              @ %switch.early.test.i
                                        @   in Loop: Header=BB4_110 Depth=2
	cmp	r0, #32
	cmpne	r0, #58
	bne	.LBB4_114
	b	.LBB4_112
.section bb4_112
.LBB4_112:                              @ %for.inc.i530
                                        @   in Loop: Header=BB4_110 Depth=2
	ldrb	r1, [r10, #1]!
	cmp	r1, #0
	bne	.LBB4_110
	b	.LBB4_113
.section bb4_113
.LBB4_113:                              @   in Loop: Header=BB4_109 Depth=1
	mov	r0, r10
	mov	r5, #0
	b	.LBB4_120
.section bb4_114
.LBB4_114:                              @   in Loop: Header=BB4_109 Depth=1
	mov	r2, r10
	b	.LBB4_115
.section bb4_115
.LBB4_115:                              @ %land.lhs.true.i
                                        @   Parent Loop BB4_109 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r0, r1, #255
	sub	r3, r0, #9
	cmp	r3, #5
	blo	.LBB4_118
	b	.LBB4_116
.section bb4_116
.LBB4_116:                              @ %switch.early.test49.i
                                        @   in Loop: Header=BB4_115 Depth=2
	mov	r5, #32
	cmp	r0, #32
	movne	r5, #58
	cmpne	r0, #58
	beq	.LBB4_119
	b	.LBB4_117
.section bb4_117
.LBB4_117:                              @ %for.inc21.i
                                        @   in Loop: Header=BB4_115 Depth=2
	ldrb	r1, [r2, #1]!
	mov	r5, #0
	cmp	r1, #0
	bne	.LBB4_115
	b	.LBB4_119
.section bb4_118
.LBB4_118:                              @   in Loop: Header=BB4_109 Depth=1
	mov	r5, r1
	b	.LBB4_119
.section bb4_119
.LBB4_119:                              @ %for.end23.i.loopexit
                                        @   in Loop: Header=BB4_109 Depth=1
	mov	r0, r10
	mov	r10, r2
	b	.LBB4_120
.section bb4_120
.LBB4_120:                              @ %for.end23.i
                                        @   in Loop: Header=BB4_109 Depth=1
	mov	r1, #0
	strb	r4, [r10]
	bl	load_library
	strb	r5, [r10]
	tst	r5, #255
	bne	.LBB4_109
	b	.LBB4_121
.section bb4_121
.LBB4_121:                              @ %if.end315
	mov	r0, r7
	bl	load_deps
	mov	r0, #1
	b	.LBB4_122
.section bb4_122
.LBB4_122:                              @ %for.body.i533
                                        @ =>This Inner Loop Header: Depth=1
	strb	r0, [r7, #80]
	ldr	r7, [r7, #12]
	cmp	r7, #0
	bne	.LBB4_122
	b	.LBB4_123
.section bb4_123
.LBB4_123:                              @ %for.cond316.preheader
	ldr	r0, [r9, #512]
	ldr	r4, .LCPI4_30
	add	r1, r9, #64
	add	r0, r0, #4
	b	.LBB4_125
.LCPI4_30:
	.long	__libc
.section bb4_124
.LBB4_124:                              @ %for.cond316
                                        @   in Loop: Header=BB4_125 Depth=1
	cmp	r2, #21
	streq	r1, [r0]
	add	r0, r0, #8
	b	.LBB4_125
.section bb4_125
.LBB4_125:                              @ %for.cond316
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0, #-4]
	cmp	r2, #0
	bne	.LBB4_124
	b	.LBB4_126
.section bb4_126
.LBB4_126:                              @ %for.end332
	ldr	r0, [r9, #516]
	bl	reloc_all
	add	r0, r9, #504
	bl	reloc_all
	b	.LBB4_127
.section bb4_127
.LBB4_127:                              @ %for.end332
	ldr	r0, .LCPI4_40
	ldr	r1, [r9, #8]
	ldr	r2, [r9, #16]
	ldr	r0, [r0]
	b	.LBB4_128
.LCPI4_40:
	.long	_MergedGlobals
.section bb4_128
.LBB4_128:                              @ %for.end332
	add	r1, r2, r1, lsl #2
	add	r1, r1, r0
	add	r1, r1, r0, lsl #1
	rsb	r0, r0, #0
	b	.LBB4_129
.section bb4_129
.LBB4_129:                              @ %for.end332
	add	r1, r1, #195
	and	r0, r1, r0
	str	r0, [r4, #36]
	cmp	r0, #256
	bls	.LBB4_132
	b	.LBB4_130
.section bb4_130
.LBB4_130:                              @ %if.then336
	mov	r1, #1
	bl	calloc
	cmp	r0, #0
	bne	.LBB4_133
	b	.LBB4_131
.section bb4_131
.LBB4_131:                              @ %if.then339
	ldr	r3, [r4, #36]
	ldr	r2, [r11]
	ldr	r1, .LCPI4_47
	mov	r0, #2
	bl	dprintf
	b	.LBB4_146
.LCPI4_47:
	.long	.L.str15
.section bb4_132
.LBB4_132:
	add	r0, r9, #248
	b	.LBB4_133
.section bb4_133
.LBB4_133:                              @ %if.end344
	bl	__copy_tls
	bl	__init_tp
	ldr	r1, [r9, #8]
	cmp	r0, #0
	bge	.LBB4_135
	b	.LBB4_134
.section bb4_134
.LBB4_134:                              @ %if.end344
	cmp	r1, #0
	bne	.LBB4_145
	b	.LBB4_135
.section bb4_135
.LBB4_135:                              @ %if.end354
	str	r1, [r9, #28]
	ldrb	r0, [r9, #2]
	cmp	r0, #1
	beq	.LBB4_146
	b	.LBB4_136
.section bb4_136
.LBB4_136:                              @ %if.end357
	ldrb	r0, [r9]
	cmp	r0, #1
	beq	.LBB4_147
	b	.LBB4_137
.section bb4_137
.LBB4_137:                              @ %if.end360
	mov	r0, #1
	mov	r4, #0
	strb	r0, [r9, #1]
	str	r0, [r9, #64]
	b	.LBB4_138
.section bb4_138
.LBB4_138:                              @ %if.end360
	ldr	r0, .LCPI4_44
	str	r0, [r9, #72]
	ldr	r0, [r9, #4]
	str	r0, [r9, #68]
	b	.LBB4_139
.LCPI4_44:
	.long	_dl_debug_state
.section bb4_139
.LBB4_139:                              @ %if.end360
	ldr	r0, [r9, #664]
	str	r0, [r9, #80]
	str	r4, [r9, #76]
	ldr	r0, [sp, #16]           @ 4-byte Reload
	b	.LBB4_140
.section bb4_140
.LBB4_140:                              @ %if.end360
	ldr	r1, [r11]
	bl	__init_libc
	ldr	r0, .LCPI4_45
	bl	atexit
	b	.LBB4_141
.LCPI4_45:
	.long	do_fini
.section bb4_141
.LBB4_141:                              @ %if.end360
	bl	__errno_location
	str	r4, [r0]
	ldr	r0, [r9, #20]
	bl	do_init_fini
	ldr	r0, [sp, #56]
	add	sp, sp, #172
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb4_142
.LBB4_142:                              @ %if.then193
	bl	__libc_get_version
	mov	r2, r0
	ldrb	r0, [r9]
	ldr	r1, .LCPI4_42
	b	.LBB4_143
.LCPI4_42:
	.long	.L.str9
.section bb4_143
.LBB4_143:                              @ %if.then193
	ldr	r3, .LCPI4_50
	cmp	r0, #0
	mov	r0, #2
	movne	r3, r1
	ldr	r1, .LCPI4_51
	str	r3, [sp]
	mov	r3, r7
	b	.LBB4_144
.LCPI4_50:
	.long	.L.str10
.LCPI4_51:
	.long	.L.str8
.section bb4_144
.LBB4_144:                              @ %if.then210
	bl	dprintf
	mov	r0, #1
	bl	_exit
.section bb4_145
.LBB4_145:                              @ %if.then351
	ldr	r2, [r11]
	ldr	r1, .LCPI4_46
	mov	r0, #2
	bl	dprintf
	b	.LBB4_146
.LCPI4_46:
	.long	.L.str16
.section bb4_146
.LBB4_146:                              @ %if.then356
	mov	r0, #127
	bl	_exit
.section bb4_147
.LBB4_147:                              @ %if.then359
	mov	r0, #0
	bl	_exit
.section bb4_148
.LBB4_148:                              @ %if.then202
	ldr	r4, [r11]
	bl	__errno_location
	ldr	r0, [r0]
	bl	strerror
	b	.LBB4_149
.section bb4_149
.LBB4_149:                              @ %if.then202
	ldr	r1, .LCPI4_49
	str	r0, [sp]
	mov	r0, #2
	mov	r2, r7
	mov	r3, r4
	b	.LBB4_144
.LCPI4_49:
	.long	.L.str11
.section bb4_150
.LBB4_150:                              @ %if.then210
	ldr	r3, [r11]
	ldr	r1, .LCPI4_48
	mov	r0, #2
	mov	r2, r7
	b	.LBB4_144
.LCPI4_48:
	.long	.L.str12
.Ltmp4:
	.size	__dynlink, .Ltmp4-__dynlink
	.cantunwind
	.fnend

	.align	2
	.type	decode_vec,%function
.section bb5_0
decode_vec:                             @ @decode_vec
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	mov	r4, r2
	mov	r5, r1
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %entry
	mov	r6, r0
	mov	r1, #0
	lsl	r2, r4, #2
	mov	r0, r5
	b	.LBB5_3
.section bb5_3
.LBB5_3:                                @ %entry
	bl	memset
	ldr	r2, [r6]
	cmp	r2, #0
	beq	.LBB5_8
	b	.LBB5_4
.section bb5_4
.LBB5_4:                                @ %for.body.preheader
	add	r1, r6, #4
	mov	r0, #1
	b	.LBB5_5
.section bb5_5
.LBB5_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r2, r4
	bhs	.LBB5_7
	b	.LBB5_6
.section bb5_6
.LBB5_6:                                @ %if.then
                                        @   in Loop: Header=BB5_5 Depth=1
	ldr	r3, [r5]
	orr	r2, r3, r0, lsl r2
	str	r2, [r5]
	ldmda	r1, {r2, r3}
	str	r3, [r5, r2, lsl #2]
	b	.LBB5_7
.section bb5_7
.LBB5_7:                                @ %for.inc
                                        @   in Loop: Header=BB5_5 Depth=1
	ldr	r2, [r1, #4]
	add	r3, r1, #8
	mov	r1, r3
	cmp	r2, #0
	bne	.LBB5_5
	b	.LBB5_8
.section bb5_8
.LBB5_8:                                @ %for.end
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp5:
	.size	decode_vec, .Ltmp5-decode_vec
	.cantunwind
	.fnend

	.align	2
	.type	kernel_mapped_dso,%function
.section bb6_0
kernel_mapped_dso:                      @ @kernel_mapped_dso
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB6_1
.section bb6_1
.LBB6_1:                                @ %entry
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.LBB6_11
	b	.LBB6_2
.section bb6_2
.LBB6_2:                                @ %for.body.lr.ph
	ldr	r1, [r0, #20]
	mvn	lr, #0
	mov	r12, #0
	b	.LBB6_3
.section bb6_3
.LBB6_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1]
	ldr	r4, .LCPI6_0
	sub	r3, r3, #1
	cmp	r2, r4
	bne	.LBB6_6
	b	.LBB6_4
.LCPI6_0:
	.long	1685382482              @ 0x6474e552
.section bb6_4
.LBB6_4:                                @ %if.then3
                                        @   in Loop: Header=BB6_3 Depth=1
	ldr	r2, [r1, #8]
	ldr	r4, .LCPI6_2
	and	r2, r2, r4
	str	r2, [r0, #124]
	b	.LBB6_5
.LCPI6_2:
	.long	4294963200              @ 0xfffff000
.section bb6_5
.LBB6_5:                                @ %if.then3
                                        @   in Loop: Header=BB6_3 Depth=1
	ldr	r2, [r1, #8]
	ldr	r5, [r1, #20]
	add	r2, r5, r2
	and	r2, r2, r4
	str	r2, [r0, #128]
	ldr	r2, [r1]
	b	.LBB6_8
.section bb6_6
.LBB6_6:                                @ %for.body
                                        @   in Loop: Header=BB6_3 Depth=1
	cmp	r2, #2
	bne	.LBB6_8
	b	.LBB6_7
.section bb6_7
.LBB6_7:                                @ %if.end7.thread
                                        @   in Loop: Header=BB6_3 Depth=1
	ldr	r2, [r1, #8]
	ldr	r4, [r0]
	add	r2, r4, r2
	str	r2, [r0, #8]
	b	.LBB6_10
.section bb6_8
.LBB6_8:                                @ %if.end7
                                        @   in Loop: Header=BB6_3 Depth=1
	cmp	r2, #1
	bne	.LBB6_10
	b	.LBB6_9
.section bb6_9
.LBB6_9:                                @ %if.end11
                                        @   in Loop: Header=BB6_3 Depth=1
	ldr	r2, [r1, #8]
	ldr	r4, [r1, #20]
	cmp	r2, lr
	movlo	lr, r2
	add	r2, r4, r2
	cmp	r2, r12
	movhi	r12, r2
	b	.LBB6_10
.section bb6_10
.LBB6_10:                               @ %for.inc
                                        @   in Loop: Header=BB6_3 Depth=1
	ldr	r2, [r0, #28]
	cmp	r3, #0
	add	r1, r1, r2
	bne	.LBB6_3
	b	.LBB6_12
.section bb6_11
.LBB6_11:                               @ %entry.for.end_crit_edge
	mvn	lr, #0
	mov	r12, #0
	b	.LBB6_12
.section bb6_12
.LBB6_12:                               @ %for.end
	ldr	r1, .LCPI6_3
	ldr	r3, [r0]
	add	r5, r12, #255
	add	r5, r5, #3840
	b	.LBB6_13
.LCPI6_3:
	.long	4294963200              @ 0xfffff000
.section bb6_13
.LBB6_13:                               @ %for.end
	and	r2, lr, r1
	and	r1, r5, r1
	add	r3, r3, r2
	sub	r1, r1, r2
	b	.LBB6_14
.section bb6_14
.LBB6_14:                               @ %for.end
	str	r3, [r0, #56]
	str	r1, [r0, #60]
	mov	r1, #1
	strb	r1, [r0, #83]
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp6:
	.size	kernel_mapped_dso, .Ltmp6-kernel_mapped_dso
	.cantunwind
	.fnend

	.align	2
	.type	decode_dyn,%function
.section bb7_0
decode_dyn:                             @ @decode_dyn
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB7_1
.section bb7_1
.LBB7_1:                                @ %entry
	.pad	#136
	sub	sp, sp, #136
	b	.LBB7_2
.section bb7_2
.LBB7_2:                                @ %entry
	mov	r5, sp
	mov	r4, r0
	mov	r1, #136
	mov	r2, #0
	b	.LBB7_3
.section bb7_3
.LBB7_3:                                @ %entry
	mov	r0, r5
	bl	__aeabi_memset
	ldr	r0, [r4, #8]
	mov	r1, r5
	b	.LBB7_4
.section bb7_4
.LBB7_4:                                @ %entry
	mov	r2, #34
	bl	decode_vec
	ldr	r12, [r4]
	ldr	r1, [sp, #24]
	b	.LBB7_5
.section bb7_5
.LBB7_5:                                @ %entry
	add	r1, r12, r1
	str	r1, [r4, #36]
	ldr	r1, [sp, #20]
	add	r2, r12, r1
	b	.LBB7_6
.section bb7_6
.LBB7_6:                                @ %entry
	str	r2, [r4, #52]
	ldr	r2, [sp]
	tst	r2, #16
	ldrne	r3, [sp, #16]
	b	.LBB7_7
.section bb7_7
.LBB7_7:                                @ %entry
	addne	r3, r12, r3
	strne	r3, [r4, #40]
	tst	r2, #32768
	ldrne	r3, [sp, #60]
	b	.LBB7_8
.section bb7_8
.LBB7_8:                                @ %entry
	addne	r3, r1, r3
	addne	r3, r12, r3
	strne	r3, [r4, #92]
	tst	r2, #536870912
	b	.LBB7_9
.section bb7_9
.LBB7_9:                                @ %entry
	ldrne	r2, [sp, #116]
	addne	r1, r1, r2
	addne	r1, r12, r1
	strne	r1, [r4, #92]
	b	.LBB7_10
.section bb7_10
.LBB7_10:                               @ %entry
	ldr	r1, [r4, #8]
	ldr	r5, [r1]
	ldr	r2, .LCPI7_0
	mov	r3, r1
	cmp	r5, r2
	beq	.LBB7_14
	b	.LBB7_11
.LCPI7_0:
	.long	1879047925              @ 0x6ffffef5
.section bb7_11
.LBB7_11:
	mov	r2, r5
	mov	r3, r1
	b	.LBB7_12
.section bb7_12
.LBB7_12:                               @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r2, #0
	beq	.LBB7_15
	b	.LBB7_13
.section bb7_13
.LBB7_13:                               @ %for.inc.i
                                        @   in Loop: Header=BB7_12 Depth=1
	ldr	r2, [r3, #8]!
	ldr	r0, .LCPI7_1
	cmp	r2, r0
	bne	.LBB7_12
	b	.LBB7_14
.LCPI7_1:
	.long	1879047925              @ 0x6ffffef5
.section bb7_14
.LBB7_14:                               @ %if.then28
	ldr	r0, [r3, #4]
	str	r0, [sp]
	add	r0, r12, r0
	str	r0, [r4, #44]
	ldr	r5, [r1]
	b	.LBB7_15
.section bb7_15
.LBB7_15:                               @ %if.end32
	mvn	r3, #-1879048177
	b	.LBB7_17
.section bb7_16
.LBB7_16:                               @ %for.inc.i64
                                        @   in Loop: Header=BB7_17 Depth=1
	ldr	r5, [r1, #8]!
	b	.LBB7_17
.section bb7_17
.LBB7_17:                               @ %if.end32
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r5, r3
	beq	.LBB7_19
	b	.LBB7_18
.section bb7_18
.LBB7_18:                               @ %for.body.i61
                                        @   in Loop: Header=BB7_17 Depth=1
	cmp	r5, #0
	bne	.LBB7_16
	b	.LBB7_20
.section bb7_19
.LBB7_19:                               @ %if.then37
	ldr	r0, [r1, #4]
	str	r0, [sp]
	add	r0, r12, r0
	str	r0, [r4, #48]
	b	.LBB7_20
.section bb7_20
.LBB7_20:                               @ %if.end41
	add	sp, sp, #136
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp7:
	.size	decode_dyn, .Ltmp7-decode_dyn
	.cantunwind
	.fnend

	.align	2
	.type	map_library,%function
.section bb8_0
map_library:                            @ @map_library
	.fnstart
.Leh_func_begin8:
.LBB8_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB8_1
.section bb8_1
.LBB8_1:                                @ %entry
	b	.LBB8_2
.section bb8_2
.LBB8_2:                                @ %entry
	.pad	#1004
	sub	sp, sp, #1004
	b	.LBB8_3
.section bb8_3
.LBB8_3:                                @ %entry
	add	r7, sp, #68
	mov	r10, r0
	mov	r9, r1
	b	.LBB8_4
.section bb8_4
.LBB8_4:                                @ %entry
	mov	r2, #936
	mov	r1, r7
                                        @ kill: R0<def> R10<kill>
	bl	read
	mov	r5, #0
	cmp	r0, #0
	blt	.LBB8_52
	b	.LBB8_5
.section bb8_5
.LBB8_5:                                @ %if.end
	mov	r4, #0
	cmp	r0, #52
	blo	.LBB8_50
	b	.LBB8_6
.section bb8_6
.LBB8_6:                                @ %lor.lhs.false
	add	r8, sp, #84
	mov	r1, #254
	ldrh	r2, [r8]
	orr	r1, r1, #65280
	and	r1, r2, r1
	cmp	r1, #2
	bne	.LBB8_50
	b	.LBB8_7
.section bb8_7
.LBB8_7:                                @ %if.end10
	ldrh	r1, [r8, #26]
	ldrh	r2, [r8, #28]
	mul	r6, r2, r1
	cmp	r6, #884
	bls	.LBB8_12
	b	.LBB8_8
.section bb8_8
.LBB8_8:                                @ %if.then15
	mov	r0, r6
	bl	malloc
	mov	r7, r0
	mov	r5, #0
	cmp	r7, #0
	beq	.LBB8_52
	b	.LBB8_9
.section bb8_9
.LBB8_9:                                @ %if.end18
	ldr	r0, [sp, #96]
	mov	r1, #0
	mov	r2, r6
	stm	sp, {r0, r1}
	b	.LBB8_10
.section bb8_10
.LBB8_10:                               @ %if.end18
	mov	r0, r10
	mov	r1, r7
	bl	pread
	cmp	r0, #0
	blt	.LBB8_48
	b	.LBB8_11
.section bb8_11
.LBB8_11:                               @ %if.end24
	mov	r4, r7
	cmp	r0, r6
	beq	.LBB8_17
	b	.LBB8_50
.section bb8_12
.LBB8_12:                               @ %if.else
	ldr	r1, [sp, #96]
	add	r2, r1, r6
	cmp	r2, r0
	bls	.LBB8_16
	b	.LBB8_13
.section bb8_13
.LBB8_13:                               @ %if.then32
	mov	r4, #0
	add	r7, r7, #52
	mov	r0, r10
	mov	r2, r6
	b	.LBB8_14
.section bb8_14
.LBB8_14:                               @ %if.then32
	stm	sp, {r1, r4}
	mov	r1, r7
	bl	pread
	cmp	r0, #0
	blt	.LBB8_51
	b	.LBB8_15
.section bb8_15
.LBB8_15:                               @ %if.end40
	mov	r4, #0
	cmp	r0, r6
	beq	.LBB8_17
	b	.LBB8_50
.section bb8_16
.LBB8_16:                               @ %if.else47
	add	r7, r7, r1
	mov	r4, #0
	b	.LBB8_17
.section bb8_17
.LBB8_17:                               @ %if.end52
	ldrh	r0, [r8, #28]
	cmp	r0, #0
	beq	.LBB8_50
	b	.LBB8_18
.section bb8_18
.LBB8_18:                               @ %for.body.lr.ph
	rsb	r3, r0, #0
	mvn	r0, #0
	ldrh	r5, [r8, #26]
	add	r1, r7, #16
	b	.LBB8_19
.section bb8_19
.LBB8_19:                               @ %for.body.lr.ph
	mov	lr, #1
	str	r6, [sp, #44]           @ 4-byte Spill
	str	r4, [sp, #48]           @ 4-byte Spill
	str	r7, [sp, #36]           @ 4-byte Spill
	b	.LBB8_20
.section bb8_20
.LBB8_20:                               @ %for.body.lr.ph
                                        @ implicit-def: R2
                                        @ implicit-def: R12
                                        @ implicit-def: R11
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB8_21
.section bb8_21
.LBB8_21:                               @ %for.body.lr.ph
	mov	r0, #0
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #56]           @ 4-byte Spill
	mov	r0, #0
	b	.LBB8_22
.section bb8_22
.LBB8_22:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1, #-16]
	ldr	r6, .LCPI8_3
	cmp	r7, r6
	beq	.LBB8_26
	b	.LBB8_23
.LCPI8_3:
	.long	1685382482              @ 0x6474e552
.section bb8_23
.LBB8_23:                               @ %for.body
                                        @   in Loop: Header=BB8_22 Depth=1
	cmp	r7, #7
	bne	.LBB8_28
	b	.LBB8_24
.section bb8_24
.LBB8_24:                               @ %if.then63
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r6, [r1, #12]
	ldr	r4, [r1, #-8]
	str	r6, [r9, #112]
	str	r4, [sp, #60]           @ 4-byte Spill
	b	.LBB8_25
.section bb8_25
.LBB8_25:                               @ %if.then63
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r6, [r1]
	str	r6, [r9, #104]
	ldr	r6, [r1, #4]
	str	r6, [r9, #108]
	b	.LBB8_30
.section bb8_26
.LBB8_26:                               @ %if.then69
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r6, [r1, #-8]
	ldr	r7, .LCPI8_4
	and	r6, r6, r7
	str	r6, [r9, #124]
	b	.LBB8_27
.LCPI8_4:
	.long	4294963200              @ 0xfffff000
.section bb8_27
.LBB8_27:                               @ %if.then69
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r6, [r1, #-8]
	ldr	r4, [r1, #4]
	add	r4, r4, r6
	and	r4, r4, r7
	str	r4, [r9, #128]
	b	.LBB8_30
.section bb8_28
.LBB8_28:                               @ %for.body
                                        @   in Loop: Header=BB8_22 Depth=1
	cmp	r7, #2
	bne	.LBB8_31
	b	.LBB8_29
.section bb8_29
.LBB8_29:                               @ %if.then58
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r4, [r1, #-8]
	str	r4, [sp, #56]           @ 4-byte Spill
	b	.LBB8_30
.section bb8_30
.LBB8_30:                               @ %if.end77thread-pre-split
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r7, [r1, #-16]
	b	.LBB8_31
.section bb8_31
.LBB8_31:                               @ %if.end77
                                        @   in Loop: Header=BB8_22 Depth=1
	cmp	r7, #1
	bne	.LBB8_36
	b	.LBB8_32
.section bb8_32
.LBB8_32:                               @ %if.end82
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r8, [r1, #-8]
	ldr	r4, [sp, #64]           @ 4-byte Reload
	cmp	r8, r4
	bhs	.LBB8_35
	b	.LBB8_33
.section bb8_33
.LBB8_33:                               @ %if.then86
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r2, [r1, #8]
	mov	r4, #4
	ldr	r12, [r1, #-12]
	mov	r11, #0
	b	.LBB8_34
.section bb8_34
.LBB8_34:                               @ %if.then86
                                        @   in Loop: Header=BB8_22 Depth=1
	str	r8, [sp, #64]           @ 4-byte Spill
	and	r4, r4, r2, lsl #2
	and	r6, lr, r2, lsr #2
	and	r2, r2, #2
	orr	r2, r6, r2
	orr	r2, r2, r4
	b	.LBB8_35
.section bb8_35
.LBB8_35:                               @ %if.end100
                                        @   in Loop: Header=BB8_22 Depth=1
	ldr	r4, [r1, #4]
	add	r4, r4, r8
	cmp	r4, r0
	movhi	r0, r4
	b	.LBB8_36
.section bb8_36
.LBB8_36:                               @ %for.inc
                                        @   in Loop: Header=BB8_22 Depth=1
	add	r1, r1, r5
	adds	r3, r3, #1
	bne	.LBB8_22
	b	.LBB8_37
.section bb8_37
.LBB8_37:                               @ %for.end
	ldr	r1, [sp, #56]           @ 4-byte Reload
	cmp	r1, #0
	beq	.LBB8_49
	b	.LBB8_38
.section bb8_38
.LBB8_38:                               @ %if.end116
	str	r11, [sp, #12]
	ldr	r1, .LCPI8_5
	ldr	r7, [sp, #64]           @ 4-byte Reload
	and	r6, r7, r1
	b	.LBB8_39
.LCPI8_5:
	.long	4294963200              @ 0xfffff000
.section bb8_39
.LBB8_39:                               @ %if.end116
	mov	r7, #255
	and	r3, r12, r1
	orr	r7, r7, #3840
	str	r3, [sp, #8]
	b	.LBB8_40
.section bb8_40
.LBB8_40:                               @ %if.end116
	str	r10, [sp]
	add	r0, r0, r7
	and	r0, r0, r1
	sub	r0, r0, r6
	b	.LBB8_41
.section bb8_41
.LBB8_41:                               @ %if.end116
	add	r7, r0, r3
	mov	r0, r6
	mov	r3, #2
	mov	r1, r7
	b	.LBB8_42
.section bb8_42
.LBB8_42:                               @ %if.end116
	bl	mmap
	mov	r5, r0
	cmn	r5, #1
	beq	.LBB8_47
	b	.LBB8_43
.section bb8_43
.LBB8_43:                               @ %if.end128
	mov	r12, r6
	add	r4, sp, #84
	cmp	r5, r6
	str	r12, [sp, #52]          @ 4-byte Spill
	beq	.LBB8_53
	b	.LBB8_44
.section bb8_44
.LBB8_44:                               @ %if.end128
	cmp	r12, #0
	ldrhne	r0, [r4]
	cmpne	r0, #3
	beq	.LBB8_53
	b	.LBB8_45
.section bb8_45
.LBB8_45:                               @ %error.thread440
	str	r7, [sp, #32]           @ 4-byte Spill
	bl	__errno_location
	mov	r1, #16
	str	r1, [r0]
	b	.LBB8_46
.section bb8_46
.LBB8_46:                               @ %if.then286
	ldr	r1, [sp, #32]           @ 4-byte Reload
	mov	r0, r5
	bl	munmap
	b	.LBB8_47
.section bb8_47
.LBB8_47:                               @ %if.end288
	ldr	r4, [sp, #48]           @ 4-byte Reload
	b	.LBB8_51
.section bb8_48
.LBB8_48:
	mov	r4, r7
	b	.LBB8_51
.section bb8_49
.LBB8_49:
	ldr	r4, [sp, #48]           @ 4-byte Reload
	b	.LBB8_50
.section bb8_50
.LBB8_50:                               @ %noexec
	bl	__errno_location
	mov	r1, #8
	str	r1, [r0]
	b	.LBB8_51
.section bb8_51
.LBB8_51:                               @ %if.end288
	mov	r0, r4
	bl	free
	mov	r5, #0
	b	.LBB8_52
.section bb8_52
.LBB8_52:                               @ %cleanup
	mov	r0, r5
	add	sp, sp, #1004
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb8_53
.LBB8_53:                               @ %if.end140
	rsb	r0, r12, #0
	mov	r1, #0
	str	r7, [sp, #32]           @ 4-byte Spill
	ldr	r7, [sp, #36]           @ 4-byte Reload
	b	.LBB8_54
.section bb8_54
.LBB8_54:                               @ %if.end140
	str	r1, [r9, #20]
	add	r0, r5, r0
	str	r1, [r9, #24]
	str	r0, [sp, #40]           @ 4-byte Spill
	ldrh	r0, [r4, #28]
	cmp	r0, #0
	beq	.LBB8_82
	b	.LBB8_55
.section bb8_55
.LBB8_55:                               @ %for.body146.lr.ph
	rsb	r11, r0, #0
	b	.LBB8_56
.section bb8_56
.LBB8_56:                               @ %for.body146
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r7]
	cmp	r0, #1
	bne	.LBB8_81
	b	.LBB8_57
.section bb8_57
.LBB8_57:                               @ %if.end151
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r0, [r9, #20]
	cmp	r0, #0
	bne	.LBB8_62
	b	.LBB8_58
.section bb8_58
.LBB8_58:                               @ %land.lhs.true154
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r0, [r7, #4]
	ldr	r1, [sp, #96]
	cmp	r1, r0
	blo	.LBB8_62
	b	.LBB8_59
.section bb8_59
.LBB8_59:                               @ %land.lhs.true159
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r2, [sp, #44]           @ 4-byte Reload
	ldr	r3, [r7, #16]
	add	r2, r1, r2
	add	r3, r3, r0
	cmp	r2, r3
	bhi	.LBB8_62
	b	.LBB8_60
.section bb8_60
.LBB8_60:                               @ %if.then167
                                        @   in Loop: Header=BB8_56 Depth=1
	sub	r1, r1, r12
	sub	r0, r1, r0
	ldr	r1, [r7, #8]
	add	r0, r0, r1
	b	.LBB8_61
.section bb8_61
.LBB8_61:                               @ %if.then167
                                        @   in Loop: Header=BB8_56 Depth=1
	add	r0, r5, r0
	str	r0, [r9, #20]
	ldrh	r0, [r4, #28]
	str	r0, [r9, #24]
	ldrh	r0, [r4, #26]
	str	r0, [r9, #28]
	b	.LBB8_62
.section bb8_62
.LBB8_62:                               @ %if.end180
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r2, [r7, #8]
	ldr	r0, .LCPI8_6
	and	r1, r2, r0
	cmp	r1, r12
	beq	.LBB8_81
	b	.LBB8_63
.LCPI8_6:
	.long	4294963200              @ 0xfffff000
.section bb8_63
.LBB8_63:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	mov	r3, r7
	mov	r6, #0
	ldr	r8, [r7, #20]
	ldr	r0, [r7, #4]
	b	.LBB8_64
.section bb8_64
.LBB8_64:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	mov	lr, r4
	mov	r4, #1
	ldr	r7, [r3, #24]
	str	r6, [sp, #12]
	b	.LBB8_65
.section bb8_65
.LBB8_65:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r6, .LCPI8_7
	add	r2, r2, r8
	and	r0, r0, r6
	and	r4, r4, r7, lsr #2
	b	.LBB8_66
.LCPI8_7:
	.long	4294963200              @ 0xfffff000
.section bb8_66
.LBB8_66:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	str	r0, [sp, #8]
	mov	r0, #4
	str	r10, [sp]
	and	r0, r0, r7, lsl #2
	b	.LBB8_67
.section bb8_67
.LBB8_67:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	and	r7, r7, #2
	orr	r7, r4, r7
	mov	r4, lr
	orr	r12, r7, r0
	b	.LBB8_68
.section bb8_68
.LBB8_68:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r0, [sp, #52]           @ 4-byte Reload
	mov	r7, r3
	mov	r3, #255
	orr	r3, r3, #3840
	b	.LBB8_69
.section bb8_69
.LBB8_69:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	str	r12, [sp, #36]          @ 4-byte Spill
	add	r2, r2, r3
	mov	r3, #18
	and	r8, r2, r6
	b	.LBB8_70
.section bb8_70
.LBB8_70:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	mov	r2, r12
	sub	r0, r1, r0
	sub	r1, r8, r1
	add	r0, r5, r0
	b	.LBB8_71
.section bb8_71
.LBB8_71:                               @ %if.end186
                                        @   in Loop: Header=BB8_56 Depth=1
	bl	mmap
	ldr	r12, [sp, #52]          @ 4-byte Reload
	cmn	r0, #1
	beq	.LBB8_46
	b	.LBB8_72
.section bb8_72
.LBB8_72:                               @ %if.end218
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	cmp	r1, r0
	bls	.LBB8_81
	b	.LBB8_73
.section bb8_73
.LBB8_73:                               @ %if.then223
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r1, [sp, #40]           @ 4-byte Reload
	mov	r6, #255
	orr	r6, r6, #3840
	add	r0, r0, r1
	b	.LBB8_74
.section bb8_74
.LBB8_74:                               @ %if.then223
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r1, [r7, #8]
	add	r0, r0, r1
	mov	r1, #0
	rsb	r2, r0, #0
	b	.LBB8_75
.section bb8_75
.LBB8_75:                               @ %if.then223
                                        @   in Loop: Header=BB8_56 Depth=1
	str	r0, [sp, #28]           @ 4-byte Spill
	and	r2, r2, r6
	bl	memset
	ldr	r0, [sp, #28]           @ 4-byte Reload
	b	.LBB8_76
.section bb8_76
.LBB8_76:                               @ %if.then223
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r12, [sp, #52]          @ 4-byte Reload
	ldr	r1, .LCPI8_8
	add	r0, r0, r6
	and	r0, r0, r1
	b	.LBB8_77
.LCPI8_8:
	.long	4294963200              @ 0xfffff000
.section bb8_77
.LBB8_77:                               @ %if.then223
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r1, [sp, #40]           @ 4-byte Reload
	sub	r1, r0, r1
	cmp	r1, r8
	bhs	.LBB8_81
	b	.LBB8_78
.section bb8_78
.LBB8_78:                               @ %land.lhs.true237
                                        @   in Loop: Header=BB8_56 Depth=1
	mov	r1, #0
	ldr	r2, [sp, #36]           @ 4-byte Reload
	mov	r3, #50
	mov	r6, r12
	b	.LBB8_79
.section bb8_79
.LBB8_79:                               @ %land.lhs.true237
                                        @   in Loop: Header=BB8_56 Depth=1
	str	r1, [sp, #8]
	str	r1, [sp, #12]
	mvn	r1, #0
	str	r1, [sp]
	b	.LBB8_80
.section bb8_80
.LBB8_80:                               @ %land.lhs.true237
                                        @   in Loop: Header=BB8_56 Depth=1
	ldr	r1, [sp, #40]           @ 4-byte Reload
	add	r1, r8, r1
	sub	r1, r1, r0
	bl	mmap
	mov	r12, r6
	cmn	r0, #1
	beq	.LBB8_46
	b	.LBB8_81
.section bb8_81
.LBB8_81:                               @ %for.inc246
                                        @   in Loop: Header=BB8_56 Depth=1
	ldrh	r0, [r4, #26]
	adds	r11, r11, #1
	add	r7, r7, r0
	bne	.LBB8_56
	b	.LBB8_82
.section bb8_82
.LBB8_82:                               @ %for.cond252.preheader
	ldr	r1, [sp, #56]           @ 4-byte Reload
	sub	r0, r1, r12
	add	r4, r5, r0
	ldr	r0, .LCPI8_9
	b	.LBB8_83
.LCPI8_9:
	.long	4294963200              @ 0xfffff000
.section bb8_83
.LBB8_83:                               @ %for.cond252.preheader
	ldr	r2, [sp, #64]           @ 4-byte Reload
	and	r0, r2, r0
	sub	r0, r1, r0
	add	r0, r5, r0
	b	.LBB8_85
.section bb8_84
.LBB8_84:                               @ %for.inc267
                                        @   in Loop: Header=BB8_85 Depth=1
	add	r0, r0, #8
	b	.LBB8_85
.section bb8_85
.LBB8_85:                               @ %for.cond252
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.LBB8_89
	b	.LBB8_86
.section bb8_86
.LBB8_86:                               @ %for.cond252
                                        @   in Loop: Header=BB8_85 Depth=1
	cmp	r1, #22
	bne	.LBB8_84
	b	.LBB8_87
.section bb8_87
.LBB8_87:                               @ %if.then260
	ldr	r1, [sp, #32]           @ 4-byte Reload
	mov	r0, r5
	mov	r2, #7
	mov	r6, r12
	b	.LBB8_88
.section bb8_88
.LBB8_88:                               @ %if.then260
	bl	mprotect
	mov	r12, r6
	cmp	r0, #0
	blt	.LBB8_46
	b	.LBB8_89
.section bb8_89
.LBB8_89:                               @ %for.end269
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r5, [r9, #56]
	str	r0, [r9, #60]
	ldr	r0, [sp, #40]           @ 4-byte Reload
	b	.LBB8_90
.section bb8_90
.LBB8_90:                               @ %for.end269
	str	r0, [r9]
	str	r4, [r9, #8]
	ldr	r0, [r9, #108]
	cmp	r0, #0
	b	.LBB8_91
.section bb8_91
.LBB8_91:                               @ %for.end269
	ldrne	r0, [sp, #60]           @ 4-byte Reload
	subne	r0, r0, r12
	addne	r0, r5, r0
	strne	r0, [r9, #100]
	b	.LBB8_92
.section bb8_92
.LBB8_92:                               @ %for.end269
	ldr	r0, .LCPI8_10
	ldrb	r0, [r0, #1]
	cmp	r0, #0
	moveq	r0, r9
	bleq	reclaim_gaps
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	free
	b	.LBB8_52
.LCPI8_10:
	.long	_MergedGlobals1
.Ltmp8:
	.size	map_library, .Ltmp8-map_library
	.cantunwind
	.fnend

	.align	2
	.type	reloc_all,%function
.section bb9_0
reloc_all:                              @ @reloc_all
	.fnstart
.Leh_func_begin9:
.LBB9_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB9_1
.section bb9_1
.LBB9_1:                                @ %entry
	b	.LBB9_2
.section bb9_2
.LBB9_2:                                @ %entry
	.pad	#136
	sub	sp, sp, #136
	mov	r4, r0
	mov	r0, sp
	b	.LBB9_3
.section bb9_3
.LBB9_3:                                @ %entry
	mov	r1, #136
	mov	r2, #0
	bl	__aeabi_memset
	cmp	r4, #0
	beq	.LBB9_18
	b	.LBB9_4
.section bb9_4
.LBB9_4:                                @ %for.body.lr.ph
	ldr	r6, .LCPI9_0
	mov	r5, sp
	mov	r7, #1
	b	.LBB9_5
.LCPI9_0:
	.long	.L.str20
.section bb9_5
.LBB9_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r4, #81]
	cmp	r0, #0
	bne	.LBB9_17
	b	.LBB9_6
.section bb9_6
.LBB9_6:                                @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	ldr	r0, [r4, #8]
	mov	r1, r5
	mov	r2, #34
	bl	decode_vec
	b	.LBB9_7
.section bb9_7
.LBB9_7:                                @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	ldr	r3, [sp, #80]
	ldr	r0, [r4]
	ldr	r1, [sp, #92]
	ldr	r2, [sp, #8]
	b	.LBB9_8
.section bb9_8
.LBB9_8:                                @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	cmp	r3, #7
	mov	r3, #2
	add	r1, r0, r1
	mov	r0, r4
	b	.LBB9_9
.section bb9_9
.LBB9_9:                                @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	moveq	r3, #3
	bl	do_relocs
	ldr	r0, [r4]
	ldr	r1, [sp, #68]
	b	.LBB9_10
.section bb9_10
.LBB9_10:                               @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	ldr	r2, [sp, #72]
	mov	r3, #2
	add	r1, r0, r1
	mov	r0, r4
	b	.LBB9_11
.section bb9_11
.LBB9_11:                               @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	bl	do_relocs
	ldr	r0, [r4]
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #32]
	b	.LBB9_12
.section bb9_12
.LBB9_12:                               @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	mov	r3, #3
	add	r1, r0, r1
	mov	r0, r4
	bl	do_relocs
	b	.LBB9_13
.section bb9_13
.LBB9_13:                               @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	ldr	r0, [r4, #124]
	ldr	r1, [r4, #128]
	cmp	r1, r0
	beq	.LBB9_16
	b	.LBB9_14
.section bb9_14
.LBB9_14:                               @ %land.lhs.true
                                        @   in Loop: Header=BB9_5 Depth=1
	ldr	r2, [r4]
	sub	r1, r1, r0
	add	r0, r2, r0
	mov	r2, #1
	bl	mprotect
	cmp	r0, #0
	bge	.LBB9_16
	b	.LBB9_15
.section bb9_15
.LBB9_15:                               @ %if.then21
                                        @   in Loop: Header=BB9_5 Depth=1
	ldr	r1, [r4, #4]
	mov	r0, r6
	bl	error
	b	.LBB9_16
.section bb9_16
.LBB9_16:                               @ %if.end22
                                        @   in Loop: Header=BB9_5 Depth=1
	strb	r7, [r4, #81]
	b	.LBB9_17
.section bb9_17
.LBB9_17:                               @ %for.inc
                                        @   in Loop: Header=BB9_5 Depth=1
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	.LBB9_5
	b	.LBB9_18
.section bb9_18
.LBB9_18:                               @ %for.end
	add	sp, sp, #136
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp9:
	.size	reloc_all, .Ltmp9-reloc_all
	.cantunwind
	.fnend

	.align	2
	.type	reclaim_gaps,%function
.section bb10_0
reclaim_gaps:                           @ @reclaim_gaps
	.fnstart
.Leh_func_begin10:
.LBB10_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB10_1
.section bb10_1
.LBB10_1:                               @ %entry
	b	.LBB10_2
.section bb10_2
.LBB10_2:                               @ %entry
	mov	r4, r0
	ldr	r5, [r4, #24]
	cmp	r5, #0
	beq	.LBB10_10
	b	.LBB10_3
.section bb10_3
.LBB10_3:                               @ %for.body.lr.ph
	ldr	r6, [r4, #20]
	mov	r8, #255
	orr	r8, r8, #3840
	b	.LBB10_4
.section bb10_4
.LBB10_4:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6]
	sub	r5, r5, #1
	cmp	r0, #1
	bne	.LBB10_9
	b	.LBB10_5
.section bb10_5
.LBB10_5:                               @ %if.end
                                        @   in Loop: Header=BB10_4 Depth=1
	ldr	r0, [r6, #24]
	and	r0, r0, #6
	cmp	r0, #6
	bne	.LBB10_9
	b	.LBB10_6
.section bb10_6
.LBB10_6:                               @ %if.end3
                                        @   in Loop: Header=BB10_4 Depth=1
	ldr	r2, [r6, #8]
	ldr	r7, .LCPI10_0
	mov	r0, r4
	and	r1, r2, r7
	b	.LBB10_7
.LCPI10_0:
	.long	4294963200              @ 0xfffff000
.section bb10_7
.LBB10_7:                               @ %if.end3
                                        @   in Loop: Header=BB10_4 Depth=1
	bl	reclaim
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #20]
	add	r1, r1, r0
	b	.LBB10_8
.section bb10_8
.LBB10_8:                               @ %if.end3
                                        @   in Loop: Header=BB10_4 Depth=1
	add	r0, r1, r8
	and	r2, r0, r7
	mov	r0, r4
	bl	reclaim
	b	.LBB10_9
.section bb10_9
.LBB10_9:                               @ %for.inc
                                        @   in Loop: Header=BB10_4 Depth=1
	ldr	r0, [r4, #28]
	cmp	r5, #0
	add	r6, r6, r0
	bne	.LBB10_4
	b	.LBB10_10
.section bb10_10
.LBB10_10:                              @ %for.end
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp10:
	.size	reclaim_gaps, .Ltmp10-reclaim_gaps
	.cantunwind
	.fnend

	.align	2
	.type	load_deps,%function
.section bb11_0
load_deps:                              @ @load_deps
	.fnstart
.Leh_func_begin11:
.LBB11_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB11_1
.section bb11_1
.LBB11_1:                               @ %entry
	b	.LBB11_2
.section bb11_2
.LBB11_2:                               @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB11_3
.section bb11_3
.LBB11_3:                               @ %entry
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB11_16
	b	.LBB11_4
.section bb11_4
.LBB11_4:                               @ %for.cond3.preheader.lr.ph
	ldr	r9, .LCPI11_3
	ldr	r11, .LCPI11_2
	mov	r10, #8
	mov	r6, r4
	mov	r5, #0
	b	.LBB11_5
.LCPI11_2:
	.long	_MergedGlobals1
.LCPI11_3:
	.long	.L.str26
.section bb11_5
.LBB11_5:                               @ %for.cond3.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB11_7 Depth 2
	mov	r8, #4
	b	.LBB11_7
.section bb11_6
.LBB11_6:                               @ %for.inc
                                        @   in Loop: Header=BB11_7 Depth=2
	add	r8, r8, #8
	b	.LBB11_7
.section bb11_7
.LBB11_7:                               @ %for.cond3
                                        @   Parent Loop BB11_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6, #8]
	add	r1, r0, r8
	ldr	r1, [r1, #-4]
	cmp	r1, #0
	beq	.LBB11_15
	b	.LBB11_8
.section bb11_8
.LBB11_8:                               @ %for.cond3
                                        @   in Loop: Header=BB11_7 Depth=2
	cmp	r1, #1
	bne	.LBB11_6
	b	.LBB11_9
.section bb11_9
.LBB11_9:                               @ %if.end
                                        @   in Loop: Header=BB11_7 Depth=2
	ldr	r0, [r0, r8]
	ldr	r1, [r6, #52]
	add	r0, r1, r0
	mov	r1, r6
	b	.LBB11_10
.section bb11_10
.LBB11_10:                              @ %if.end
                                        @   in Loop: Header=BB11_7 Depth=2
	bl	load_library
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB11_14
	b	.LBB11_11
.section bb11_11
.LBB11_11:                              @ %if.end17
                                        @   in Loop: Header=BB11_7 Depth=2
	ldrb	r0, [r11, #1]
	cmp	r0, #1
	bne	.LBB11_6
	b	.LBB11_12
.section bb11_12
.LBB11_12:                              @ %if.then19
                                        @   in Loop: Header=BB11_7 Depth=2
	ldr	r0, [r4, #84]
	add	r1, r10, r5, lsl #2
	bl	realloc
	cmp	r0, #0
	beq	.LBB11_17
	b	.LBB11_13
.section bb11_13
.LBB11_13:                              @ %if.end24
                                        @   in Loop: Header=BB11_7 Depth=2
	str	r7, [r0, r5, lsl #2]
	add	r5, r5, #1
	mov	r1, #0
	str	r1, [r0, r5, lsl #2]
	str	r0, [r4, #84]
	b	.LBB11_6
.section bb11_14
.LBB11_14:                              @ %if.then11
                                        @   in Loop: Header=BB11_7 Depth=2
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #52]
	ldr	r2, [r6, #4]
	ldr	r0, [r0, r8]
	add	r1, r1, r0
	mov	r0, r9
	bl	error
	b	.LBB11_6
.section bb11_15
.LBB11_15:                              @ %for.inc29
                                        @   in Loop: Header=BB11_5 Depth=1
	ldr	r6, [r6, #12]
	cmp	r6, #0
	bne	.LBB11_5
	b	.LBB11_16
.section bb11_16
.LBB11_16:                              @ %for.end30
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb11_17
.LBB11_17:                              @ %if.then23
	ldr	r0, [r11, #36]
	mov	r1, #1
	bl	longjmp
.Ltmp11:
	.size	load_deps, .Ltmp11-load_deps
	.cantunwind
	.fnend

	.align	2
	.type	do_init_fini,%function
.section bb12_0
do_init_fini:                           @ @do_init_fini
	.fnstart
.Leh_func_begin12:
.LBB12_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB12_1
.section bb12_1
.LBB12_1:                               @ %entry
	b	.LBB12_2
.section bb12_2
.LBB12_2:                               @ %entry
	.pad	#140
	sub	sp, sp, #140
	b	.LBB12_3
.section bb12_3
.LBB12_3:                               @ %entry
	mov	r4, r0
	add	r0, sp, #4
	mov	r1, #136
	b	.LBB12_4
.section bb12_4
.LBB12_4:                               @ %entry
	mov	r2, #0
	mov	r7, #0
	bl	__aeabi_memset
	ldr	r0, .LCPI12_0
	ldr	r5, [r0, #20]
	cmp	r5, #0
	beq	.LBB12_6
	b	.LBB12_5
.LCPI12_0:
	.long	__libc
.section bb12_5
.LBB12_5:                               @ %if.then
	ldr	r0, .LCPI12_3
	add	r0, r0, #4
	bl	pthread_mutex_lock
	mov	r7, r5
	b	.LBB12_6
.LCPI12_3:
	.long	_MergedGlobals
.section bb12_6
.LBB12_6:                               @ %for.cond.preheader
	cmp	r4, #0
	beq	.LBB12_19
	b	.LBB12_7
.section bb12_7
.LBB12_7:                               @ %for.body.lr.ph
	ldr	r0, .LCPI12_4
	ldr	r8, .LCPI12_7
	mov	r6, #8192
	add	r11, sp, #4
	b	.LBB12_8
.LCPI12_4:
	.long	_MergedGlobals
.LCPI12_7:
	.long	_MergedGlobals1
.section bb12_8
.LBB12_8:                               @ %for.body.lr.ph
	mov	r5, #0
	orr	r6, r6, #67108864
	add	r0, r0, #4
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB12_9
.section bb12_9
.LBB12_9:                               @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB12_14 Depth 2
	ldrb	r0, [r4, #82]
	cmp	r0, #0
	bne	.LBB12_18
	b	.LBB12_10
.section bb12_10
.LBB12_10:                              @ %if.end4
                                        @   in Loop: Header=BB12_9 Depth=1
	mov	r0, #1
	mov	r1, r11
	mov	r2, #34
	strb	r0, [r4, #82]
	b	.LBB12_11
.section bb12_11
.LBB12_11:                              @ %if.end4
                                        @   in Loop: Header=BB12_9 Depth=1
	ldr	r0, [r4, #8]
	bl	decode_vec
	ldr	r0, [sp, #4]
	tst	r0, r6
	b	.LBB12_12
.section bb12_12
.LBB12_12:                              @ %if.end4
                                        @   in Loop: Header=BB12_9 Depth=1
	ldrne	r1, [r8, #40]
	strne	r1, [r4, #152]
	strne	r4, [r8, #40]
	tst	r0, #33554432
	ldrne	r0, [sp, #112]
	cmpne	r5, r0, lsr #2
	beq	.LBB12_15
	b	.LBB12_13
.section bb12_13
.LBB12_13:                              @ %while.body.lr.ph
                                        @   in Loop: Header=BB12_9 Depth=1
	sub	r9, r5, r0, lsr #2
	ldr	r0, [r4]
	ldr	r1, [sp, #104]
	add	r10, r0, r1
	b	.LBB12_14
.section bb12_14
.LBB12_14:                              @ %while.body
                                        @   Parent Loop BB12_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r10], #4
	mov	lr, pc
	mov	pc, r0
	adds	r9, r9, #1
	bne	.LBB12_14
	b	.LBB12_15
.section bb12_15
.LBB12_15:                              @ %if.end16
                                        @   in Loop: Header=BB12_9 Depth=1
	cmp	r7, #0
	bne	.LBB12_18
	b	.LBB12_16
.section bb12_16
.LBB12_16:                              @ %land.lhs.true
                                        @   in Loop: Header=BB12_9 Depth=1
	ldr	r0, .LCPI12_5
	mov	r7, #0
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.LBB12_18
	b	.LBB12_17
.LCPI12_1:
	.long	__libc
.LCPI12_5:
	.long	_MergedGlobals
.section bb12_17
.LBB12_17:                              @ %if.then19
                                        @   in Loop: Header=BB12_9 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	bl	pthread_mutex_lock
	mov	r7, #1
	b	.LBB12_18
.section bb12_18
.LBB12_18:                              @ %for.inc
                                        @   in Loop: Header=BB12_9 Depth=1
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.LBB12_9
	b	.LBB12_19
.section bb12_19
.LBB12_19:                              @ %for.end
	cmp	r7, #0
	beq	.LBB12_21
	b	.LBB12_20
.section bb12_20
.LBB12_20:                              @ %if.then23
	ldr	r0, .LCPI12_6
	add	r0, r0, #4
	bl	pthread_mutex_unlock
	b	.LBB12_21
.LCPI12_6:
	.long	_MergedGlobals
.section bb12_21
.LBB12_21:                              @ %if.end25
	add	sp, sp, #140
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp12:
	.size	do_init_fini, .Ltmp12-do_init_fini
	.cantunwind
	.fnend

	.globl	dlopen
	.align	2
	.type	dlopen,%function
.section bb13_0
dlopen:                                 @ @dlopen
	.fnstart
.Leh_func_begin13:
.LBB13_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB13_1
.section bb13_1
.LBB13_1:                               @ %entry
	b	.LBB13_2
.section bb13_2
.LBB13_2:                               @ %entry
	.pad	#412
	sub	sp, sp, #412
	b	.LBB13_3
.section bb13_3
.LBB13_3:                               @ %entry
	mov	r7, r0
	mov	r6, r1
	cmp	r7, #0
	beq	.LBB13_24
	b	.LBB13_4
.section bb13_4
.LBB13_4:                               @ %if.end
	add	r1, sp, #404
	mov	r0, #1
	bl	pthread_setcancelstate
	ldr	r4, .LCPI13_0
	b	.LBB13_5
.LCPI13_0:
	.long	_MergedGlobals1
.section bb13_5
.LBB13_5:                               @ %if.end
	add	r8, r4, #84
	mov	r0, r8
	bl	pthread_rwlock_wrlock
	bl	__inhibit_ptc
	b	.LBB13_6
.section bb13_6
.LBB13_6:                               @ %if.end
	mov	r0, #0
	and	r1, r6, #4
	str	r0, [sp, #408]
	ldr	r0, .LCPI13_5
	b	.LBB13_7
.LCPI13_5:
	.long	_MergedGlobals
.section bb13_7
.LBB13_7:                               @ %if.end
	ldr	r11, [r4, #8]
	ldr	r9, [r4, #16]
	ldr	r5, [r4, #20]
	str	r1, [r4, #32]
	b	.LBB13_8
.section bb13_8
.LBB13_8:                               @ %if.end
	ldr	r10, [r0]
	add	r0, sp, #8
	str	r0, [r4, #36]
	bl	setjmp
	cmp	r0, #0
	beq	.LBB13_25
	b	.LBB13_9
.section bb13_9
.LBB13_9:                               @ %if.then4
	ldr	r0, [sp, #408]
	cmp	r0, #0
	beq	.LBB13_16
	b	.LBB13_10
.section bb13_10
.LBB13_10:                              @ %land.lhs.true
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	cmp	r0, #0
	beq	.LBB13_16
	b	.LBB13_11
.section bb13_11
.LBB13_11:                              @ %for.cond.preheader
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB13_16
	b	.LBB13_12
.section bb13_12
.LBB13_12:
	mov	r0, #0
	mov	r1, #0
	b	.LBB13_13
.section bb13_13
.LBB13_13:                              @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	ldr	r2, [r2, r0]
	ldrsb	r2, [r2, #80]
	cmp	r2, #0
	bge	.LBB13_15
	b	.LBB13_14
.section bb13_14
.LBB13_14:                              @ %if.then13
                                        @   in Loop: Header=BB13_13 Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	ldr	r2, [r2, r0]
	strb	r1, [r2, #80]
	b	.LBB13_15
.section bb13_15
.LBB13_15:                              @ %for.inc
                                        @   in Loop: Header=BB13_13 Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	add	r2, r2, r0
	add	r0, r0, #4
	ldr	r2, [r2, #4]
	cmp	r2, #0
	bne	.LBB13_13
	b	.LBB13_16
.section bb13_16
.LBB13_16:                              @ %if.end18
	ldr	r0, [r5, #12]
	str	r0, [sp, #408]
	b	.LBB13_18
.section bb13_17
.LBB13_17:                              @ %while.end
                                        @   in Loop: Header=BB13_18 Depth=1
	ldr	r0, [r0, #84]
	bl	free
	ldr	r0, [sp, #408]
	bl	free
	str	r6, [sp, #408]
	b	.LBB13_18
.section bb13_18
.LBB13_18:                              @ %if.end18
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB13_21 Depth 2
	ldr	r0, [sp, #408]
	cmp	r0, #0
	beq	.LBB13_22
	b	.LBB13_19
.section bb13_19
.LBB13_19:                              @ %for.body22
                                        @   in Loop: Header=BB13_18 Depth=1
	ldr	r0, [sp, #408]
	ldr	r6, [r0, #12]
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #56]
	ldr	r1, [sp, #408]
	ldr	r1, [r1, #60]
	bl	munmap
	b	.LBB13_21
.section bb13_20
.LBB13_20:                              @ %while.body
                                        @   in Loop: Header=BB13_21 Depth=2
	ldr	r0, [r0, #148]
	ldr	r7, [r0, #8]
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #148]
	bl	free
	ldr	r0, [sp, #408]
	str	r7, [r0, #148]
	b	.LBB13_21
.section bb13_21
.LBB13_21:                              @ %while.body
                                        @   Parent Loop BB13_18 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #408]
	ldr	r1, [r0, #148]
	ldr	r0, [sp, #408]
	cmp	r1, #0
	bne	.LBB13_20
	b	.LBB13_17
.section bb13_22
.LBB13_22:                              @ %for.end32
	ldr	r0, .LCPI13_6
	str	r11, [r4, #8]
	str	r9, [r4, #16]
	str	r5, [r4, #20]
	b	.LBB13_23
.LCPI13_6:
	.long	_MergedGlobals
.section bb13_23
.LBB13_23:                              @ %for.end32
	str	r10, [r0]
	mov	r0, #0
	str	r0, [r5, #12]
	str	r0, [sp, #408]
	b	.LBB13_54
.section bb13_24
.LBB13_24:                              @ %if.then
	ldr	r0, .LCPI13_7
	ldr	r0, [r0, #4]
	b	.LBB13_59
.LCPI13_1:
	.long	_MergedGlobals1
.LCPI13_7:
	.long	_MergedGlobals
.section bb13_25
.LBB13_25:                              @ %if.else
	ldr	r1, [r4, #4]
	mov	r0, r7
	bl	load_library
	str	r0, [sp, #408]
	ldr	r0, [sp, #408]
	cmp	r0, #0
	beq	.LBB13_52
	b	.LBB13_26
.section bb13_26
.LBB13_26:                              @ %if.end40
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	cmp	r0, #0
	bne	.LBB13_42
	b	.LBB13_27
.section bb13_27
.LBB13_27:                              @ %if.then43
	ldr	r0, [sp, #408]
	bl	load_deps
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	cmp	r0, #0
	beq	.LBB13_33
	b	.LBB13_28
.section bb13_28
.LBB13_28:                              @ %for.cond47.preheader
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB13_33
	b	.LBB13_29
.section bb13_29
.LBB13_29:
	mov	r0, #0
	mov	r1, #255
	b	.LBB13_30
.section bb13_30
.LBB13_30:                              @ %for.body51
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	ldr	r2, [r2, r0]
	ldrb	r2, [r2, #80]
	cmp	r2, #0
	bne	.LBB13_32
	b	.LBB13_31
.section bb13_31
.LBB13_31:                              @ %if.then56
                                        @   in Loop: Header=BB13_30 Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	ldr	r2, [r2, r0]
	strb	r1, [r2, #80]
	b	.LBB13_32
.section bb13_32
.LBB13_32:                              @ %for.inc61
                                        @   in Loop: Header=BB13_30 Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	add	r2, r2, r0
	add	r0, r0, #4
	ldr	r2, [r2, #4]
	cmp	r2, #0
	bne	.LBB13_30
	b	.LBB13_33
.section bb13_33
.LBB13_33:                              @ %if.end64
	ldr	r0, [sp, #408]
	ldrb	r0, [r0, #80]
	cmp	r0, #0
	ldreq	r0, [sp, #408]
	b	.LBB13_34
.section bb13_34
.LBB13_34:                              @ %if.end64
	moveq	r1, #255
	strbeq	r1, [r0, #80]
	ldr	r0, [sp, #408]
	bl	reloc_all
	b	.LBB13_35
.section bb13_35
.LBB13_35:                              @ %if.end64
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	cmp	r0, #0
	beq	.LBB13_41
	b	.LBB13_36
.section bb13_36
.LBB13_36:                              @ %for.cond73.preheader
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB13_41
	b	.LBB13_37
.section bb13_37
.LBB13_37:
	mov	r0, #0
	mov	r1, #0
	b	.LBB13_38
.section bb13_38
.LBB13_38:                              @ %for.body77
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	ldr	r2, [r2, r0]
	ldrsb	r2, [r2, #80]
	cmp	r2, #0
	bge	.LBB13_40
	b	.LBB13_39
.section bb13_39
.LBB13_39:                              @ %if.then84
                                        @   in Loop: Header=BB13_38 Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	ldr	r2, [r2, r0]
	strb	r1, [r2, #80]
	b	.LBB13_40
.section bb13_40
.LBB13_40:                              @ %for.inc89
                                        @   in Loop: Header=BB13_38 Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	add	r2, r2, r0
	add	r0, r0, #4
	ldr	r2, [r2, #4]
	cmp	r2, #0
	bne	.LBB13_38
	b	.LBB13_41
.section bb13_41
.LBB13_41:                              @ %if.end92
	ldr	r0, [sp, #408]
	ldrsb	r0, [r0, #80]
	cmp	r0, #0
	ldrlt	r0, [sp, #408]
	movlt	r1, #0
	strblt	r1, [r0, #80]
	b	.LBB13_42
.section bb13_42
.LBB13_42:                              @ %if.end100
	tst	r6, #256
	beq	.LBB13_49
	b	.LBB13_43
.section bb13_43
.LBB13_43:                              @ %if.then103
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	cmp	r0, #0
	beq	.LBB13_48
	b	.LBB13_44
.section bb13_44
.LBB13_44:                              @ %for.cond107.preheader
	ldr	r0, [sp, #408]
	ldr	r0, [r0, #84]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB13_48
	b	.LBB13_45
.section bb13_45
.LBB13_45:
	mov	r0, #0
	mov	r1, #1
	b	.LBB13_46
.section bb13_46
.LBB13_46:                              @ %for.body111
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	ldr	r2, [r2, r0]
	strb	r1, [r2, #80]
	b	.LBB13_47
.section bb13_47
.LBB13_47:                              @ %for.body111
                                        @   in Loop: Header=BB13_46 Depth=1
	ldr	r2, [sp, #408]
	ldr	r2, [r2, #84]
	add	r2, r2, r0
	add	r0, r0, #4
	ldr	r2, [r2, #4]
	cmp	r2, #0
	bne	.LBB13_46
	b	.LBB13_48
.section bb13_48
.LBB13_48:                              @ %if.end118
	ldr	r0, [sp, #408]
	mov	r1, #1
	strb	r1, [r0, #80]
	b	.LBB13_49
.section bb13_49
.LBB13_49:                              @ %if.end120
	ldr	r0, .LCPI13_8
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #20]
	b	.LBB13_50
.LCPI13_8:
	.long	_MergedGlobals
.section bb13_50
.LBB13_50:                              @ %if.end120
	ldr	r0, [r0]
	add	r1, r2, r1, lsl #2
	add	r1, r1, r0
	add	r1, r1, r0, lsl #1
	b	.LBB13_51
.section bb13_51
.LBB13_51:                              @ %if.end120
	rsb	r0, r0, #0
	add	r1, r1, #195
	and	r0, r1, r0
	ldr	r1, .LCPI13_9
	str	r0, [r1, #36]
	b	.LBB13_55
.LCPI13_9:
	.long	__libc
.section bb13_52
.LBB13_52:                              @ %if.then37
	ldr	r0, [r4, #32]
	ldr	r1, .LCPI13_10
	ldr	r2, .LCPI13_11
	mov	r3, r7
	b	.LBB13_53
.LCPI13_10:
	.long	.L.str17
.LCPI13_11:
	.long	.L.str18
.section bb13_53
.LBB13_53:                              @ %if.then37
	cmp	r0, #0
	add	r0, r4, #116
	movne	r2, r1
	mov	r1, #128
	bl	snprintf
	b	.LBB13_54
.section bb13_54
.LBB13_54:                              @ %end
	mov	r0, #1
	strb	r0, [r4, #3]
	b	.LBB13_55
.section bb13_55
.LBB13_55:                              @ %end
	bl	__release_ptc
	ldr	r0, [sp, #408]
	cmp	r0, #0
	beq	.LBB13_57
	b	.LBB13_56
.section bb13_56
.LBB13_56:                              @ %if.then122
	ldr	r0, [r4, #56]
	ldr	r1, [r4, #60]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [r4, #56]
	str	r1, [r4, #60]
	b	.LBB13_57
.section bb13_57
.LBB13_57:                              @ %if.end124
	mov	r0, r8
	bl	pthread_rwlock_unlock
	ldr	r0, [sp, #408]
	cmp	r0, #0
	b	.LBB13_58
.section bb13_58
.LBB13_58:                              @ %if.end124
	movne	r0, r5
	blne	do_init_fini
	ldr	r0, [sp, #404]
	mov	r1, #0
	bl	pthread_setcancelstate
	ldr	r0, [sp, #408]
	b	.LBB13_59
.section bb13_59
.LBB13_59:                              @ %cleanup
	add	sp, sp, #412
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp13:
	.size	dlopen, .Ltmp13-dlopen
	.cantunwind
	.fnend

	.align	2
	.type	load_library,%function
.section bb14_0
load_library:                           @ @load_library
	.fnstart
.Leh_func_begin14:
.LBB14_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB14_1
.section bb14_1
.LBB14_1:                               @ %entry
	b	.LBB14_2
.section bb14_2
.LBB14_2:                               @ %entry
	.setfp	r11, sp, #28
	add	r11, sp, #28
	b	.LBB14_3
.section bb14_3
.LBB14_3:                               @ %entry
	.pad	#804
	sub	sp, sp, #804
	mov	r8, r0
	mov	r9, r1
	b	.LBB14_4
.section bb14_4
.LBB14_4:                               @ %entry
	sub	r0, r11, #704
	mov	r1, #160
	mov	r2, #0
	str	r8, [r11, #-816]        @ 4-byte Spill
	b	.LBB14_5
.section bb14_5
.LBB14_5:                               @ %entry
	bl	__aeabi_memset
	ldrb	r0, [r8]
	mov	r7, #1
	cmp	r0, #108
	bne	.LBB14_12
	b	.LBB14_6
.section bb14_6
.LBB14_6:                               @ %land.lhs.true
	ldrb	r0, [r8, #1]
	cmp	r0, #105
	ldrbeq	r0, [r8, #2]
	cmpeq	r0, #98
	bne	.LBB14_21
	b	.LBB14_7
.section bb14_7
.LBB14_7:                               @ %if.then11
	mov	r0, r8
	mov	r1, #46
	bl	strchr
	cmp	r0, #0
	beq	.LBB14_21
	b	.LBB14_8
.section bb14_8
.LBB14_8:                               @ %if.then14
	ldr	r4, .LCPI14_0
	ldr	r1, .LCPI14_12
	mvn	r2, #2
	add	r6, r8, #3
	sub	r2, r2, r8
	add	r5, r2, r0
	str	r1, [r4, #44]
	b	.LBB14_9
.LCPI14_0:
	.long	_MergedGlobals1
.LCPI14_12:
	.long	load_library.reserved
.section bb14_9
.LBB14_9:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r2, r5
	bl	strncmp
	mov	r1, r0
	ldr	r0, [r4, #44]
	cmp	r1, #0
	beq	.LBB14_15
	b	.LBB14_10
.section bb14_10
.LBB14_10:                              @ %for.inc
                                        @   in Loop: Header=BB14_9 Depth=1
	bl	strlen
	ldr	r1, [r4, #44]
	add	r0, r0, r1
	add	r1, r0, #1
	b	.LBB14_11
.section bb14_11
.LBB14_11:                              @ %for.inc
                                        @   in Loop: Header=BB14_9 Depth=1
	str	r1, [r4, #44]
	ldrb	r0, [r0, #1]
	cmp	r0, #0
	bne	.LBB14_9
	b	.LBB14_21
.section bb14_12
.LBB14_12:                              @ %entry
	cmp	r0, #0
	bne	.LBB14_21
	b	.LBB14_13
.section bb14_13
.LBB14_13:                              @ %if.then
	bl	__errno_location
	mov	r1, #22
	b	.LBB14_14
.section bb14_14
.LBB14_14:                              @ %cleanup
	str	r1, [r0]
	mov	r5, #0
	b	.LBB14_100
.section bb14_15
.LBB14_15:                              @ %for.end
	ldrb	r1, [r0]
	cmp	r1, #0
	beq	.LBB14_21
	b	.LBB14_16
.section bb14_16
.LBB14_16:                              @ %if.then22
	ldrb	r1, [r4]
	mov	r7, #0
	cmp	r1, #1
	bne	.LBB14_21
	b	.LBB14_17
.section bb14_17
.LBB14_17:                              @ %if.then24
	ldr	r1, .LCPI14_13
	mov	r2, #1
	sub	r0, r0, r1
	ldr	r1, [r4, #48]
	tst	r1, r2, lsl r0
	bne	.LBB14_21
	b	.LBB14_18
.LCPI14_13:
	.long	load_library.reserved
.section bb14_18
.LBB14_18:                              @ %if.then28
	lsl	r0, r2, r0
	orr	r0, r1, r0
	str	r0, [r4, #48]
	ldr	r0, [r4, #664]
	b	.LBB14_19
.section bb14_19
.LBB14_19:                              @ %if.then28
	ldr	r3, [r4, #668]
	sub	sp, sp, #8
	ldr	r1, .LCPI14_15
	str	r0, [sp]
	b	.LBB14_20
.LCPI14_15:
	.long	.L.str27
.section bb14_20
.LBB14_20:                              @ %if.then28
	mov	r0, #1
	mov	r2, r8
	bl	dprintf
	add	sp, sp, #8
	b	.LBB14_21
.section bb14_21
.LBB14_21:                              @ %if.end35
	ldr	r4, .LCPI14_14
	mov	r0, r8
	ldr	r1, [r4, #668]
	bl	strcmp
	cmp	r7, #1
	bne	.LBB14_26
	b	.LBB14_22
.LCPI14_1:
	.long	_MergedGlobals1
.LCPI14_14:
	.long	load_library.reserved
.section bb14_22
.LBB14_22:                              @ %if.end35
	cmp	r0, #0
	beq	.LBB14_26
	b	.LBB14_23
.section bb14_23
.LBB14_23:                              @ %if.end50
	mov	r0, r8
	mov	r1, #47
	str	r9, [r11, #-820]        @ 4-byte Spill
	bl	strchr
	cmp	r0, #0
	beq	.LBB14_28
	b	.LBB14_24
.section bb14_24
.LBB14_24:                              @ %if.then53
	mov	r0, r8
	mov	r1, #524288
	bl	open
	mov	r6, r0
	mov	r10, r8
	b	.LBB14_25
.section bb14_25
.LBB14_25:                              @ %if.end159
	mov	r5, #0
	cmp	r6, #0
	bge	.LBB14_79
	b	.LBB14_100
.section bb14_26
.LBB14_26:                              @ %if.then42
	ldr	r0, [r4, #680]
	cmp	r0, #0
	beq	.LBB14_33
	b	.LBB14_27
.section bb14_27
.LBB14_27:                              @ %if.then42.if.end49_crit_edge
	ldr	r5, [r4, #24]
	b	.LBB14_100
.section bb14_28
.LBB14_28:                              @ %for.cond56.preheader
	ldr	r5, [r4, #516]
	b	.LBB14_30
.section bb14_29
.LBB14_29:                              @ %for.inc66
                                        @   in Loop: Header=BB14_30 Depth=1
	ldr	r5, [r5, #12]
	b	.LBB14_30
.section bb14_30
.LBB14_30:                              @ %for.cond56.preheader
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r5, #0
	beq	.LBB14_35
	b	.LBB14_31
.section bb14_31
.LBB14_31:                              @ %for.body58
                                        @   in Loop: Header=BB14_30 Depth=1
	ldr	r0, [r5, #156]
	cmp	r0, #0
	beq	.LBB14_29
	b	.LBB14_32
.section bb14_32
.LBB14_32:                              @ %land.lhs.true60
                                        @   in Loop: Header=BB14_30 Depth=1
	mov	r1, r8
	bl	strcmp
	cmp	r0, #0
	bne	.LBB14_29
	b	.LBB14_99
.section bb14_33
.LBB14_33:                              @ %if.then44
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #24]
	str	r1, [r0, #12]
	ldr	r0, [r4, #20]
	b	.LBB14_34
.section bb14_34
.LBB14_34:                              @ %if.then44
	str	r0, [r4, #680]
	ldr	r0, [r4, #676]
	ldr	r5, [r4, #24]
	cmp	r0, #0
	moveq	r0, r5
	str	r0, [r4, #20]
	b	.LBB14_100
.section bb14_35
.LBB14_35:                              @ %for.end68
	mov	r0, r8
	bl	strlen
	mov	r5, #0
	cmp	r0, #255
	bhi	.LBB14_100
	b	.LBB14_36
.section bb14_36
.LBB14_36:                              @ %if.end73
	ldr	r1, [r4, #12]
	mvn	r6, #0
	cmp	r1, #0
	beq	.LBB14_38
	b	.LBB14_37
.section bb14_37
.LBB14_37:                              @ %if.then75
	sub	r2, r11, #544
	mov	r0, r8
	bl	path_open
	mov	r6, r0
	b	.LBB14_38
.section bb14_38
.LBB14_38:                              @ %for.cond78.preheader
	ldr	r9, [r11, #-820]        @ 4-byte Reload
	lsr	r0, r6, #31
	cmp	r6, #0
	bge	.LBB14_71
	b	.LBB14_39
.section bb14_39
.LBB14_39:                              @ %for.cond78.preheader
	cmp	r9, #0
	beq	.LBB14_71
	b	.LBB14_40
.section bb14_40
.LBB14_40:
	sub	r7, r11, #544
	b	.LBB14_41
.section bb14_41
.LBB14_41:                              @ %for.body84
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB14_46 Depth 2
                                        @     Child Loop BB14_65 Depth 2
	ldr	r1, [r9, #96]
	cmp	r1, #0
	bne	.LBB14_67
	b	.LBB14_42
.section bb14_42
.LBB14_42:                              @ %if.end.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r0, [r9, #92]
	cmp	r0, #0
	beq	.LBB14_68
	b	.LBB14_43
.section bb14_43
.LBB14_43:                              @ %if.end3.i
                                        @   in Loop: Header=BB14_41 Depth=1
	mov	r1, #36
	bl	strchr
	cmp	r0, #0
	beq	.LBB14_51
	b	.LBB14_44
.section bb14_44
.LBB14_44:                              @ %if.end9.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r0, [r9, #92]
	mov	r1, #36
	mov	r8, r6
	mov	r10, r7
	b	.LBB14_45
.section bb14_45
.LBB14_45:                              @ %if.end9.i
                                        @   in Loop: Header=BB14_41 Depth=1
	bl	strchr
	ldr	r4, .LCPI14_18
	ldr	r6, .LCPI14_20
	mov	r7, r0
	mov	r5, #0
	cmp	r7, #0
	beq	.LBB14_52
	b	.LBB14_46
.LCPI14_18:
	.long	.L.str33
.LCPI14_20:
	.long	.L.str34
.section bb14_46
.LBB14_46:                              @ %while.body.i
                                        @   Parent Loop BB14_41 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r7
	mov	r1, r4
	mov	r2, #7
	bl	strncmp
	cmp	r0, #0
	beq	.LBB14_48
	b	.LBB14_47
.section bb14_47
.LBB14_47:                              @ %land.lhs.true.i
                                        @   in Loop: Header=BB14_46 Depth=2
	mov	r0, r7
	mov	r1, r6
	mov	r2, #9
	bl	strncmp
	cmp	r0, #0
	bne	.LBB14_50
	b	.LBB14_48
.section bb14_48
.LBB14_48:                              @ %if.end18.i
                                        @   in Loop: Header=BB14_46 Depth=2
	add	r0, r7, #1
	mov	r1, #36
	bl	strchr
	mov	r7, r0
	add	r5, r5, #1
	cmp	r7, #0
	bne	.LBB14_46
	b	.LBB14_49
.section bb14_49
.LBB14_49:                              @ %while.end.i
                                        @   in Loop: Header=BB14_41 Depth=1
	mov	r0, #0
	cmp	r0, r5, lsr #19
	beq	.LBB14_52
	b	.LBB14_50
.section bb14_50
.LBB14_50:                              @   in Loop: Header=BB14_41 Depth=1
	mov	r7, r10
	mov	r6, r8
	b	.LBB14_68
.section bb14_51
.LBB14_51:                              @ %if.then6.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r1, [r9, #92]
	str	r1, [r9, #96]
	b	.LBB14_67
.section bb14_52
.LBB14_52:                              @ %if.end20.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldrb	r0, [r9, #83]
	cmp	r0, #0
	beq	.LBB14_56
	b	.LBB14_53
.section bb14_53
.LBB14_53:                              @ %if.then22.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r0, .LCPI14_21
	mov	r7, r10
	mov	r6, r8
	ldr	r0, [r0, #12]
	cmp	r0, #0
	bne	.LBB14_68
	b	.LBB14_54
.LCPI14_21:
	.long	__libc
.section bb14_54
.LBB14_54:                              @ %if.end25.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r0, .LCPI14_24
	mov	r1, r7
	mov	r2, #512
	bl	readlink
	mov	r1, #0
	cmp	r1, r0, lsr #9
	bne	.LBB14_68
	b	.LBB14_55
.LCPI14_24:
	.long	.L.str35
.section bb14_55
.LBB14_55:                              @ %if.end29.i
                                        @   in Loop: Header=BB14_41 Depth=1
	strb	r1, [r7, r0]
	mov	r4, r7
	b	.LBB14_57
.section bb14_56
.LBB14_56:                              @ %if.else.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r4, [r9, #4]
	mov	r7, r10
	mov	r6, r8
	b	.LBB14_57
.section bb14_57
.LBB14_57:                              @ %if.end30.i
                                        @   in Loop: Header=BB14_41 Depth=1
	mov	r0, r4
	mov	r1, #47
	bl	strrchr
	mov	r10, r0
	b	.LBB14_58
.section bb14_58
.LBB14_58:                              @ %if.end30.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r0, [r9, #92]
	cmp	r10, #0
	subne	r10, r10, r4
	bl	strlen
	b	.LBB14_59
.section bb14_59
.LBB14_59:                              @ %if.end30.i
                                        @   in Loop: Header=BB14_41 Depth=1
	mla	r1, r10, r5, r0
	add	r0, r1, #1
	bl	malloc
	mov	r8, r0
	str	r8, [r9, #96]
	cmp	r8, #0
	beq	.LBB14_68
	b	.LBB14_60
.section bb14_60
.LBB14_60:                              @ %if.end41.i
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r6, [r9, #92]
	b	.LBB14_65
.section bb14_61
.LBB14_61:                              @ %while.body47.i
                                        @   in Loop: Header=BB14_65 Depth=2
	sub	r5, r7, r6
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	b	.LBB14_62
.section bb14_62
.LBB14_62:                              @ %while.body47.i
                                        @   in Loop: Header=BB14_65 Depth=2
	bl	memcpy
	add	r0, r8, r5
	mov	r1, r4
	mov	r2, r10
	b	.LBB14_63
.section bb14_63
.LBB14_63:                              @ %while.body47.i
                                        @   in Loop: Header=BB14_65 Depth=2
	bl	memcpy
	add	r0, r5, r10
	add	r8, r8, r0
	ldrb	r0, [r7, #1]
	b	.LBB14_64
.section bb14_64
.LBB14_64:                              @ %while.body47.i
                                        @   in Loop: Header=BB14_65 Depth=2
	cmp	r0, #123
	mov	r0, #0
	moveq	r0, #1
	add	r0, r7, r0, lsl #1
	add	r6, r0, #7
	b	.LBB14_65
.section bb14_65
.LBB14_65:                              @ %while.body47.i
                                        @   Parent Loop BB14_41 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r6
	mov	r1, #36
	bl	strchr
	mov	r7, r0
	cmp	r7, #0
	bne	.LBB14_61
	b	.LBB14_66
.section bb14_66
.LBB14_66:                              @ %while.end64.i
                                        @   in Loop: Header=BB14_41 Depth=1
	mov	r0, r8
	mov	r1, r6
	bl	strcpy
	ldr	r1, [r9, #96]
	ldr	r8, [r11, #-816]        @ 4-byte Reload
	sub	r7, r11, #544
	b	.LBB14_67
.section bb14_67
.LBB14_67:                              @ %if.then88
                                        @   in Loop: Header=BB14_41 Depth=1
	mov	r0, r8
	mov	r2, r7
	str	r8, [r11, #-816]        @ 4-byte Spill
	bl	path_open
	mov	r6, r0
	b	.LBB14_68
.section bb14_68
.LBB14_68:                              @ %for.inc92
                                        @   in Loop: Header=BB14_41 Depth=1
	lsr	r0, r6, #31
	cmp	r6, #0
	bge	.LBB14_70
	b	.LBB14_69
.section bb14_69
.LBB14_69:                              @ %for.inc92
                                        @   in Loop: Header=BB14_41 Depth=1
	ldr	r9, [r9, #88]
	ldr	r8, [r11, #-816]        @ 4-byte Reload
	cmp	r9, #0
	bne	.LBB14_41
	b	.LBB14_71
.section bb14_70
.LBB14_70:
	ldr	r8, [r11, #-816]        @ 4-byte Reload
	b	.LBB14_71
.section bb14_71
.LBB14_71:                              @ %for.end94
	cmp	r0, #1
	bne	.LBB14_78
	b	.LBB14_72
.section bb14_72
.LBB14_72:                              @ %if.then97
	ldr	r4, .LCPI14_16
	ldr	r1, [r4, #52]
	cmp	r1, #0
	bne	.LBB14_125
	b	.LBB14_73
.LCPI14_2:
	.long	_MergedGlobals1
.LCPI14_16:
	.long	.L.str27
.section bb14_73
.LBB14_73:                              @ %if.then99
	ldr	r0, [r4, #668]
	ldrb	r1, [r0]
	cmp	r1, #47
	bne	.LBB14_113
	b	.LBB14_74
.section bb14_74
.LBB14_74:
	mov	r7, #47
	mov	r1, r0
	mov	r6, r0
	mov	r2, r0
	b	.LBB14_76
.section bb14_75
.LBB14_75:                              @ %for.cond108
                                        @   in Loop: Header=BB14_76 Depth=1
	and	r3, r7, #255
	cmp	r3, #47
	moveq	r3, r1
	ldrb	r7, [r1, #1]!
	moveq	r2, r6
	movne	r3, r6
	mov	r6, r3
	b	.LBB14_76
.section bb14_76
.LBB14_76:                              @ %for.cond108
                                        @ =>This Inner Loop Header: Depth=1
	tst	r7, #255
	bne	.LBB14_75
	b	.LBB14_77
.section bb14_77
.LBB14_77:                              @ %for.end117
	sub	r3, r2, r0
	cmp	r3, #4096
	movhs	r0, #0
	b	.LBB14_114
.section bb14_78
.LBB14_78:
	ldr	r4, .LCPI14_19
	sub	r10, r11, #544
	b	.LBB14_79
.LCPI14_3:
	.long	_MergedGlobals1
.LCPI14_19:
	.long	.L.str33
.section bb14_79
.LBB14_79:                              @ %if.end163
	sub	r1, r11, #808
	mov	r0, r6
	bl	fstat
	cmp	r0, #0
	blt	.LBB14_86
	b	.LBB14_80
.section bb14_80
.LBB14_80:                              @ %for.cond171.preheader
	ldr	r5, [r4, #516]
	mov	r12, r4
	cmp	r5, #0
	beq	.LBB14_85
	b	.LBB14_81
.section bb14_81
.LBB14_81:                              @ %for.body173.lr.ph
	ldr	r0, [r11, #-808]
	ldr	r1, [r11, #-804]
	ldr	r2, [r11, #-712]
	ldr	r3, [r11, #-708]
	b	.LBB14_82
.section bb14_82
.LBB14_82:                              @ %for.body173
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r5, #64]
	ldr	r7, [r5, #68]
	eor	r7, r7, r1
	eor	r4, r4, r0
	orrs	r7, r4, r7
	bne	.LBB14_84
	b	.LBB14_83
.section bb14_83
.LBB14_83:                              @ %land.lhs.true176
                                        @   in Loop: Header=BB14_82 Depth=1
	ldr	r7, [r5, #72]
	ldr	r4, [r5, #76]
	eor	r4, r4, r3
	eor	r7, r7, r2
	orrs	r7, r7, r4
	beq	.LBB14_95
	b	.LBB14_84
.section bb14_84
.LBB14_84:                              @ %for.inc195
                                        @   in Loop: Header=BB14_82 Depth=1
	ldr	r5, [r5, #12]
	cmp	r5, #0
	bne	.LBB14_82
	b	.LBB14_85
.section bb14_85
.LBB14_85:                              @ %for.end197
	mov	r4, r12
	ldr	r0, [r4, #32]
	cmp	r0, #0
	beq	.LBB14_87
	b	.LBB14_86
.section bb14_86
.LBB14_86:                              @ %if.then167
	mov	r0, r6
	bl	close
	mov	r5, #0
	b	.LBB14_100
.section bb14_87
.LBB14_87:                              @ %cond.end202
	sub	r1, r11, #704
	mov	r0, r6
	bl	map_library
	mov	r9, r0
	b	.LBB14_88
.section bb14_88
.LBB14_88:                              @ %cond.end202
	mov	r0, r6
	bl	close
	mov	r5, #0
	cmp	r9, #0
	beq	.LBB14_100
	b	.LBB14_89
.section bb14_89
.LBB14_89:                              @ %if.end207
	mov	r0, r10
	mov	r7, r8
	bl	strlen
	mov	r1, r4
	b	.LBB14_90
.section bb14_90
.LBB14_90:                              @ %if.end207
	add	r4, r0, #161
	mov	r8, #0
	ldrb	r0, [r1, #1]
	mov	r6, r1
	cmp	r0, #1
	bne	.LBB14_101
	b	.LBB14_91
.section bb14_91
.LBB14_91:                              @ %land.lhs.true212
	ldr	r0, [r11, #-604]
	cmp	r0, #0
	beq	.LBB14_101
	b	.LBB14_92
.section bb14_92
.LBB14_92:                              @ %if.then214
	ldr	r1, [r11, #-596]
	ldr	r2, [r11, #-592]
	ldr	r0, [r6, #8]
	add	r1, r1, r2
	b	.LBB14_93
.section bb14_93
.LBB14_93:                              @ %if.then214
	add	r0, r1, r0, lsl #2
	add	r5, r0, #12
	mvn	r0, #-2147483648
	mov	r1, r5
	b	.LBB14_94
.section bb14_94
.LBB14_94:                              @ %if.then214
	bl	__aeabi_uidiv
	ldr	r1, .LCPI14_22
	ldr	r1, [r1, #20]
	add	r8, r1, #1
	mvn	r1, #0
	cmp	r8, r0
	mlals	r1, r8, r5, r4
	b	.LBB14_102
.LCPI14_22:
	.long	__libc
.section bb14_95
.LBB14_95:                              @ %if.then179
	cmp	r10, r8
	beq	.LBB14_98
	b	.LBB14_96
.section bb14_96
.LBB14_96:                              @ %if.then179
	ldr	r0, [r5, #156]
	cmp	r0, #0
	bne	.LBB14_98
	b	.LBB14_97
.section bb14_97
.LBB14_97:                              @ %if.then185
	ldr	r0, [r5, #4]
	mov	r1, #47
	bl	strrchr
	add	r0, r0, #1
	str	r0, [r5, #156]
	b	.LBB14_98
.section bb14_98
.LBB14_98:                              @ %if.end190
	mov	r0, r6
	bl	close
	b	.LBB14_99
.section bb14_99
.LBB14_99:                              @ %if.then64
	ldr	r0, [r5, #32]
	add	r0, r0, #1
	str	r0, [r5, #32]
	b	.LBB14_100
.section bb14_100
.LBB14_100:                             @ %cleanup
	mov	r0, r5
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb14_101
.LBB14_101:
	mov	r1, r4
	b	.LBB14_102
.section bb14_102
.LBB14_102:                             @ %if.end226
	mov	r0, #1
	mov	r4, #1
	bl	calloc
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB14_112
	b	.LBB14_103
.section bb14_103
.LBB14_103:                             @ %if.end231
	sub	r1, r11, #704
	mov	r0, r5
	mov	r2, #160
	bl	memcpy
	b	.LBB14_104
.section bb14_104
.LBB14_104:                             @ %if.end231
	mov	r0, r5
	bl	decode_dyn
	ldr	r0, [r11, #-808]
	ldr	r1, [r11, #-804]
	b	.LBB14_105
.section bb14_105
.LBB14_105:                             @ %if.end231
	str	r1, [r5, #68]
	str	r0, [r5, #64]
	ldr	r0, [r11, #-712]
	ldr	r1, [r11, #-708]
	b	.LBB14_106
.section bb14_106
.LBB14_106:                             @ %if.end231
	str	r1, [r5, #76]
	str	r0, [r5, #72]
	ldr	r0, [r11, #-820]        @ 4-byte Reload
	str	r4, [r5, #32]
	b	.LBB14_107
.section bb14_107
.LBB14_107:                             @ %if.end231
	mov	r1, r10
	str	r0, [r5, #88]
	add	r0, r5, #160
	str	r0, [r5, #4]
	bl	strcpy
	cmp	r10, r7
	beq	.LBB14_109
	b	.LBB14_108
.section bb14_108
.LBB14_108:                             @ %if.then246
	ldr	r0, [r5, #4]
	mov	r1, #47
	bl	strrchr
	add	r0, r0, #1
	str	r0, [r5, #156]
	b	.LBB14_109
.section bb14_109
.LBB14_109:                             @ %if.end251
	ldr	r0, [r5, #100]
	mov	r4, r6
	cmp	r0, #0
	beq	.LBB14_134
	b	.LBB14_110
.section bb14_110
.LBB14_110:                             @ %if.then254
	ldr	r1, .LCPI14_23
	ldr	r1, [r1]
	cmp	r1, #0
	ldrbeq	r1, [r4, #1]
	eoreq	r1, r1, #1
	tsteq	r1, #1
	bne	.LBB14_126
	b	.LBB14_111
.LCPI14_23:
	.long	__libc
.section bb14_111
.LBB14_111:                             @ %if.then258
	ldr	r1, [r5, #60]
	mov	r0, r9
	bl	munmap
	mov	r0, r5
	bl	free
	bl	__errno_location
	mov	r1, #38
	b	.LBB14_14
.section bb14_112
.LBB14_112:                             @ %if.then229
	ldr	r1, [r11, #-644]
	mov	r0, r9
	bl	munmap
	mov	r5, #0
	b	.LBB14_100
.section bb14_113
.LBB14_113:
	mov	r0, #0
                                        @ implicit-def: R3
	b	.LBB14_114
.section bb14_114
.LBB14_114:                             @ %if.end127
	cmp	r0, #0
	ldr	r7, .LCPI14_25
	mov	r6, sp
	moveq	r3, r0
	b	.LBB14_115
.LCPI14_25:
	.long	.L.str9
.section bb14_115
.LBB14_115:                             @ %if.end127
	cmp	r0, #0
	add	r1, r3, #32
	bic	r1, r1, #7
	sub	r5, sp, r1
	b	.LBB14_116
.section bb14_116
.LBB14_116:                             @ %if.end127
	moveq	r0, r7
	mov	sp, r5
	sub	sp, sp, #8
	ldr	r2, .LCPI14_26
	b	.LBB14_117
.LCPI14_26:
	.long	.L.str28
.section bb14_117
.LBB14_117:                             @ %if.end127
	str	r0, [sp]
	add	r1, r3, #25
	mov	r0, r5
	bl	snprintf
	b	.LBB14_118
.section bb14_118
.LBB14_118:                             @ %if.end127
	add	sp, sp, #8
	ldr	r1, .LCPI14_27
	mov	r0, r5
	bl	fopen
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB14_123
	b	.LBB14_119
.LCPI14_27:
	.long	.L.str29
.section bb14_119
.LBB14_119:                             @ %if.then136
	mov	r0, #0
	sub	r1, r11, #812
	mov	r2, #0
	mov	r3, r5
	b	.LBB14_120
.section bb14_120
.LBB14_120:                             @ %if.then136
	str	r0, [r11, #-812]
	add	r0, r4, #52
	bl	getdelim
	cmp	r0, #0
	bgt	.LBB14_122
	b	.LBB14_121
.section bb14_121
.LBB14_121:                             @ %if.then141
	ldr	r0, [r4, #52]
	bl	free
	str	r7, [r4, #52]
	b	.LBB14_122
.section bb14_122
.LBB14_122:                             @ %if.end142
	mov	r0, r5
	bl	fclose
	b	.LBB14_124
.section bb14_123
.LBB14_123:                             @ %if.else144
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #2
	strne	r7, [r4, #52]
	b	.LBB14_124
.section bb14_124
.LBB14_124:                             @ %if.end151
	mov	sp, r6
	ldr	r1, [r4, #52]
	cmp	r1, #0
	ldreq	r1, .LCPI14_28
	streq	r1, [r4, #52]
	b	.LBB14_125
.LCPI14_28:
	.long	.L.str30
.section bb14_125
.LBB14_125:                             @ %if.end154
	sub	r10, r11, #544
	mov	r0, r8
	mov	r2, r10
	bl	path_open
	mov	r6, r0
	b	.LBB14_25
.section bb14_126
.LBB14_126:                             @ %if.end262
	ldr	r1, [r4, #8]
	add	r1, r1, #1
	str	r1, [r4, #8]
	str	r1, [r5, #116]
	b	.LBB14_127
.section bb14_127
.LBB14_127:                             @ %if.end262
	ldr	r1, .LCPI14_29
	ldr	r3, [r5, #112]
	ldr	r2, [r1]
	rsb	r3, r3, #0
	b	.LBB14_128
.LCPI14_29:
	.long	_MergedGlobals
.section bb14_128
.LBB14_128:                             @ %if.end262
	rsb	r2, r2, #0
	and	r2, r3, r2
	rsb	r3, r2, #0
	str	r3, [r1]
	b	.LBB14_129
.section bb14_129
.LBB14_129:                             @ %if.end262
	ldr	r1, [r4, #16]
	add	r0, r1, r0
	rsb	r0, r0, #0
	bic	r0, r0, r2
	b	.LBB14_130
.section bb14_130
.LBB14_130:                             @ %if.end262
	add	r0, r0, r1
	str	r0, [r5, #120]
	ldr	r0, [r5, #108]
	ldr	r1, [r4, #16]
	b	.LBB14_131
.section bb14_131
.LBB14_131:                             @ %if.end262
	add	r0, r1, r0
	str	r0, [r4, #16]
	ldr	r6, [r5, #4]
	mov	r0, r6
	b	.LBB14_132
.section bb14_132
.LBB14_132:                             @ %if.end262
	bl	strlen
	add	r0, r0, r6
	add	r0, r0, #4
	bic	r0, r0, #3
	b	.LBB14_133
.section bb14_133
.LBB14_133:                             @ %if.end262
	str	r0, [r5, #132]
	ldr	r1, [r4, #8]
	add	r1, r1, #1
	mul	r2, r1, r8
	add	r0, r0, r2, lsl #2
	str	r0, [r5, #136]
	b	.LBB14_134
.section bb14_134
.LBB14_134:                             @ %if.end287
	ldr	r0, [r4, #20]
	mov	r2, r7
	str	r5, [r0, #12]
	ldr	r0, [r4, #20]
	b	.LBB14_135
.section bb14_135
.LBB14_135:                             @ %if.end287
	str	r0, [r5, #16]
	str	r5, [r4, #20]
	ldrb	r0, [r4]
	cmp	r0, #1
	bne	.LBB14_100
	b	.LBB14_136
.section bb14_136
.LBB14_136:                             @ %if.then291
	ldr	r0, [r5]
	sub	sp, sp, #8
	ldr	r1, .LCPI14_17
	str	r0, [sp]
	b	.LBB14_137
.LCPI14_17:
	.long	.L.str27
.section bb14_137
.LBB14_137:                             @ %if.then291
	mov	r0, #1
	mov	r3, r10
	bl	dprintf
	add	sp, sp, #8
	b	.LBB14_100
.Ltmp14:
	.size	load_library, .Ltmp14-load_library
	.cantunwind
	.fnend

	.globl	__dladdr
	.align	2
	.type	__dladdr,%function
.section bb15_0
__dladdr:                               @ @__dladdr
	.fnstart
.Leh_func_begin15:
.LBB15_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB15_1
.section bb15_1
.LBB15_1:                               @ %entry
	b	.LBB15_2
.section bb15_2
.LBB15_2:                               @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB15_3
.section bb15_3
.LBB15_3:                               @ %entry
	ldr	r4, .LCPI15_0
	mov	r5, r0
	mov	r8, r1
	b	.LBB15_4
.LCPI15_0:
	.long	_MergedGlobals1
.section bb15_4
.LBB15_4:                               @ %entry
	add	r6, r4, #84
	mov	r0, r6
	bl	pthread_rwlock_rdlock
	ldr	r7, [r4, #4]
	b	.LBB15_6
.section bb15_5
.LBB15_5:                               @ %for.inc
                                        @   in Loop: Header=BB15_6 Depth=1
	ldr	r7, [r7, #12]
	b	.LBB15_6
.section bb15_6
.LBB15_6:                               @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, #0
	beq	.LBB15_10
	b	.LBB15_7
.section bb15_7
.LBB15_7:                               @ %land.rhs
                                        @   in Loop: Header=BB15_6 Depth=1
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #60]
	sub	r0, r5, r0
	cmp	r0, r1
	bhi	.LBB15_5
	b	.LBB15_8
.section bb15_8
.LBB15_8:                               @ %if.end
	mov	r0, r6
	bl	pthread_rwlock_unlock
	ldr	r0, [r7, #40]
	ldr	r10, [r7, #36]
	ldr	r12, [r7, #52]
	cmp	r0, #0
	beq	.LBB15_12
	b	.LBB15_9
.section bb15_9
.LBB15_9:                               @ %if.then5
	ldr	r2, [r0, #4]
	b	.LBB15_19
.section bb15_10
.LBB15_10:                              @ %if.then.critedge
	mov	r0, r6
	bl	pthread_rwlock_unlock
	mov	r0, #0
	b	.LBB15_11
.section bb15_11
.LBB15_11:                              @ %return
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb15_12
.LBB15_12:                              @ %if.else
	ldr	r1, [r7, #44]
	mov	r0, #0
	ldr	r6, [r1]
	cmp	r6, #0
	beq	.LBB15_11
	b	.LBB15_13
.section bb15_13
.LBB15_13:                              @ %for.body17.preheader
	ldr	r0, [r1, #8]
	ldr	r9, [r1, #4]
	mov	r4, #0
	bic	r2, r0, #-1073741824
	b	.LBB15_14
.section bb15_14
.LBB15_14:                              @ %for.body17.preheader
	add	r0, r1, r0, lsl #2
	add	r10, r10, r9, lsl #4
	add	lr, r2, #4
	add	r0, r0, #16
	mov	r2, #0
	b	.LBB15_15
.section bb15_15
.LBB15_15:                              @ %for.body17
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0, r2, lsl #2]
	add	r2, r2, #1
	cmp	r3, r4
	movhi	r4, r3
	cmp	r2, r6
	blo	.LBB15_15
	b	.LBB15_16
.section bb15_16
.LBB15_16:                              @ %for.end24
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB15_11
	b	.LBB15_17
.section bb15_17
.LBB15_17:                              @ %if.then26
	sub	r2, r4, r9
	add	r0, r6, lr
	add	r0, r0, r2
	add	r0, r1, r0, lsl #2
	b	.LBB15_18
.section bb15_18
.LBB15_18:                              @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r0], #4
	add	r2, r2, #1
	tst	r1, #1
	beq	.LBB15_18
	b	.LBB15_19
.section bb15_19
.LBB15_19:                              @ %for.cond37.preheader
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB15_11
	b	.LBB15_20
.section bb15_20
.LBB15_20:                              @ %for.body39.lr.ph
	mov	lr, #6
	add	r0, r10, #12
	mov	r3, #0
	mov	r11, #1
	mov	r9, #103
                                        @ implicit-def: R10
	orr	lr, lr, #1024
	b	.LBB15_21
.section bb15_21
.LBB15_21:                              @ %for.body39
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, #-8]
	cmp	r4, #0
	beq	.LBB15_26
	b	.LBB15_22
.section bb15_22
.LBB15_22:                              @ %land.lhs.true
                                        @   in Loop: Header=BB15_21 Depth=1
	ldrb	r6, [r0]
	and	r1, r6, #15
	tst	r9, r11, lsl r1
	lsrne	r1, r6, #4
	tstne	lr, r11, lsl r1
	beq	.LBB15_26
	b	.LBB15_23
.section bb15_23
.LBB15_23:                              @ %if.then50
                                        @   in Loop: Header=BB15_21 Depth=1
	ldr	r1, [r7]
	add	r4, r1, r4
	cmp	r4, r5
	bhi	.LBB15_26
	b	.LBB15_24
.section bb15_24
.LBB15_24:                              @ %if.then50
                                        @   in Loop: Header=BB15_21 Depth=1
	cmp	r4, r3
	blo	.LBB15_26
	b	.LBB15_25
.section bb15_25
.LBB15_25:                              @ %if.end58
                                        @   in Loop: Header=BB15_21 Depth=1
	ldr	r1, [r0, #-12]
	mov	r3, r4
	cmp	r4, r5
	add	r10, r12, r1
	beq	.LBB15_27
	b	.LBB15_26
.section bb15_26
.LBB15_26:                              @ %for.inc65
                                        @   in Loop: Header=BB15_21 Depth=1
	add	r0, r0, #16
	subs	r2, r2, #1
	bne	.LBB15_21
	b	.LBB15_28
.section bb15_27
.LBB15_27:
	mov	r3, r5
	b	.LBB15_28
.section bb15_28
.LBB15_28:                              @ %for.end67
	mov	r0, #0
	cmp	r3, #0
	beq	.LBB15_11
	b	.LBB15_29
.section bb15_29
.LBB15_29:                              @ %if.end70
	ldr	r0, [r7, #4]
	str	r0, [r8]
	ldr	r0, [r7]
	stmib	r8, {r0, r10}
	mov	r0, #1
	str	r3, [r8, #12]
	b	.LBB15_11
.Ltmp15:
	.size	__dladdr, .Ltmp15-__dladdr
	.cantunwind
	.fnend

	.globl	__dlsym
	.align	2
	.type	__dlsym,%function
.section bb16_0
__dlsym:                                @ @__dlsym
	.fnstart
.Leh_func_begin16:
.LBB16_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB16_1
.section bb16_1
.LBB16_1:                               @ %entry
	b	.LBB16_2
.section bb16_2
.LBB16_2:                               @ %entry
	.pad	#36
	sub	sp, sp, #36
	b	.LBB16_3
.section bb16_3
.LBB16_3:                               @ %entry
	ldr	r9, .LCPI16_2
	mov	r6, r0
	mov	r4, r2
	b	.LBB16_4
.LCPI16_2:
	.long	_MergedGlobals1
.section bb16_4
.LBB16_4:                               @ %entry
	mov	r10, r1
	add	r8, r9, #84
	mov	r0, r8
	bl	pthread_rwlock_rdlock
	ldr	r0, [r9, #4]
	cmp	r0, r6
	beq	.LBB16_12
	b	.LBB16_5
.section bb16_5
.LBB16_5:                               @ %switch.early.test.i
	cmn	r6, #1
	beq	.LBB16_14
	b	.LBB16_6
.section bb16_6
.LBB16_6:                               @ %switch.early.test.i
	mov	r1, r0
	cmp	r6, #0
	beq	.LBB16_21
	b	.LBB16_7
.section bb16_7
.LBB16_7:                               @ %land.lhs.true32.i
	mov	r0, r6
	bl	invalid_dso_handle
	mov	r4, #0
	cmp	r0, #0
	bne	.LBB16_59
	b	.LBB16_8
.section bb16_8
.LBB16_8:                               @ %if.end36.i
	ldrb	r0, [r10]
	ldr	r1, [r6, #44]
	cmp	r1, #0
	beq	.LBB16_27
	b	.LBB16_9
.section bb16_9
.LBB16_9:                               @ %if.then38.i
	cmp	r0, #0
	beq	.LBB16_32
	b	.LBB16_10
.section bb16_10
.LBB16_10:                              @ %for.body.i.i.preheader
	mov	r7, #5
	add	r1, r10, #1
	orr	r7, r7, #5376
	b	.LBB16_11
.section bb16_11
.LBB16_11:                              @ %for.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r0, r0, #255
	add	r2, r7, r7, lsl #5
	add	r7, r2, r0
	ldrb	r0, [r1], #1
	cmp	r0, #0
	bne	.LBB16_11
	b	.LBB16_33
.section bb16_12
.LBB16_12:                              @ %if.then.i
	mov	r1, #0
	cmn	r6, #1
	movne	r1, #1
	cmp	r6, #0
	beq	.LBB16_20
	b	.LBB16_13
.section bb16_13
.LBB16_13:                              @ %if.then.i
	cmp	r1, #0
	b	.LBB16_14
.section bb16_14
.LBB16_14:                              @ %if.else.i
	mov	r1, r6
	bne	.LBB16_21
	b	.LBB16_15
.section bb16_15
.LBB16_15:                              @ %for.cond.preheader.i
	mov	r1, r0
	b	.LBB16_16
.section bb16_16
.LBB16_16:                              @ %land.rhs.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1, #56]
	ldr	r3, [r1, #60]
	sub	r2, r4, r2
	cmp	r2, r3
	bls	.LBB16_19
	b	.LBB16_17
.section bb16_17
.LBB16_17:                              @ %for.inc.i
                                        @   in Loop: Header=BB16_16 Depth=1
	ldr	r1, [r1, #12]
	cmp	r1, #0
	bne	.LBB16_16
	b	.LBB16_18
.section bb16_18
.LBB16_18:
	mov	r1, r0
	b	.LBB16_19
.section bb16_19
.LBB16_19:                              @ %for.end.i
	ldr	r1, [r1, #12]
	b	.LBB16_21
.section bb16_20
.LBB16_20:
	mov	r1, r6
	b	.LBB16_21
.section bb16_21
.LBB16_21:                              @ %if.end13.i
	add	r0, sp, #28
	mov	r2, r10
	mov	r3, #0
	bl	find_sym
	ldr	r0, [sp, #28]
	cmp	r0, #0
	beq	.LBB16_57
	b	.LBB16_22
.section bb16_22
.LBB16_22:                              @ %if.end17.i
	ldrb	r1, [r0, #12]
	and	r2, r1, #15
	ldr	r1, [sp, #32]
	cmp	r2, #6
	bne	.LBB16_25
	b	.LBB16_23
.section bb16_23
.LBB16_23:                              @ %if.then21.i
	ldr	r1, [r1, #116]
	str	r1, [sp, #20]
	ldr	r0, [r0, #4]
	str	r0, [sp, #24]
	add	r0, sp, #20
	b	.LBB16_24
.section bb16_24
.LBB16_24:                              @ %do_dlsym.exit
	bl	__tls_get_addr
	mov	r4, r0
	b	.LBB16_59
.section bb16_25
.LBB16_25:                              @ %if.end23.i
	ldr	r0, [r0, #4]
	b	.LBB16_26
.section bb16_26
.LBB16_26:                              @ %do_dlsym.exit
	ldr	r1, [r1]
	add	r4, r1, r0
	b	.LBB16_59
.section bb16_27
.LBB16_27:                              @ %if.else41.i
	mov	r7, #0
	mov	r4, #0
	cmp	r0, #0
	beq	.LBB16_31
	b	.LBB16_28
.section bb16_28
.LBB16_28:                              @ %while.body.i.i.preheader
	add	r1, r10, #1
	mov	r2, #0
	mov	r3, #240
	b	.LBB16_29
.section bb16_29
.LBB16_29:                              @ %while.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r0, r0, #255
	add	r0, r0, r2, lsl #4
	and	r2, r3, r0, lsr #24
	eor	r2, r2, r0
	ldrb	r0, [r1], #1
	cmp	r0, #0
	bne	.LBB16_29
	b	.LBB16_30
.section bb16_30
.LBB16_30:                              @ %while.cond.while.end_crit_edge.i.i
	bic	r4, r2, #-268435456
	b	.LBB16_31
.section bb16_31
.LBB16_31:                              @ %sysv_hash.exit.i
	mov	r0, r10
	mov	r1, r4
	mov	r2, r6
	bl	sysv_lookup
	b	.LBB16_34
.section bb16_32
.LBB16_32:
	mov	r7, #5
	orr	r7, r7, #5376
	b	.LBB16_33
.section bb16_33
.LBB16_33:                              @ %gnu_hash.exit.i
	mov	r0, r10
	mov	r1, r7
	mov	r2, r6
	bl	gnu_lookup
	mov	r4, #0
	b	.LBB16_34
.section bb16_34
.LBB16_34:                              @ %if.end44.i
	cmp	r0, #0
	beq	.LBB16_40
	b	.LBB16_35
.section bb16_35
.LBB16_35:                              @ %land.lhs.true46.i
	ldrb	r1, [r0, #12]
	and	r1, r1, #15
	cmp	r1, #6
	bne	.LBB16_37
	b	.LBB16_36
.section bb16_36
.LBB16_36:                              @ %if.then52.i
	ldr	r1, [r6, #116]
	str	r1, [sp, #12]
	ldr	r0, [r0, #4]
	str	r0, [sp, #16]
	add	r0, sp, #12
	b	.LBB16_24
.section bb16_37
.LBB16_37:                              @ %land.lhs.true62.i
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB16_40
	b	.LBB16_38
.section bb16_38
.LBB16_38:                              @ %land.lhs.true65.i
	mov	r2, #1
	mov	r3, #103
	tst	r3, r2, lsl r1
	beq	.LBB16_40
	b	.LBB16_39
.section bb16_39
.LBB16_39:                              @ %if.then71.i
	ldr	r1, [r6]
	add	r4, r1, r0
	b	.LBB16_59
.section bb16_40
.LBB16_40:                              @ %if.end75.i
	ldr	r0, [r6, #84]
	cmp	r0, #0
	ldrne	r2, [r0]
	cmpne	r2, #0
	beq	.LBB16_57
	b	.LBB16_41
.section bb16_41
.LBB16_41:                              @ %for.body81.i.preheader
	add	r0, r10, #1
	mov	r5, #0
	mov	r11, #240
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB16_42
.section bb16_42
.LBB16_42:                              @ %for.body81.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB16_45 Depth 2
                                        @     Child Loop BB16_49 Depth 2
	ldr	r0, [r2, #44]
	cmp	r0, #0
	beq	.LBB16_47
	b	.LBB16_43
.section bb16_43
.LBB16_43:                              @ %if.then86.i
                                        @   in Loop: Header=BB16_42 Depth=1
	cmp	r7, #0
	bne	.LBB16_46
	b	.LBB16_44
.section bb16_44
.LBB16_44:                              @ %if.then88.i
                                        @   in Loop: Header=BB16_42 Depth=1
	ldrb	r1, [r10]
	ldr	r0, [sp]                @ 4-byte Reload
	mov	r7, #5
	orr	r7, r7, #5376
	cmp	r1, #0
	beq	.LBB16_46
	b	.LBB16_45
.section bb16_45
.LBB16_45:                              @ %for.body.i232.i
                                        @   Parent Loop BB16_42 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r1, r1, #255
	add	r3, r7, r7, lsl #5
	add	r7, r3, r1
	ldrb	r1, [r0], #1
	cmp	r1, #0
	bne	.LBB16_45
	b	.LBB16_46
.section bb16_46
.LBB16_46:                              @ %if.end90.i
                                        @   in Loop: Header=BB16_42 Depth=1
	mov	r0, r10
	mov	r1, r7
	bl	gnu_lookup
	b	.LBB16_52
.section bb16_47
.LBB16_47:                              @ %if.else94.i
                                        @   in Loop: Header=BB16_42 Depth=1
	cmp	r4, #0
	bne	.LBB16_51
	b	.LBB16_48
.section bb16_48
.LBB16_48:                              @ %if.then96.i
                                        @   in Loop: Header=BB16_42 Depth=1
	ldrb	r1, [r10]
	ldr	r0, [sp]                @ 4-byte Reload
	mov	r4, #0
	cmp	r1, #0
	beq	.LBB16_51
	b	.LBB16_49
.section bb16_49
.LBB16_49:                              @ %while.body.i219.i
                                        @   Parent Loop BB16_42 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r1, r1, #255
	add	r1, r1, r4, lsl #4
	and	r3, r11, r1, lsr #24
	eor	r4, r3, r1
	ldrb	r1, [r0], #1
	cmp	r1, #0
	bne	.LBB16_49
	b	.LBB16_50
.section bb16_50
.LBB16_50:                              @ %while.cond.while.end_crit_edge.i221.i
                                        @   in Loop: Header=BB16_42 Depth=1
	bic	r4, r4, #-268435456
	b	.LBB16_51
.section bb16_51
.LBB16_51:                              @ %if.end98.i
                                        @   in Loop: Header=BB16_42 Depth=1
	mov	r0, r10
	mov	r1, r4
	bl	sysv_lookup
	b	.LBB16_52
.section bb16_52
.LBB16_52:                              @ %if.end102.i
                                        @   in Loop: Header=BB16_42 Depth=1
	cmp	r0, #0
	beq	.LBB16_56
	b	.LBB16_53
.section bb16_53
.LBB16_53:                              @ %land.lhs.true104.i
                                        @   in Loop: Header=BB16_42 Depth=1
	ldrb	r1, [r0, #12]
	and	r1, r1, #15
	cmp	r1, #6
	beq	.LBB16_60
	b	.LBB16_54
.section bb16_54
.LBB16_54:                              @ %land.lhs.true122.i
                                        @   in Loop: Header=BB16_42 Depth=1
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB16_56
	b	.LBB16_55
.section bb16_55
.LBB16_55:                              @ %land.lhs.true125.i
                                        @   in Loop: Header=BB16_42 Depth=1
	mov	r2, #1
	mov	r3, #103
	tst	r3, r2, lsl r1
	bne	.LBB16_61
	b	.LBB16_56
.section bb16_56
.LBB16_56:                              @ %for.inc139.i
                                        @   in Loop: Header=BB16_42 Depth=1
	ldr	r0, [r6, #84]
	add	r5, r5, #1
	ldr	r2, [r0, r5, lsl #2]
	cmp	r2, #0
	bne	.LBB16_42
	b	.LBB16_57
.section bb16_57
.LBB16_57:                              @ %failed.i
	ldr	r2, .LCPI16_3
	mov	r0, #1
	mov	r1, #128
	mov	r3, r10
	b	.LBB16_58
.LCPI16_3:
	.long	.L.str36
.section bb16_58
.LBB16_58:                              @ %failed.i
	strb	r0, [r9, #3]
	add	r0, r9, #116
	bl	snprintf
	mov	r4, #0
	b	.LBB16_59
.section bb16_59
.LBB16_59:                              @ %do_dlsym.exit
	mov	r0, r8
	bl	pthread_rwlock_unlock
	mov	r0, r4
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb16_60
.LBB16_60:                              @ %if.then110.i
	ldr	r1, [r6, #84]
	ldr	r1, [r1, r5, lsl #2]
	ldr	r1, [r1, #116]
	str	r1, [sp, #4]
	ldr	r0, [r0, #4]
	str	r0, [sp, #8]
	add	r0, sp, #4
	b	.LBB16_24
.section bb16_61
.LBB16_61:                              @ %if.then132.i
	ldr	r1, [r6, #84]
	ldr	r1, [r1, r5, lsl #2]
	b	.LBB16_26
.Ltmp16:
	.size	__dlsym, .Ltmp16-__dlsym
	.cantunwind
	.fnend

	.globl	dl_iterate_phdr
	.align	2
	.type	dl_iterate_phdr,%function
.section bb17_0
dl_iterate_phdr:                        @ @dl_iterate_phdr
	.fnstart
.Leh_func_begin17:
.LBB17_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB17_1
.section bb17_1
.LBB17_1:                               @ %entry
	b	.LBB17_2
.section bb17_2
.LBB17_2:                               @ %entry
	.pad	#52
	sub	sp, sp, #52
	b	.LBB17_3
.section bb17_3
.LBB17_3:                               @ %entry
	ldr	r10, .LCPI17_0
	mov	r8, r0
	mov	r0, #0
	b	.LBB17_4
.LCPI17_0:
	.long	_MergedGlobals1
.section bb17_4
.LBB17_4:                               @ %entry
	str	r1, [sp, #4]            @ 4-byte Spill
	ldr	r4, [r10, #4]
	cmp	r4, #0
	beq	.LBB17_14
	b	.LBB17_5
.section bb17_5
.LBB17_5:                               @ %for.body.lr.ph
	add	r9, sp, #8
	mov	r11, #0
	add	r5, r9, #24
	add	r6, r9, #16
	b	.LBB17_6
.section bb17_6
.LBB17_6:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	ldr	r1, [r10, #60]
	mov	r7, r8
	str	r0, [sp, #8]
	b	.LBB17_7
.section bb17_7
.LBB17_7:                               @ %for.body
                                        @   in Loop: Header=BB17_6 Depth=1
	ldr	r0, [r4, #4]
	str	r0, [sp, #12]
	ldr	r0, [r4, #20]
	str	r0, [sp, #16]
	b	.LBB17_8
.section bb17_8
.LBB17_8:                               @ %for.body
                                        @   in Loop: Header=BB17_6 Depth=1
	ldr	r0, [r4, #24]
	strh	r0, [sp, #20]
	ldr	r0, [r10, #56]
	stm	r6, {r0, r1}
	b	.LBB17_9
.section bb17_9
.LBB17_9:                               @ %for.body
                                        @   in Loop: Header=BB17_6 Depth=1
	str	r11, [r5]
	str	r11, [r5, #4]
	mov	r1, #40
	ldr	r0, [r4, #116]
	b	.LBB17_10
.section bb17_10
.LBB17_10:                              @ %for.body
                                        @   in Loop: Header=BB17_6 Depth=1
	ldr	r2, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #40]
	ldr	r0, [r4, #100]
	str	r0, [sp, #44]
	b	.LBB17_11
.section bb17_11
.LBB17_11:                              @ %for.body
                                        @   in Loop: Header=BB17_6 Depth=1
	mov	r0, r9
	mov	lr, pc
	mov	pc, r7
	mov	r8, r7
	cmp	r0, #0
	bne	.LBB17_14
	b	.LBB17_12
.section bb17_12
.LBB17_12:                              @ %if.end
                                        @   in Loop: Header=BB17_6 Depth=1
	add	r7, r10, #84
	mov	r0, r7
	bl	pthread_rwlock_rdlock
	ldr	r4, [r4, #12]
	b	.LBB17_13
.section bb17_13
.LBB17_13:                              @ %if.end
                                        @   in Loop: Header=BB17_6 Depth=1
	mov	r0, r7
	bl	pthread_rwlock_unlock
	mov	r0, #0
	cmp	r4, #0
	bne	.LBB17_6
	b	.LBB17_14
.section bb17_14
.LBB17_14:                              @ %for.end
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp17:
	.size	dl_iterate_phdr, .Ltmp17-dl_iterate_phdr
	.cantunwind
	.fnend

	.globl	__dlinfo
	.align	2
	.type	__dlinfo,%function
.section bb18_0
__dlinfo:                               @ @__dlinfo
	.fnstart
.Leh_func_begin18:
.LBB18_0:                               @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB18_1
.section bb18_1
.LBB18_1:                               @ %entry
	b	.LBB18_2
.section bb18_2
.LBB18_2:                               @ %entry
	mov	r7, r0
	mov	r6, r2
	mov	r5, r1
                                        @ kill: R0<def> R7<kill>
	b	.LBB18_3
.section bb18_3
.LBB18_3:                               @ %entry
	bl	invalid_dso_handle
	mvn	r4, #0
	cmp	r0, #0
	bne	.LBB18_8
	b	.LBB18_4
.section bb18_4
.LBB18_4:                               @ %if.end
	cmp	r5, #2
	bne	.LBB18_6
	b	.LBB18_5
.section bb18_5
.LBB18_5:                               @ %if.end3
	mov	r4, #0
	str	r7, [r6]
	b	.LBB18_8
.section bb18_6
.LBB18_6:                               @ %if.then1
	ldr	r6, .LCPI18_2
	ldr	r2, .LCPI18_3
	mov	r1, #128
	mov	r3, r5
	b	.LBB18_7
.LCPI18_2:
	.long	_MergedGlobals1
.LCPI18_3:
	.long	.L.str19
.section bb18_7
.LBB18_7:                               @ %if.then1
	add	r0, r6, #116
	bl	snprintf
	mov	r0, #1
	strb	r0, [r6, #3]
	b	.LBB18_8
.section bb18_8
.LBB18_8:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp18:
	.size	__dlinfo, .Ltmp18-__dlinfo
	.cantunwind
	.fnend

	.align	2
	.type	invalid_dso_handle,%function
.section bb19_0
invalid_dso_handle:                     @ @invalid_dso_handle
	.fnstart
.Leh_func_begin19:
.LBB19_0:                               @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB19_1
.section bb19_1
.LBB19_1:                               @ %entry
	ldr	r4, .LCPI19_0
	mov	r3, r0
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.LBB19_5
	b	.LBB19_2
.LCPI19_0:
	.long	_MergedGlobals1
.section bb19_2
.LBB19_2:
	mov	r0, #0
	b	.LBB19_3
.section bb19_3
.LBB19_3:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r1, r3
	beq	.LBB19_6
	b	.LBB19_4
.section bb19_4
.LBB19_4:                               @ %for.cond
                                        @   in Loop: Header=BB19_3 Depth=1
	ldr	r1, [r1, #12]
	cmp	r1, #0
	bne	.LBB19_3
	b	.LBB19_5
.section bb19_5
.LBB19_5:                               @ %for.end
	ldr	r2, .LCPI19_2
	add	r0, r4, #116
	mov	r1, #128
	bl	snprintf
	mov	r0, #1
	strb	r0, [r4, #3]
	b	.LBB19_6
.LCPI19_2:
	.long	.L.str37
.section bb19_6
.LBB19_6:                               @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp19:
	.size	invalid_dso_handle, .Ltmp19-invalid_dso_handle
	.cantunwind
	.fnend

	.globl	dlerror
	.align	2
	.type	dlerror,%function
.section bb20_0
dlerror:                                @ @dlerror
	.fnstart
.Leh_func_begin20:
.LBB20_0:                               @ %entry
	ldr	r1, .LCPI20_0
	mov	r0, #0
	ldrb	r2, [r1, #3]
	cmp	r2, #1
	moveq	r0, #0
	strbeq	r0, [r1, #3]
	addeq	r0, r1, #116
	mov	pc, lr
.LCPI20_0:
	.long	_MergedGlobals1
.Ltmp20:
	.size	dlerror, .Ltmp20-dlerror
	.cantunwind
	.fnend

	.globl	dlclose
	.align	2
	.type	dlclose,%function
.section bb21_0
dlclose:                                @ @dlclose
	.fnstart
.Leh_func_begin21:
.LBB21_0:                               @ %entry
	b	invalid_dso_handle
.Ltmp21:
	.size	dlclose, .Ltmp21-dlclose
	.cantunwind
	.fnend

	.align	2
	.type	do_relocs,%function
.section bb22_0
do_relocs:                              @ @do_relocs
	.fnstart
.Leh_func_begin22:
.LBB22_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB22_1
.section bb22_1
.LBB22_1:                               @ %entry
	b	.LBB22_2
.section bb22_2
.LBB22_2:                               @ %entry
	.pad	#52
	sub	sp, sp, #52
	b	.LBB22_3
.section bb22_3
.LBB22_3:                               @ %entry
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #40]           @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	cmp	r2, #0
	beq	.LBB22_58
	b	.LBB22_4
.section bb22_4
.LBB22_4:                               @ %for.body.lr.ph
	ldr	r1, [r0]
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r10, #0
	str	r1, [sp, #20]           @ 4-byte Spill
	b	.LBB22_5
.section bb22_5
.LBB22_5:                               @ %for.body.lr.ph
	ldr	r1, [r0, #36]
	ldr	r0, [r0, #52]
	str	r0, [sp, #8]            @ 4-byte Spill
	ldr	r0, [sp, #24]           @ 4-byte Reload
	b	.LBB22_6
.section bb22_6
.LBB22_6:                               @ %for.body.lr.ph
	str	r1, [sp, #12]           @ 4-byte Spill
	lsl	r0, r0, #2
	str	r0, [sp, #32]           @ 4-byte Spill
                                        @ implicit-def: R0
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB22_20
.section bb22_7
.LBB22_7:                               @ %sw.bb77
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r1, [r7, #116]
	str	r1, [r0]
	b	.LBB22_57
.section bb22_8
.LBB22_8:                               @ %sw.bb79
                                        @   in Loop: Header=BB22_20 Depth=1
	add	r1, r5, r6
	str	r1, [r0]
	b	.LBB22_57
.section bb22_9
.LBB22_9:                               @ %sw.bb81
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r2, [r7, #120]
	add	r1, r6, r5
	add	r1, r1, r2
	add	r1, r1, #8
	str	r1, [r0]
	b	.LBB22_57
.section bb22_10
.LBB22_10:                              @ %sw.bb86
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	cmp	r1, #2
	ldr	r1, .LCPI22_7
	ldrls	r6, [r0, #4]
	ldrb	r0, [r1, #1]
	cmp	r0, #1
	bne	.LBB22_12
	b	.LBB22_11
.LCPI22_7:
	.long	_MergedGlobals1
.section bb22_11
.LBB22_11:                              @ %land.lhs.true93
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r0, [r1, #28]
	ldr	r1, [r7, #116]
	cmp	r1, r0
	bhs	.LBB22_14
	b	.LBB22_12
.section bb22_12
.LBB22_12:                              @ %if.else120
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, .LCPI22_13
	str	r1, [r0, r9]!
	add	r1, r5, r6
	b	.LBB22_13
.LCPI22_13:
	.long	__tlsdesc_static
.section bb22_13
.LBB22_13:                              @ %if.else120
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r2, [r7, #120]
	add	r1, r1, r2
	add	r1, r1, #8
	str	r1, [r0, #4]
	b	.LBB22_57
.section bb22_14
.LBB22_14:                              @ %if.then98
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r0, #12
	bl	malloc
	mov	r8, r0
	cmp	r8, #0
	bne	.LBB22_17
	b	.LBB22_15
.section bb22_15
.LBB22_15:                              @ %if.then102
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r4, #0
	ldr	r2, .LCPI22_10
	movne	r2, r0
	b	.LBB22_16
.LCPI22_10:
	.long	.L.str24
.section bb22_16
.LBB22_16:                              @ %if.then102
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [r0, #4]
	ldr	r0, .LCPI22_11
	bl	error
	b	.LBB22_17
.LCPI22_11:
	.long	.L.str23
.section bb22_17
.LBB22_17:                              @ %if.end109
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r1, [sp, #28]           @ 4-byte Reload
	ldr	r0, [r1, #148]
	str	r0, [r8, #8]
	str	r8, [r1, #148]
	b	.LBB22_18
.section bb22_18
.LBB22_18:                              @ %if.end109
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r1, .LCPI22_12
	ldr	r0, [r7, #116]
	str	r0, [r8]
	add	r0, r6, r5
	b	.LBB22_19
.LCPI22_12:
	.long	__tlsdesc_dynamic
.section bb22_19
.LBB22_19:                              @ %if.end109
                                        @   in Loop: Header=BB22_20 Depth=1
	str	r0, [r8, #4]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r1, [r0, r9]!
	str	r8, [r0, #4]
	b	.LBB22_57
.section bb22_20
.LBB22_20:                              @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	add	r11, r0, r10
	ldr	r0, [r11, #4]
	and	r2, r0, #255
	cmp	r2, #16
	bgt	.LBB22_23
	b	.LBB22_21
.section bb22_21
.LBB22_21:                              @ %for.body
                                        @   in Loop: Header=BB22_20 Depth=1
	cmp	r2, #0
	beq	.LBB22_57
	b	.LBB22_22
.section bb22_22
.LBB22_22:                              @ %for.body
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r8, #1
	cmp	r2, #2
	beq	.LBB22_33
	b	.LBB22_24
.section bb22_23
.LBB22_23:                              @ %for.body
                                        @   in Loop: Header=BB22_20 Depth=1
	sub	r1, r2, #17
	cmp	r1, #6
	bls	.LBB22_25
	b	.LBB22_24
.section bb22_24
.LBB22_24:                              @ %if.then6
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [r0, #4]
	ldr	r0, .LCPI22_14
	bl	error
	b	.LBB22_57
.LCPI22_14:
	.long	.L.str21
.section bb22_25
.LBB22_25:                              @ %for.body
                                        @   in Loop: Header=BB22_20 Depth=1
	lsl	r1, r1, #2
	adr	r2, .LJTI22_0_0
	ldr	pc, [r1, r2]
.LJTI22_0_0:
	.long	.LBB22_26
	.long	.LBB22_27
	.long	.LBB22_28
	.long	.LBB22_29
	.long	.LBB22_30
	.long	.LBB22_31
	.long	.LBB22_32
.section bb22_26
.LBB22_26:                              @ %sw.bb5.i
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r8, #10
	b	.LBB22_33
.section bb22_27
.LBB22_27:                              @ %sw.bb6.i
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r8, #11
	b	.LBB22_33
.section bb22_28
.LBB22_28:                              @ %sw.bb7.i
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r8, #12
	b	.LBB22_33
.section bb22_29
.LBB22_29:                              @ %sw.bb4.i
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r8, #7
	b	.LBB22_33
.section bb22_30
.LBB22_30:                              @ %sw.bb1.i
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r8, #2
	b	.LBB22_33
.section bb22_31
.LBB22_31:                              @ %sw.bb2.i
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r8, #3
	b	.LBB22_33
.section bb22_32
.LBB22_32:                              @ %sw.bb3.i
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r8, #4
	b	.LBB22_33
.section bb22_33
.LBB22_33:                              @ %if.end8
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r9, [r11]
	mov	r1, #0
	cmp	r1, r0, lsr #8
	beq	.LBB22_42
	b	.LBB22_34
.section bb22_34
.LBB22_34:                              @ %if.then12
                                        @   in Loop: Header=BB22_20 Depth=1
	lsr	r5, r0, #8
	ldr	r0, .LCPI22_8
	ldr	r6, [sp, #12]           @ 4-byte Reload
	cmp	r8, #7
	b	.LBB22_35
.LCPI22_8:
	.long	_MergedGlobals1
.section bb22_35
.LBB22_35:                              @ %if.then12
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r3, #0
	mov	r1, r0
	mov	r4, r6
	add	r0, r1, #4
	b	.LBB22_36
.section bb22_36
.LBB22_36:                              @ %if.then12
                                        @   in Loop: Header=BB22_20 Depth=1
	addeq	r0, r1, #516
	cmp	r8, #3
	ldr	r1, [r0]
	ldr	r0, [r4, r5, lsl #4]!
	b	.LBB22_37
.section bb22_37
.LBB22_37:                              @ %if.then12
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r2, [sp, #8]            @ 4-byte Reload
	moveq	r3, #1
	add	r2, r2, r0
	add	r0, sp, #44
	b	.LBB22_38
.section bb22_38
.LBB22_38:                              @ %if.then12
                                        @   in Loop: Header=BB22_20 Depth=1
	str	r2, [sp, #16]           @ 4-byte Spill
	bl	find_sym
	ldr	r2, [sp, #44]
	ldr	r7, [sp, #48]
	cmp	r2, #0
	bne	.LBB22_43
	b	.LBB22_39
.section bb22_39
.LBB22_39:                              @ %land.lhs.true
                                        @   in Loop: Header=BB22_20 Depth=1
	add	r0, r6, r5, lsl #4
	ldrh	r1, [r0, #14]
	cmp	r1, #0
	bne	.LBB22_50
	b	.LBB22_40
.section bb22_40
.LBB22_40:                              @ %lor.lhs.false
                                        @   in Loop: Header=BB22_20 Depth=1
	ldrb	r0, [r0, #12]
	and	r0, r0, #240
	cmp	r0, #32
	bne	.LBB22_50
	b	.LBB22_41
.section bb22_41
.LBB22_41:                              @   in Loop: Header=BB22_20 Depth=1
	mov	r2, #0
	b	.LBB22_43
.section bb22_42
.LBB22_42:                              @   in Loop: Header=BB22_20 Depth=1
	ldr	r7, [sp, #28]           @ 4-byte Reload
	mov	r2, #0
	mov	r4, #0
	b	.LBB22_43
.section bb22_43
.LBB22_43:                              @ %if.end30
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	add	r0, r0, r9
	cmp	r1, #3
	blo	.LBB22_45
	b	.LBB22_44
.section bb22_44
.LBB22_44:                              @ %cond.true33
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r6, [r11, #8]
	b	.LBB22_46
.section bb22_45
.LBB22_45:                              @ %cond.false35
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r1, #1
	mov	r3, #140
	mov	r6, #0
	tst	r3, r1, lsl r8
	ldreq	r6, [r0]
	b	.LBB22_46
.section bb22_46
.LBB22_46:                              @ %cond.end42
                                        @   in Loop: Header=BB22_20 Depth=1
	mov	r1, #0
	cmp	r2, #0
	mov	r5, #0
	ldrne	r5, [r2, #4]
	b	.LBB22_47
.section bb22_47
.LBB22_47:                              @ %cond.end42
                                        @   in Loop: Header=BB22_20 Depth=1
	ldrne	r1, [r7]
	sub	r2, r8, #1
	addne	r1, r1, r5
	cmp	r2, #13
	bhi	.LBB22_57
	b	.LBB22_48
.section bb22_48
.LBB22_48:                              @ %cond.end59
                                        @   in Loop: Header=BB22_20 Depth=1
	lsl	r2, r2, #2
	adr	r3, .LJTI22_1_1
	ldr	pc, [r2, r3]
.LJTI22_1_1:
	.long	.LBB22_56
	.long	.LBB22_56
	.long	.LBB22_56
	.long	.LBB22_55
	.long	.LBB22_49
	.long	.LBB22_51
	.long	.LBB22_52
	.long	.LBB22_53
	.long	.LBB22_57
	.long	.LBB22_7
	.long	.LBB22_8
	.long	.LBB22_9
	.long	.LBB22_57
	.long	.LBB22_10
.section bb22_49
.LBB22_49:                              @ %sw.bb
                                        @   in Loop: Header=BB22_20 Depth=1
	sub	r6, r6, r0
	b	.LBB22_56
.section bb22_50
.LBB22_50:                              @ %if.then25
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r2, [sp, #16]           @ 4-byte Reload
	ldr	r1, [r0, #4]
	ldr	r0, .LCPI22_9
	bl	error
	b	.LBB22_57
.LCPI22_9:
	.long	.L.str22
.section bb22_51
.LBB22_51:                              @ %sw.bb74
                                        @   in Loop: Header=BB22_20 Depth=1
	sub	r2, r6, r0
	add	r1, r2, r1
	str	r1, [r0]
	b	.LBB22_57
.section bb22_52
.LBB22_52:                              @ %sw.bb72
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r2, [r4, #8]
	bl	memcpy
	b	.LBB22_57
.section bb22_53
.LBB22_53:                              @ %sw.bb65
                                        @   in Loop: Header=BB22_20 Depth=1
	cmp	r4, #0
	beq	.LBB22_55
	b	.LBB22_54
.section bb22_54
.LBB22_54:                              @ %if.then67
                                        @   in Loop: Header=BB22_20 Depth=1
	add	r1, r1, r6
	str	r1, [r0]
	b	.LBB22_57
.section bb22_55
.LBB22_55:                              @ %sw.bb63
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	b	.LBB22_56
.section bb22_56
.LBB22_56:                              @ %sw.bb61
                                        @   in Loop: Header=BB22_20 Depth=1
	add	r1, r6, r1
	str	r1, [r0]
	b	.LBB22_57
.section bb22_57
.LBB22_57:                              @ %for.inc
                                        @   in Loop: Header=BB22_20 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	add	r10, r10, r0
	ldr	r0, [sp, #40]           @ 4-byte Reload
	cmp	r0, r10
	bne	.LBB22_20
	b	.LBB22_58
.section bb22_58
.LBB22_58:                              @ %for.end
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp22:
	.size	do_relocs, .Ltmp22-do_relocs
	.cantunwind
	.fnend

	.align	2
	.type	error,%function
.section bb23_0
error:                                  @ @error
	.fnstart
.Leh_func_begin23:
.LBB23_0:                               @ %entry
	.pad	#16
	sub	sp, sp, #16
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB23_1
.section bb23_1
.LBB23_1:                               @ %entry
	b	.LBB23_2
.section bb23_2
.LBB23_2:                               @ %entry
	.pad	#8
	sub	sp, sp, #8
	ldr	r5, .LCPI23_0
	add	r4, sp, #28
	b	.LBB23_3
.LCPI23_0:
	.long	_MergedGlobals1
.section bb23_3
.LBB23_3:                               @ %entry
	mov	r12, r0
	stm	r4, {r1, r2, r3}
	add	r3, sp, #28
	mov	r1, #128
	b	.LBB23_4
.section bb23_4
.LBB23_4:                               @ %entry
	mov	r2, r12
	str	r3, [sp, #4]
	add	r4, r5, #116
	mov	r0, r4
	b	.LBB23_5
.section bb23_5
.LBB23_5:                               @ %entry
	bl	vsnprintf
	ldrb	r0, [r5, #1]
	cmp	r0, #1
	beq	.LBB23_8
	b	.LBB23_6
.section bb23_6
.LBB23_6:                               @ %if.end
	ldr	r1, .LCPI23_2
	mov	r0, #2
	mov	r2, r4
	bl	dprintf
	b	.LBB23_7
.LCPI23_2:
	.long	.L.str25
.section bb23_7
.LBB23_7:                               @ %if.end
	mov	r0, #1
	strb	r0, [r5, #2]
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	add	sp, sp, #16
	mov	pc, lr
.section bb23_8
.LBB23_8:                               @ %if.then
	ldr	r0, [r5, #36]
	mov	r1, #1
	bl	longjmp
.Ltmp23:
	.size	error, .Ltmp23-error
	.cantunwind
	.fnend

	.align	2
	.type	find_sym,%function
.section bb24_0
find_sym:                               @ @find_sym
	.fnstart
.Leh_func_begin24:
.LBB24_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB24_1
.section bb24_1
.LBB24_1:                               @ %entry
	b	.LBB24_2
.section bb24_2
.LBB24_2:                               @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB24_3
.section bb24_3
.LBB24_3:                               @ %entry
	mov	r6, r1
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, #0
	b	.LBB24_4
.section bb24_4
.LBB24_4:                               @ %entry
	mov	r8, r2
	mov	r10, #0
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r0, [sp, #4]            @ 4-byte Spill
	cmp	r6, #0
	beq	.LBB24_31
	b	.LBB24_5
.section bb24_5
.LBB24_5:                               @ %for.body.lr.ph
	mov	r0, #0
	add	r11, r8, #1
	mov	r10, #0
	mov	r9, #240
	b	.LBB24_6
.section bb24_6
.LBB24_6:                               @ %for.body.lr.ph
	mov	r5, #0
	mov	r4, #0
	mov	r7, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB24_7
.section bb24_7
.LBB24_7:                               @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB24_11 Depth 2
                                        @     Child Loop BB24_15 Depth 2
	ldrb	r0, [r6, #80]
	cmp	r0, #0
	beq	.LBB24_29
	b	.LBB24_8
.section bb24_8
.LBB24_8:                               @ %if.end
                                        @   in Loop: Header=BB24_7 Depth=1
	ldr	r0, [r6, #44]
	cmp	r0, #0
	beq	.LBB24_13
	b	.LBB24_9
.section bb24_9
.LBB24_9:                               @ %if.then3
                                        @   in Loop: Header=BB24_7 Depth=1
	cmp	r5, #0
	bne	.LBB24_12
	b	.LBB24_10
.section bb24_10
.LBB24_10:                              @ %if.then5
                                        @   in Loop: Header=BB24_7 Depth=1
	ldrb	r1, [r8]
	mov	r5, #5
	mov	r0, r11
	orr	r5, r5, #5376
	cmp	r1, #0
	beq	.LBB24_12
	b	.LBB24_11
.section bb24_11
.LBB24_11:                              @ %for.body.i
                                        @   Parent Loop BB24_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r1, r1, #255
	add	r2, r5, r5, lsl #5
	add	r5, r2, r1
	ldrb	r1, [r0], #1
	cmp	r1, #0
	bne	.LBB24_11
	b	.LBB24_12
.section bb24_12
.LBB24_12:                              @ %if.end6
                                        @   in Loop: Header=BB24_7 Depth=1
	mov	r0, r8
	mov	r1, r5
	mov	r2, r6
	bl	gnu_lookup
	b	.LBB24_18
.section bb24_13
.LBB24_13:                              @ %if.else
                                        @   in Loop: Header=BB24_7 Depth=1
	cmp	r4, #0
	bne	.LBB24_17
	b	.LBB24_14
.section bb24_14
.LBB24_14:                              @ %if.then9
                                        @   in Loop: Header=BB24_7 Depth=1
	ldrb	r1, [r8]
	mov	r4, #0
	mov	r0, r11
	cmp	r1, #0
	beq	.LBB24_17
	b	.LBB24_15
.section bb24_15
.LBB24_15:                              @ %while.body.i
                                        @   Parent Loop BB24_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r1, r1, #255
	add	r1, r1, r4, lsl #4
	and	r2, r9, r1, lsr #24
	eor	r4, r2, r1
	ldrb	r1, [r0], #1
	cmp	r1, #0
	bne	.LBB24_15
	b	.LBB24_16
.section bb24_16
.LBB24_16:                              @ %while.cond.while.end_crit_edge.i
                                        @   in Loop: Header=BB24_7 Depth=1
	bic	r4, r4, #-268435456
	b	.LBB24_17
.section bb24_17
.LBB24_17:                              @ %if.end11
                                        @   in Loop: Header=BB24_7 Depth=1
	mov	r0, r8
	mov	r1, r4
	mov	r2, r6
	bl	sysv_lookup
	b	.LBB24_18
.section bb24_18
.LBB24_18:                              @ %if.end13
                                        @   in Loop: Header=BB24_7 Depth=1
	cmp	r0, #0
	beq	.LBB24_29
	b	.LBB24_19
.section bb24_19
.LBB24_19:                              @ %if.end16
                                        @   in Loop: Header=BB24_7 Depth=1
	ldrh	r1, [r0, #14]
	cmp	r1, #0
	bne	.LBB24_22
	b	.LBB24_20
.section bb24_20
.LBB24_20:                              @ %if.then18
                                        @   in Loop: Header=BB24_7 Depth=1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	cmp	r1, #0
	bne	.LBB24_29
	b	.LBB24_21
.section bb24_21
.LBB24_21:                              @ %lor.lhs.false
                                        @   in Loop: Header=BB24_7 Depth=1
	ldrb	r1, [r0, #12]
	and	r1, r1, #15
	cmp	r1, #6
	beq	.LBB24_29
	b	.LBB24_22
.section bb24_22
.LBB24_22:                              @ %if.end23
                                        @   in Loop: Header=BB24_7 Depth=1
	ldrb	r1, [r0, #12]
	ldr	r3, [r0, #4]
	and	r2, r1, #15
	cmp	r3, #0
	bne	.LBB24_24
	b	.LBB24_23
.section bb24_23
.LBB24_23:                              @ %if.end23
                                        @   in Loop: Header=BB24_7 Depth=1
	and	r3, r2, #255
	cmp	r3, #6
	bne	.LBB24_29
	b	.LBB24_24
.section bb24_24
.LBB24_24:                              @ %if.end33
                                        @   in Loop: Header=BB24_7 Depth=1
	mov	r3, #103
	tst	r3, r7, lsl r2
	beq	.LBB24_29
	b	.LBB24_25
.section bb24_25
.LBB24_25:                              @ %if.end40
                                        @   in Loop: Header=BB24_7 Depth=1
	mov	r3, #6
	lsr	r2, r1, #4
	orr	r3, r3, #1024
	tst	r3, r7, lsl r2
	beq	.LBB24_29
	b	.LBB24_26
.section bb24_26
.LBB24_26:                              @ %if.end47
                                        @   in Loop: Header=BB24_7 Depth=1
	cmp	r10, #0
	beq	.LBB24_28
	b	.LBB24_27
.section bb24_27
.LBB24_27:                              @ %if.end47
                                        @   in Loop: Header=BB24_7 Depth=1
	cmp	r2, #2
	beq	.LBB24_29
	b	.LBB24_28
.section bb24_28
.LBB24_28:                              @ %if.end56
                                        @   in Loop: Header=BB24_7 Depth=1
	and	r1, r1, #240
	mov	r10, r0
	str	r6, [sp, #4]            @ 4-byte Spill
	cmp	r1, #16
	beq	.LBB24_30
	b	.LBB24_29
.section bb24_29
.LBB24_29:                              @ %for.inc
                                        @   in Loop: Header=BB24_7 Depth=1
	ldr	r6, [r6, #12]
	cmp	r6, #0
	bne	.LBB24_7
	b	.LBB24_31
.section bb24_30
.LBB24_30:
	str	r6, [sp, #4]            @ 4-byte Spill
	mov	r10, r0
	b	.LBB24_31
.section bb24_31
.LBB24_31:                              @ %for.end
	ldr	r0, [sp]                @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	str	r10, [r0]
	str	r1, [r0, #4]
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp24:
	.size	find_sym, .Ltmp24-find_sym
	.cantunwind
	.fnend

	.align	2
	.type	gnu_lookup,%function
.section bb25_0
gnu_lookup:                             @ @gnu_lookup
	.fnstart
.Leh_func_begin25:
.LBB25_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB25_1
.section bb25_1
.LBB25_1:                               @ %entry
	b	.LBB25_2
.section bb25_2
.LBB25_2:                               @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB25_3
.section bb25_3
.LBB25_3:                               @ %entry
	mov	r9, r2
	mov	r4, r1
	mov	r11, r0
	b	.LBB25_4
.section bb25_4
.LBB25_4:                               @ %entry
	ldr	r5, [r9, #44]
	ldr	r6, [r9, #36]
	ldr	r8, [r9, #52]
	mov	r0, r4
	b	.LBB25_5
.section bb25_5
.LBB25_5:                               @ %entry
	ldr	r10, [r5]
	ldr	r7, [r5, #8]
	mov	r1, r10
	bl	__umodsi3
	b	.LBB25_6
.section bb25_6
.LBB25_6:                               @ %entry
	add	r1, r7, #4
	add	r0, r1, r0
	ldr	r3, [r5, r0, lsl #2]
	mov	r0, #0
	cmp	r3, #0
	beq	.LBB25_17
	b	.LBB25_7
.section bb25_7
.LBB25_7:                               @ %if.end
	ldr	r2, [r5, #4]
	add	r1, r1, r10
	add	r6, r6, r3, lsl #4
	lsl	r7, r3, #1
	b	.LBB25_8
.section bb25_8
.LBB25_8:                               @ %if.end
	orr	r10, r4, #1
	add	r1, r1, r3
	sub	r1, r1, r2
	add	r5, r5, r1, lsl #2
	b	.LBB25_9
.section bb25_9
.LBB25_9:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r9, #48]
	ldr	r4, [r5], #4
	cmp	r0, #0
	beq	.LBB25_12
	b	.LBB25_10
.section bb25_10
.LBB25_10:                              @ %lor.lhs.false
                                        @   in Loop: Header=BB25_9 Depth=1
	orr	r1, r4, #1
	cmp	r10, r1
	bne	.LBB25_14
	b	.LBB25_11
.section bb25_11
.LBB25_11:                              @ %lor.lhs.false
                                        @   in Loop: Header=BB25_9 Depth=1
	add	r0, r0, r7
	ldrsh	r0, [r0]
	cmp	r0, #0
	bge	.LBB25_13
	b	.LBB25_14
.section bb25_12
.LBB25_12:                              @ %land.lhs.true
                                        @   in Loop: Header=BB25_9 Depth=1
	orr	r0, r4, #1
	cmp	r10, r0
	bne	.LBB25_14
	b	.LBB25_13
.section bb25_13
.LBB25_13:                              @ %land.lhs.true16
                                        @   in Loop: Header=BB25_9 Depth=1
	ldr	r0, [r6]
	add	r1, r8, r0
	mov	r0, r11
	bl	strcmp
	cmp	r0, #0
	beq	.LBB25_16
	b	.LBB25_14
.section bb25_14
.LBB25_14:                              @ %if.end22
                                        @   in Loop: Header=BB25_9 Depth=1
	add	r7, r7, #2
	add	r6, r6, #16
	tst	r4, #1
	beq	.LBB25_9
	b	.LBB25_15
.section bb25_15
.LBB25_15:
	mov	r0, #0
	b	.LBB25_17
.section bb25_16
.LBB25_16:
	mov	r0, r6
	b	.LBB25_17
.section bb25_17
.LBB25_17:                              @ %return
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp25:
	.size	gnu_lookup, .Ltmp25-gnu_lookup
	.cantunwind
	.fnend

	.align	2
	.type	sysv_lookup,%function
.section bb26_0
sysv_lookup:                            @ @sysv_lookup
	.fnstart
.Leh_func_begin26:
.LBB26_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB26_1
.section bb26_1
.LBB26_1:                               @ %entry
	b	.LBB26_2
.section bb26_2
.LBB26_2:                               @ %entry
	mov	r4, r2
	mov	r8, r0
	b	.LBB26_3
.section bb26_3
.LBB26_3:                               @ %entry
	mov	r0, r1
	ldr	r7, [r4, #40]
	ldr	r9, [r4, #36]
	ldr	r10, [r4, #52]
	ldr	r6, [r7]
	mov	r1, r6
	bl	__umodsi3
	b	.LBB26_5
.section bb26_4
.LBB26_4:                               @ %for.inc
                                        @   in Loop: Header=BB26_5 Depth=1
	add	r0, r5, r6
	b	.LBB26_5
.section bb26_5
.LBB26_5:                               @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r7, r0, lsl #2
	ldr	r5, [r0, #8]
	cmp	r5, #0
	beq	.LBB26_10
	b	.LBB26_6
.section bb26_6
.LBB26_6:                               @ %for.body
                                        @   in Loop: Header=BB26_5 Depth=1
	ldr	r0, [r4, #48]
	cmp	r0, #0
	beq	.LBB26_8
	b	.LBB26_7
.section bb26_7
.LBB26_7:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB26_5 Depth=1
	add	r0, r0, r5, lsl #1
	ldrsh	r0, [r0]
	cmp	r0, #0
	blt	.LBB26_4
	b	.LBB26_8
.section bb26_8
.LBB26_8:                               @ %land.lhs.true
                                        @   in Loop: Header=BB26_5 Depth=1
	mov	r6, r9
	ldr	r0, [r6, r5, lsl #4]!
	add	r1, r10, r0
	mov	r0, r8
	bl	strcmp
	cmp	r0, #0
	beq	.LBB26_11
	b	.LBB26_9
.section bb26_9
.LBB26_9:                               @ %land.lhs.true.for.inc_crit_edge
                                        @   in Loop: Header=BB26_5 Depth=1
	ldr	r6, [r7]
	b	.LBB26_4
.section bb26_10
.LBB26_10:
	mov	r6, #0
	b	.LBB26_11
.section bb26_11
.LBB26_11:                              @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp26:
	.size	sysv_lookup, .Ltmp26-sysv_lookup
	.cantunwind
	.fnend

	.align	2
	.type	reclaim,%function
.section bb27_0
reclaim:                                @ @reclaim
	.fnstart
.Leh_func_begin27:
.LBB27_0:                               @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	ldr	lr, [r0, #124]
	cmp	lr, r1
	bhi	.LBB27_2
	b	.LBB27_1
.section bb27_1
.LBB27_1:                               @ %land.lhs.true
	ldr	r12, [r0, #128]
	cmp	r12, r1
	movhi	r1, r12
	b	.LBB27_2
.section bb27_2
.LBB27_2:                               @ %if.end
	cmp	lr, r2
	bls	.LBB27_4
	b	.LBB27_3
.section bb27_3
.LBB27_3:
	mov	lr, r2
	b	.LBB27_5
.section bb27_4
.LBB27_4:                               @ %land.lhs.true5
	ldr	r3, [r0, #128]
	cmp	r3, r2
	movls	lr, r2
	b	.LBB27_5
.section bb27_5
.LBB27_5:                               @ %if.end10
	add	r1, r1, #23
	bic	r2, lr, #15
	sub	r3, r2, #8
	bic	r1, r1, #15
	b	.LBB27_6
.section bb27_6
.LBB27_6:                               @ %if.end10
	cmp	r3, r1
	subhs	r12, r3, r1
	cmphs	r12, #16
	bhs	.LBB27_8
	b	.LBB27_7
.section bb27_7
.LBB27_7:                               @ %return
	pop	{r4, lr}
	mov	pc, lr
.section bb27_8
.LBB27_8:                               @ %if.end17
	ldr	lr, [r0]
	mov	r4, #1
	add	r0, lr, r1
	add	r1, r12, #8
	b	.LBB27_9
.section bb27_9
.LBB27_9:                               @ %if.end17
	orr	r1, r1, #1
	str	r4, [r0, #-8]
	str	r1, [lr, r3]
	str	r1, [r0, #-4]
	add	r1, r2, lr
	str	r4, [r1, #-4]
	pop	{r4, lr}
	b	free
.Ltmp27:
	.size	reclaim, .Ltmp27-reclaim
	.cantunwind
	.fnend

	.align	2
	.type	do_fini,%function
.section bb28_0
do_fini:                                @ @do_fini
	.fnstart
.Leh_func_begin28:
.LBB28_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB28_1
.section bb28_1
.LBB28_1:                               @ %entry
	b	.LBB28_2
.section bb28_2
.LBB28_2:                               @ %entry
	.pad	#136
	sub	sp, sp, #136
	mov	r0, sp
	mov	r1, #136
	b	.LBB28_3
.section bb28_3
.LBB28_3:                               @ %entry
	mov	r2, #0
	mov	r8, #0
	bl	__aeabi_memset
	ldr	r0, .LCPI28_0
	ldr	r6, [r0, #40]
	cmp	r6, #0
	beq	.LBB28_11
	b	.LBB28_4
.LCPI28_0:
	.long	_MergedGlobals1
.section bb28_4
.LBB28_4:                               @ %for.body.lr.ph
	mov	r4, sp
	b	.LBB28_5
.section bb28_5
.LBB28_5:                               @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB28_9 Depth 2
	ldrb	r0, [r6, #82]
	cmp	r0, #0
	beq	.LBB28_10
	b	.LBB28_6
.section bb28_6
.LBB28_6:                               @ %if.end
                                        @   in Loop: Header=BB28_5 Depth=1
	ldr	r0, [r6, #8]
	mov	r1, r4
	mov	r2, #34
	bl	decode_vec
	b	.LBB28_7
.section bb28_7
.LBB28_7:                               @ %if.end
                                        @   in Loop: Header=BB28_5 Depth=1
	ldrb	r0, [sp, #3]
	tst	r0, #4
	ldrne	r0, [sp, #112]
	cmpne	r8, r0, lsr #2
	beq	.LBB28_10
	b	.LBB28_8
.section bb28_8
.LBB28_8:                               @ %while.body.lr.ph
                                        @   in Loop: Header=BB28_5 Depth=1
	sub	r7, r8, r0, lsr #2
	ldr	r0, [r6]
	ldr	r1, [sp, #104]
	add	r0, r0, r1
	sub	r5, r0, #4
	b	.LBB28_9
.section bb28_9
.LBB28_9:                               @ %while.body
                                        @   Parent Loop BB28_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r5, -r7, lsl #2]
	mov	lr, pc
	mov	pc, r0
	adds	r7, r7, #1
	bne	.LBB28_9
	b	.LBB28_10
.section bb28_10
.LBB28_10:                              @ %for.inc
                                        @   in Loop: Header=BB28_5 Depth=1
	ldr	r6, [r6, #152]
	cmp	r6, #0
	bne	.LBB28_5
	b	.LBB28_11
.section bb28_11
.LBB28_11:                              @ %for.end
	add	sp, sp, #136
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp28:
	.size	do_fini, .Ltmp28-do_fini
	.cantunwind
	.fnend

	.align	2
	.type	path_open,%function
.section bb29_0
path_open:                              @ @path_open
	.fnstart
.Leh_func_begin29:
.LBB29_0:                               @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB29_1
.section bb29_1
.LBB29_1:                               @ %entry
	b	.LBB29_2
.section bb29_2
.LBB29_2:                               @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB29_3
.section bb29_3
.LBB29_3:                               @ %entry
	ldr	r4, .LCPI29_2
	mov	r6, r1
	mov	r9, r0
	b	.LBB29_4
.LCPI29_2:
	.long	.L.str31
.section bb29_4
.LBB29_4:                               @ %entry
	mov	r11, r2
	mov	r0, r6
	mov	r1, r4
	bl	strspn
	b	.LBB29_5
.section bb29_5
.LBB29_5:                               @ %entry
	mov	r7, r0
	mov	r1, r4
	add	r5, r6, r7
	mov	r0, r5
	b	.LBB29_6
.section bb29_6
.LBB29_6:                               @ %entry
	bl	strcspn
	mov	r4, r0
	sub	r0, r4, #1
	cmn	r0, #-2147483646
	bhi	.LBB29_15
	b	.LBB29_7
.section bb29_7
.LBB29_7:
	ldr	r10, .LCPI29_3
	mov	r8, #0
	b	.LBB29_8
.LCPI29_3:
	.long	.L.str31
.section bb29_8
.LBB29_8:                               @ %if.end
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, .LCPI29_4
	mov	r0, r11
	mov	r1, #512
	mov	r3, r4
	b	.LBB29_9
.LCPI29_4:
	.long	.L.str32
.section bb29_9
.LBB29_9:                               @ %if.end
                                        @   in Loop: Header=BB29_8 Depth=1
	stm	sp, {r5, r9}
	bl	snprintf
	cmp	r8, r0, lsr #9
	bne	.LBB29_12
	b	.LBB29_10
.section bb29_10
.LBB29_10:                              @ %if.end5
                                        @   in Loop: Header=BB29_8 Depth=1
	mov	r0, r11
	mov	r1, #524288
	bl	open
	cmp	r0, #0
	bge	.LBB29_16
	b	.LBB29_11
.section bb29_11
.LBB29_11:                              @ %if.end9
                                        @   in Loop: Header=BB29_8 Depth=1
	add	r0, r4, r7
	add	r5, r6, r0
	b	.LBB29_12
.section bb29_12
.LBB29_12:                              @ %for.cond.backedge
                                        @   in Loop: Header=BB29_8 Depth=1
	mov	r6, r5
	mov	r1, r10
	mov	r0, r6
	bl	strspn
	b	.LBB29_13
.section bb29_13
.LBB29_13:                              @ %for.cond.backedge
                                        @   in Loop: Header=BB29_8 Depth=1
	mov	r7, r0
	mov	r1, r10
	add	r5, r6, r7
	mov	r0, r5
	b	.LBB29_14
.section bb29_14
.LBB29_14:                              @ %for.cond.backedge
                                        @   in Loop: Header=BB29_8 Depth=1
	bl	strcspn
	mov	r4, r0
	sub	r0, r4, #1
	cmn	r0, #-2147483647
	blo	.LBB29_8
	b	.LBB29_15
.section bb29_15
.LBB29_15:
	mvn	r0, #0
	b	.LBB29_16
.section bb29_16
.LBB29_16:                              @ %return
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp29:
	.size	path_open, .Ltmp29-path_open
	.cantunwind
	.fnend

	.type	_dl_debug_addr,%object  @ @_dl_debug_addr
	.section	.data.rel.local,"aw",%progbits
	.globl	_dl_debug_addr
	.align	2
_dl_debug_addr:
	.long	_MergedGlobals1+64
	.size	_dl_debug_addr, 4

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"LD_LIBRARY_PATH="
	.size	.L.str, 17

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"LD_PRELOAD="
	.size	.L.str1, 12

	.hidden	__libc
	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"libc.so"
	.size	.L.str2, 8

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"/proc/"
	.size	.L.str3, 7

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"ldd"
	.size	.L.str4, 4

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"list"
	.size	.L.str5, 5

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"library-path"
	.size	.L.str6, 13

	.type	.L.str7,%object         @ @.str7
.L.str7:
	.asciz	"preload"
	.size	.L.str7, 8

	.type	.L.str8,%object         @ @.str8
.L.str8:
	.asciz	"musl libc\nVersion %s\nDynamic Program Loader\nUsage: %s [options] [--] pathname%s\n"
	.size	.L.str8, 81

	.type	.L.str9,%object         @ @.str9
.L.str9:
	.zero	1
	.size	.L.str9, 1

	.type	.L.str10,%object        @ @.str10
.L.str10:
	.asciz	" [args]"
	.size	.L.str10, 8

	.type	.L.str11,%object        @ @.str11
.L.str11:
	.asciz	"%s: cannot load %s: %s\n"
	.size	.L.str11, 24

	.type	.L.str12,%object        @ @.str12
.L.str12:
	.asciz	"%s: %s: Not a valid dynamic program\n"
	.size	.L.str12, 37

	.type	.L.str13,%object        @ @.str13
.L.str13:
	.asciz	"\t%s (%p)\n"
	.size	.L.str13, 10

	.type	.L.str14,%object        @ @.str14
.L.str14:
	.asciz	"linux-gate.so.1"
	.size	.L.str14, 16

	.type	.L.str15,%object        @ @.str15
.L.str15:
	.asciz	"%s: Error getting %zu bytes thread-local storage: %m\n"
	.size	.L.str15, 54

	.type	.L.str16,%object        @ @.str16
.L.str16:
	.asciz	"%s: Thread-local storage not supported by kernel.\n"
	.size	.L.str16, 51

	.type	.L.str17,%object        @ @.str17
.L.str17:
	.asciz	"Library %s is not already loaded"
	.size	.L.str17, 33

	.type	.L.str18,%object        @ @.str18
.L.str18:
	.asciz	"Error loading shared library %s: %m"
	.size	.L.str18, 36

	.type	.L.str19,%object        @ @.str19
.L.str19:
	.asciz	"Unsupported request %d"
	.size	.L.str19, 23

	.type	.L.str20,%object        @ @.str20
.L.str20:
	.asciz	"Error relocating %s: RELRO protection failed: %m"
	.size	.L.str20, 49

	.type	.L.str21,%object        @ @.str21
.L.str21:
	.asciz	"Error relocating %s: unsupported relocation type %d"
	.size	.L.str21, 52

	.type	.L.str22,%object        @ @.str22
.L.str22:
	.asciz	"Error relocating %s: %s: symbol not found"
	.size	.L.str22, 42

	.type	.L.str23,%object        @ @.str23
.L.str23:
	.asciz	"Error relocating %s: cannot allocate TLSDESC for %s"
	.size	.L.str23, 52

	.type	.L.str24,%object        @ @.str24
.L.str24:
	.asciz	"(local)"
	.size	.L.str24, 8

	.type	.L.str25,%object        @ @.str25
.L.str25:
	.asciz	"%s\n"
	.size	.L.str25, 4

	.type	.L.str26,%object        @ @.str26
.L.str26:
	.asciz	"Error loading shared library %s: %m (needed by %s)"
	.size	.L.str26, 51

	.type	load_library.reserved,%object @ @load_library.reserved
	.section	.rodata,"a",%progbits
load_library.reserved:
	.asciz	"c\000pthread\000rt\000m\000dl\000util\000xnet\000"
	.size	load_library.reserved, 29

	.type	.L.str27,%object        @ @.str27
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str27:
	.asciz	"\t%s => %s (%p)\n"
	.size	.L.str27, 16

	.type	.L.str28,%object        @ @.str28
.L.str28:
	.asciz	"%.*s/etc/ld-musl-armhf.path"
	.size	.L.str28, 28

	.type	.L.str29,%object        @ @.str29
.L.str29:
	.asciz	"rbe"
	.size	.L.str29, 4

	.type	.L.str30,%object        @ @.str30
.L.str30:
	.asciz	"/lib:/usr/local/lib:/usr/lib"
	.size	.L.str30, 29

	.type	.L.str31,%object        @ @.str31
.L.str31:
	.asciz	":\n"
	.size	.L.str31, 3

	.type	.L.str32,%object        @ @.str32
.L.str32:
	.asciz	"%.*s/%s"
	.size	.L.str32, 8

	.type	.L.str33,%object        @ @.str33
.L.str33:
	.asciz	"$ORIGIN"
	.size	.L.str33, 8

	.type	.L.str34,%object        @ @.str34
.L.str34:
	.asciz	"${ORIGIN}"
	.size	.L.str34, 10

	.type	.L.str35,%object        @ @.str35
.L.str35:
	.asciz	"/proc/self/exe"
	.size	.L.str35, 15

	.type	.L.str36,%object        @ @.str36
.L.str36:
	.asciz	"Symbol not found: %s"
	.size	.L.str36, 21

	.type	.L.str37,%object        @ @.str37
.L.str37:
	.asciz	"Invalid library handle %p"
	.size	.L.str37, 26

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.data
	.align	4
_MergedGlobals:
	.long	16                      @ 0x10
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.size	_MergedGlobals, 28

	.type	_MergedGlobals1,%object @ @_MergedGlobals1
	.local	_MergedGlobals1
	.comm	_MergedGlobals1,984,16
	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
