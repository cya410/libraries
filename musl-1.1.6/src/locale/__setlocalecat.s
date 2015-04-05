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
	.file	"src/locale/__setlocalecat.bc"
	.globl	__lctrans_impl
	.align	2
	.type	__lctrans_impl,%function
__lctrans_impl:                         @ @__lctrans_impl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @ %if.then
	ldm	r1, {r0, r1}
	mov	r2, r4
	bl	__mo_lookup
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	cmp	r0, #0
	movne	r4, r0
	mov	r0, r4
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__lctrans_impl, .Ltmp0-__lctrans_impl
	.cantunwind
	.fnend

	.globl	__setlocalecat
	.align	2
	.type	__setlocalecat,%function
__setlocalecat:                         @ @__setlocalecat
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#276
	sub	sp, sp, #276
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r4, r0
	ldrb	r0, [r2]
	mov	r8, r1
	cmp	r0, #0
	bne	.LBB1_9
	b	.LBB1_4
.LBB1_4:                                @ %if.then
	ldr	r0, .LCPI1_8
	bl	getenv
	mov	r2, r0
	cmp	r2, #0
	ldrbne	r0, [r2]
	cmpne	r0, #0
	bne	.LBB1_9
	b	.LBB1_5
.LCPI1_8:
	.long	.L.str
.LBB1_5:                                @ %lor.lhs.false
	ldr	r1, .LCPI1_9
	add	r0, r8, r8, lsl #1
	add	r0, r1, r0, lsl #2
	bl	getenv
	b	.LBB1_6
.LCPI1_9:
	.long	envvars
.LBB1_6:                                @ %lor.lhs.false
	mov	r2, r0
	cmp	r2, #0
	ldrbne	r0, [r2]
	cmpne	r0, #0
	bne	.LBB1_9
	b	.LBB1_7
.LBB1_7:                                @ %lor.lhs.false8
	ldr	r0, .LCPI1_10
	bl	getenv
	mov	r2, r0
	cmp	r2, #0
	ldrbne	r0, [r2]
	cmpne	r0, #0
	bne	.LBB1_9
	b	.LBB1_8
.LCPI1_10:
	.long	.L.str1
.LBB1_8:                                @ %lor.rhs
	ldr	r2, .LCPI1_11
	b	.LBB1_9
.LCPI1_11:
	.long	.L.str2
.LBB1_9:                                @ %if.end
	mov	r6, #0
	b	.LBB1_10
.LBB1_10:                               @ %land.lhs.true15
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r2, r6]
	cmp	r0, #0
	cmpne	r0, #47
	beq	.LBB1_12
	b	.LBB1_11
.LBB1_11:                               @ %for.inc
                                        @   in Loop: Header=BB1_10 Depth=1
	add	r6, r6, #1
	cmp	r6, #15
	blo	.LBB1_10
	b	.LBB1_12
.LBB1_12:                               @ %for.end
	ldrb	r0, [r2]
	ldr	r7, .LCPI1_12
	cmp	r0, #46
	beq	.LBB1_15
	b	.LBB1_13
.LCPI1_12:
	.long	.L.str2
.LBB1_13:                               @ %lor.lhs.false27
	ldrb	r1, [r2, r6]
	cmp	r1, #0
	bne	.LBB1_15
	b	.LBB1_14
.LBB1_14:                               @ %if.end32
	mov	r7, r2
	cmp	r0, #67
	bne	.LBB1_16
	b	.LBB1_15
.LBB1_15:                               @ %land.lhs.true37
	ldrb	r0, [r7, #1]
	mov	r1, #1
	cmp	r0, #0
	beq	.LBB1_18
	b	.LBB1_16
.LBB1_16:                               @ %lor.lhs.false40
	ldr	r1, .LCPI1_13
	mov	r0, r7
	bl	strcmp
	mov	r1, #1
	cmp	r0, #0
	beq	.LBB1_18
	b	.LBB1_17
.LCPI1_13:
	.long	.L.str2
.LBB1_17:                               @ %lor.rhs43
	ldr	r1, .LCPI1_14
	mov	r0, r7
	bl	strcmp
	mov	r1, #0
	cmp	r0, #0
	moveq	r1, #1
	b	.LBB1_18
.LCPI1_14:
	.long	.L.str3
.LBB1_18:                               @ %lor.end46
	cmp	r8, #5
	beq	.LBB1_24
	b	.LBB1_19
.LBB1_19:                               @ %lor.end46
	cmp	r8, #1
	beq	.LBB1_59
	b	.LBB1_20
.LBB1_20:                               @ %lor.end46
	cmp	r8, #0
	bne	.LBB1_26
	b	.LBB1_21
.LBB1_21:                               @ %sw.bb
	mov	r0, #1
	cmp	r1, #1
	bne	.LBB1_23
	b	.LBB1_22
.LBB1_22:                               @ %lor.rhs49
	ldrb	r1, [r7, #1]
	mov	r0, #0
	cmp	r1, #46
	moveq	r0, #1
	b	.LBB1_23
.LBB1_23:                               @ %lor.end54
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r4]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB1_59
.LBB1_24:                               @ %sw.bb56
	ldr	r0, [r4, #4]
	cmp	r1, #1
	bne	.LBB1_27
	b	.LBB1_25
.LBB1_25:                               @ %sw.default.thread
	mov	r5, #0
	strb	r5, [r0]
	b	.LBB1_54
.LBB1_26:                               @ %sw.default
	mov	r5, #0
	cmp	r1, #0
	bne	.LBB1_54
	b	.LBB1_28
.LBB1_27:                               @ %sw.default.thread117
	mov	r1, r7
	mov	r2, r6
	bl	memcpy
	ldr	r0, [r4, #4]
	mov	r1, #0
	strb	r1, [r0, r6]
	b	.LBB1_28
.LBB1_28:                               @ %cond.false
	ldr	r9, .LCPI1_15
	ldr	r5, [r9]
	b	.LBB1_30
.LCPI1_15:
	.long	findlocale.loc_head
.LBB1_29:                               @ %for.inc.i
                                        @   in Loop: Header=BB1_30 Depth=1
	ldr	r5, [r5, #24]
	b	.LBB1_30
.LBB1_30:                               @ %cond.false
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r5, #0
	beq	.LBB1_33
	b	.LBB1_31
.LBB1_31:                               @ %for.body.i
                                        @   in Loop: Header=BB1_30 Depth=1
	add	r1, r5, #8
	mov	r0, r7
	bl	strcmp
	cmp	r0, #0
	bne	.LBB1_29
	b	.LBB1_32
.LBB1_32:
	str	r8, [sp, #8]            @ 4-byte Spill
	b	.LBB1_53
.LBB1_33:                               @ %for.end.i
	ldr	r0, .LCPI1_16
	mov	r5, #0
	str	r8, [sp, #8]            @ 4-byte Spill
	ldr	r0, [r0, #12]
	cmp	r0, #0
	bne	.LBB1_53
	b	.LBB1_34
.LCPI1_16:
	.long	__libc
.LBB1_34:                               @ %if.end6.i
	ldr	r0, .LCPI1_17
	bl	getenv
	mov	r10, r0
	cmp	r10, #0
	ldrbne	r0, [r10]
	cmpne	r0, #0
	beq	.LBB1_53
	b	.LBB1_35
.LCPI1_17:
	.long	.L.str4
.LBB1_35:                               @ %for.body12.lr.ph.i
	rsb	r0, r6, #254
	add	r8, sp, #20
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB1_36
.LBB1_36:                               @ %for.body12.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r10
	mov	r1, #58
	bl	__strchrnul
	mov	r11, r0
	b	.LBB1_37
.LBB1_37:                               @ %for.body12.i
                                        @   in Loop: Header=BB1_36 Depth=1
	mov	r5, r11
	ldrb	r0, [r5], -r10
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r0, #0
	subne	r5, r5, #1
	cmp	r5, r1
	bhs	.LBB1_44
	b	.LBB1_38
.LBB1_38:                               @ %if.end19.i
                                        @   in Loop: Header=BB1_36 Depth=1
	mov	r0, r8
	mov	r1, r10
	mov	r2, r5
	bl	memcpy
	b	.LBB1_39
.LBB1_39:                               @ %if.end19.i
                                        @   in Loop: Header=BB1_36 Depth=1
	mov	r0, #47
	mov	r1, r7
	mov	r2, r6
	strb	r0, [r8, r5]
	b	.LBB1_40
.LBB1_40:                               @ %if.end19.i
                                        @   in Loop: Header=BB1_36 Depth=1
	add	r5, r5, #1
	add	r0, r8, r5
	bl	memcpy
	add	r0, r5, r6
	b	.LBB1_41
.LBB1_41:                               @ %if.end19.i
                                        @   in Loop: Header=BB1_36 Depth=1
	mov	r1, #0
	strb	r1, [r8, r0]
	mov	r0, r8
	add	r1, sp, #16
	b	.LBB1_42
.LBB1_42:                               @ %if.end19.i
                                        @   in Loop: Header=BB1_36 Depth=1
	bl	__map_file
	mov	r10, r0
	cmp	r10, #0
	bne	.LBB1_45
	b	.LBB1_43
.LBB1_43:                               @ %if.end19.for.inc47_crit_edge.i
                                        @   in Loop: Header=BB1_36 Depth=1
	ldrb	r0, [r11]
	b	.LBB1_44
.LBB1_44:                               @ %for.inc47.i
                                        @   in Loop: Header=BB1_36 Depth=1
	cmp	r0, #0
	mov	r5, #0
	addne	r11, r11, #1
	ldrb	r0, [r11]
	mov	r10, r11
	cmp	r0, #0
	bne	.LBB1_36
	b	.LBB1_53
.LBB1_45:                               @ %if.then30.i
	mov	r0, #28
	bl	malloc
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB1_52
	b	.LBB1_46
.LBB1_46:                               @ %if.end35.i
	str	r10, [r5]
	mov	r1, r7
	mov	r2, r6
	ldr	r0, [sp, #16]
	b	.LBB1_47
.LBB1_47:                               @ %if.end35.i
	str	r0, [r5, #4]
	add	r0, r5, #8
	bl	memcpy
	add	r0, r6, r5
	mov	r1, #0
	strb	r1, [r0, #8]
	b	.LBB1_48
.LBB1_48:                               @ %do.body.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_49 Depth 2
	ldr	r6, [r9]
	str	r6, [r5, #24]
	b	.LBB1_49
.LBB1_49:                               @ %for.cond.i.i.i
                                        @   Parent Loop BB1_48 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r6
	mov	r1, r5
	mov	r2, r9
	bl	__a_cas
	cmp	r0, #0
	mov	r0, r6
	beq	.LBB1_51
	b	.LBB1_50
.LBB1_50:                               @ %if.end.i.i.i
                                        @   in Loop: Header=BB1_49 Depth=2
	ldr	r0, [r9]
	cmp	r0, r6
	beq	.LBB1_49
	b	.LBB1_51
.LBB1_51:                               @ %a_cas_p.exit.i
                                        @   in Loop: Header=BB1_48 Depth=1
	cmp	r0, r6
	bne	.LBB1_48
	b	.LBB1_53
.LBB1_52:                               @ %if.then33.i
	ldr	r1, [sp, #16]
	mov	r0, r10
	bl	__munmap
	mov	r5, #0
	b	.LBB1_53
.LBB1_53:                               @ %findlocale.exit
	ldr	r8, [sp, #8]            @ 4-byte Reload
	b	.LBB1_54
.LBB1_54:                               @ %cond.end
	ldr	r6, [r4, r8, lsl #2]!
	cmp	r5, r6
	bne	.LBB1_56
	b	.LBB1_59
.LBB1_55:                               @ %a_cas_p.exit.do.body_crit_edge
                                        @   in Loop: Header=BB1_56 Depth=1
	ldr	r6, [r4]
	b	.LBB1_56
.LBB1_56:                               @ %for.cond.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	mov	r0, r6
	beq	.LBB1_58
	b	.LBB1_57
.LBB1_57:                               @ %if.end.i.i
                                        @   in Loop: Header=BB1_56 Depth=1
	ldr	r0, [r4]
	cmp	r0, r6
	beq	.LBB1_56
	b	.LBB1_58
.LBB1_58:                               @ %a_cas_p.exit
                                        @   in Loop: Header=BB1_56 Depth=1
	cmp	r0, r6
	bne	.LBB1_55
	b	.LBB1_59
.LBB1_59:                               @ %sw.epilog
	mov	r0, #0
	add	sp, sp, #276
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__setlocalecat, .Ltmp1-__setlocalecat
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"LC_ALL"
	.size	.L.str, 7

	.type	envvars,%object         @ @envvars
	.section	.rodata,"a",%progbits
envvars:
	.asciz	"LC_CTYPE\000\000\000"
	.asciz	"LC_NUMERIC\000"
	.asciz	"LC_TIME\000\000\000\000"
	.asciz	"LC_COLLATE\000"
	.asciz	"LC_MONETARY"
	.asciz	"LC_MESSAGES"
	.size	envvars, 72

	.type	.L.str1,%object         @ @.str1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str1:
	.asciz	"LANG"
	.size	.L.str1, 5

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"C.UTF-8"
	.size	.L.str2, 8

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"POSIX"
	.size	.L.str3, 6

	.type	findlocale.loc_head,%object @ @findlocale.loc_head
	.local	findlocale.loc_head
	.comm	findlocale.loc_head,4,4
	.hidden	__libc
	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"MUSL_LOCPATH"
	.size	.L.str4, 13

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
