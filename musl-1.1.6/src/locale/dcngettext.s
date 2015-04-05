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
	.file	"src/locale/dcngettext.bc"
	.globl	bindtextdomain
	.align	2
	.type	bindtextdomain,%function
bindtextdomain:                         @ @bindtextdomain
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	mov	r7, r1
	mov	r5, #0
	cmp	r4, #0
	beq	.LBB0_28
	b	.LBB0_4
.LBB0_4:                                @ %if.end
	cmp	r7, #0
	beq	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %if.end3
	mov	r0, r4
	bl	strlen
	mov	r11, r0
	mov	r0, r7
	b	.LBB0_6
.LBB0_6:                                @ %if.end3
	bl	strlen
	mov	r10, r0
	cmp	r11, #255
	cmpls	r10, #4096
	blo	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %if.then7
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_28
.LBB0_8:                                @ %if.then2
	mov	r0, #0
	mov	r1, sp
	str	r0, [sp]
	mov	r0, r4
	bl	gettextdir
	mov	r5, r0
	b	.LBB0_28
.LBB0_9:                                @ %if.end9
	ldr	r9, .LCPI0_0
	add	r8, r9, #8
	mov	r0, r8
	bl	__lock
	ldr	r6, [r9]
	b	.LBB0_11
.LCPI0_0:
	.long	_MergedGlobals
.LBB0_10:                               @ %for.inc
                                        @   in Loop: Header=BB0_11 Depth=1
	ldr	r6, [r6]
	b	.LBB0_11
.LBB0_11:                               @ %if.end9
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r6, #0
	beq	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               @ %for.body
                                        @   in Loop: Header=BB0_11 Depth=1
	ldr	r0, [r6, #12]
	mov	r1, r4
	bl	strcmp
	cmp	r0, #0
	bne	.LBB0_10
	b	.LBB0_13
.LBB0_13:                               @ %land.lhs.true
                                        @   in Loop: Header=BB0_11 Depth=1
	ldr	r0, [r6, #16]
	mov	r1, r7
	bl	strcmp
	cmp	r0, #0
	bne	.LBB0_10
	b	.LBB0_20
.LBB0_14:                               @ %if.then20
	add	r0, r11, r10
	add	r0, r0, #22
	bl	malloc
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB0_27
	b	.LBB0_15
.LBB0_15:                               @ %if.end26
	ldr	r0, [r9]
	add	r1, r11, r6
	add	r2, r11, #1
	add	r1, r1, #21
	b	.LBB0_16
.LBB0_16:                               @ %if.end26
	stm	r6, {r0, r10}
	add	r0, r6, #20
	str	r0, [r6, #12]
	str	r1, [r6, #16]
	b	.LBB0_17
.LBB0_17:                               @ %if.end26
	mov	r1, r4
	bl	memcpy
	ldr	r0, [r6, #16]
	add	r2, r10, #1
	mov	r1, r7
	bl	memcpy
	ldr	r5, [r9]
	b	.LBB0_18
.LBB0_18:                               @ %for.cond.i.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r9
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               @ %if.end.i.i
                                        @   in Loop: Header=BB0_18 Depth=1
	ldr	r0, [r9]
	cmp	r0, r5
	beq	.LBB0_18
	b	.LBB0_20
.LBB0_20:                               @ %if.end41
	mov	r0, #1
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r6, #8]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r5, [r9]
	cmp	r5, #0
	beq	.LBB0_26
	b	.LBB0_21
.LBB0_21:                               @ %for.body44.lr.ph
	mov	r7, #0
	b	.LBB0_22
.LBB0_22:                               @ %for.body44
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #12]
	mov	r1, r4
	bl	strcmp
	cmp	r5, r6
	beq	.LBB0_25
	b	.LBB0_23
.LBB0_23:                               @ %for.body44
                                        @   in Loop: Header=BB0_22 Depth=1
	cmp	r0, #0
	bne	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               @ %if.then50
                                        @   in Loop: Header=BB0_22 Depth=1
	@APP
	bl	__a_barrier
	@NO_APP
	str	r7, [r5, #8]
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB0_25
.LBB0_25:                               @ %for.inc53
                                        @   in Loop: Header=BB0_22 Depth=1
	ldr	r5, [r5]
	cmp	r5, #0
	bne	.LBB0_22
	b	.LBB0_26
.LBB0_26:                               @ %for.end55
	mov	r0, r8
	bl	__unlock
	ldr	r5, [r6, #16]
	b	.LBB0_28
.LBB0_27:                               @ %if.then25
	mov	r0, r8
	bl	__unlock
	b	.LBB0_28
.LBB0_28:                               @ %return
	mov	r0, r5
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	bindtextdomain, .Ltmp0-bindtextdomain
	.cantunwind
	.fnend

	.align	2
	.type	gettextdir,%function
gettextdir:                             @ @gettextdir
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r6, r0
	ldr	r0, .LCPI1_0
	mov	r5, r1
	mov	r4, #0
	ldr	r7, [r0]
	b	.LBB1_4
.LCPI1_0:
	.long	_MergedGlobals
.LBB1_3:                                @ %for.inc
                                        @   in Loop: Header=BB1_4 Depth=1
	ldr	r7, [r7]
	b	.LBB1_4
.LBB1_4:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, #0
	beq	.LBB1_8
	b	.LBB1_5
.LBB1_5:                                @ %for.body
                                        @   in Loop: Header=BB1_4 Depth=1
	ldr	r0, [r7, #12]
	mov	r1, r6
	bl	strcmp
	cmp	r0, #0
	bne	.LBB1_3
	b	.LBB1_6
.LBB1_6:                                @ %land.lhs.true
                                        @   in Loop: Header=BB1_4 Depth=1
	ldr	r0, [r7, #8]
	cmp	r0, #0
	beq	.LBB1_3
	b	.LBB1_7
.LBB1_7:                                @ %if.then
	ldr	r0, [r7, #4]
	str	r0, [r5]
	ldr	r4, [r7, #16]
	b	.LBB1_8
.LBB1_8:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	gettextdir, .Ltmp1-gettextdir
	.cantunwind
	.fnend

	.globl	dcngettext
	.align	2
	.type	dcngettext,%function
dcngettext:                             @ @dcngettext
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.setfp	r11, sp, #28
	add	r11, sp, #28
	b	.LBB2_3
.LBB2_3:                                @ %entry
	.pad	#52
	sub	sp, sp, #52
	mov	r6, r0
	ldr	r0, .LCPI2_9
	b	.LBB2_4
.LCPI2_9:
	.long	__libc
.LBB2_4:                                @ %entry
	str	r3, [r11, #-48]         @ 4-byte Spill
	mov	r8, r1
	mov	r9, r2
	ldr	r1, [r0, #44]
	cmp	r1, #0
	beq	.LBB2_6
	b	.LBB2_5
.LBB2_5:                                @ %cond.true
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	ldr	r5, [r1, #-32]
	b	.LBB2_7
.LBB2_6:
	add	r5, r0, #52
	b	.LBB2_7
.LBB2_7:                                @ %cond.end
	cmp	r6, #0
	bne	.LBB2_9
	b	.LBB2_8
.LBB2_8:                                @ %if.then
	bl	__gettextdomain
	mov	r6, r0
	b	.LBB2_9
.LBB2_9:                                @ %if.end
	mov	r0, r6
	bl	strlen
	mov	r7, r0
	cmp	r7, #255
	bhi	.LBB2_80
	b	.LBB2_10
.LBB2_10:                               @ %if.end5
	sub	r1, r11, #36
	mov	r0, r6
	bl	gettextdir
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB2_80
	b	.LBB2_11
.LBB2_11:                               @ %if.end9
	ldr	r0, [r11, #8]
	sub	r10, r0, #2
	cmp	r10, #3
	bhs	.LBB2_47
	b	.LBB2_12
.LBB2_12:                               @ %sw.bb13
	add	r0, r5, r10, lsl #2
	ldr	r0, [r0, #8]
	cmp	r0, #0
	beq	.LBB2_80
	b	.LBB2_13
.LBB2_13:                               @ %if.end16
	add	r0, r0, #8
	b	.LBB2_14
.LBB2_14:                               @ %sw.epilog
	str	r0, [r11, #-60]         @ 4-byte Spill
	str	r8, [r11, #-68]         @ 4-byte Spill
	str	r9, [r11, #-64]         @ 4-byte Spill
	bl	strlen
	b	.LBB2_15
.LBB2_15:                               @ %sw.epilog
	mov	r9, r0
	ldr	r0, .LCPI2_10
	ldr	r8, [r11, #-36]
	str	sp, [r11, #-72]         @ 4-byte Spill
	b	.LBB2_16
.LCPI2_10:
	.long	catlens
.LBB2_16:                               @ %sw.epilog
	ldrb	r1, [r0, r10]
	add	r0, r7, #3
	str	r0, [r11, #-52]         @ 4-byte Spill
	add	r0, r0, r9
	b	.LBB2_17
.LBB2_17:                               @ %sw.epilog
	add	r0, r0, r1
	str	r1, [r11, #-56]         @ 4-byte Spill
	add	r0, r0, r8
	str	r0, [r11, #-76]         @ 4-byte Spill
	b	.LBB2_18
.LBB2_18:                               @ %sw.epilog
	add	r0, r0, #11
	bic	r0, r0, #7
	sub	r5, sp, r0
	mov	sp, r5
	b	.LBB2_19
.LBB2_19:                               @ %sw.epilog
	mov	r0, r5
	mov	r1, r4
	mov	r2, r8
	bl	memcpy
	b	.LBB2_20
.LBB2_20:                               @ %sw.epilog
	ldr	r1, [r11, #-60]         @ 4-byte Reload
	mov	r0, #47
	add	r4, r8, #1
	mov	r2, r9
	b	.LBB2_21
.LBB2_21:                               @ %sw.epilog
	strb	r0, [r5, r8]
	add	r0, r5, r4
	bl	memcpy
	add	r0, r4, r9
	b	.LBB2_22
.LBB2_22:                               @ %sw.epilog
	ldr	r2, .LCPI2_11
	ldr	r4, [r11, #-56]         @ 4-byte Reload
	mov	r1, #47
	mov	r9, #47
	b	.LBB2_23
.LCPI2_11:
	.long	catnames
.LBB2_23:                               @ %sw.epilog
	strb	r1, [r5, r0]
	add	r8, r0, #1
	add	r1, r10, r10, lsl #1
	add	r0, r5, r8
	b	.LBB2_24
.LBB2_24:                               @ %sw.epilog
	add	r1, r2, r1, lsl #2
	mov	r2, r4
	bl	memcpy
	add	r0, r8, r4
	b	.LBB2_25
.LBB2_25:                               @ %sw.epilog
	mov	r1, r6
	mov	r2, r7
	add	r4, r0, #1
	strb	r9, [r5, r0]
	b	.LBB2_26
.LBB2_26:                               @ %sw.epilog
	add	r0, r5, r4
	bl	memcpy
	add	r0, r4, r7
	mov	r1, #46
	b	.LBB2_27
.LBB2_27:                               @ %sw.epilog
	mov	r2, r5
	ldr	r6, .LCPI2_12
	strb	r1, [r2, r0]!
	mov	r0, #109
	b	.LBB2_28
.LCPI2_12:
	.long	_MergedGlobals
.LBB2_28:                               @ %sw.epilog
	mov	r1, #0
	strb	r0, [r2, #1]
	mov	r0, #111
	strb	r0, [r2, #2]
	b	.LBB2_29
.LBB2_29:                               @ %sw.epilog
	ldr	r0, [r11, #-52]         @ 4-byte Reload
	add	r0, r0, r4
	strb	r1, [r5, r0]
	ldr	r7, [r6, #4]
	b	.LBB2_31
.LBB2_30:                               @ %for.inc
                                        @   in Loop: Header=BB2_31 Depth=1
	ldr	r7, [r7]
	b	.LBB2_31
.LBB2_31:                               @ %sw.epilog
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, #0
	beq	.LBB2_34
	b	.LBB2_32
.LBB2_32:                               @ %for.body
                                        @   in Loop: Header=BB2_31 Depth=1
	add	r0, r7, #20
	mov	r1, r5
	bl	strcmp
	cmp	r0, #0
	bne	.LBB2_30
	b	.LBB2_33
.LBB2_33:
	ldr	r9, [r11, #-64]         @ 4-byte Reload
	ldr	r8, [r11, #-68]         @ 4-byte Reload
	b	.LBB2_43
.LBB2_34:                               @ %if.then62
	sub	r1, r11, #40
	mov	r0, r5
	bl	__map_file
	ldr	r9, [r11, #-64]         @ 4-byte Reload
	b	.LBB2_35
.LBB2_35:                               @ %if.then62
	ldr	r8, [r11, #-68]         @ 4-byte Reload
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB2_79
	b	.LBB2_36
.LBB2_36:                               @ %if.end66
	ldr	r10, [r11, #-76]        @ 4-byte Reload
	add	r0, r10, #24
	bl	malloc
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB2_49
	b	.LBB2_37
.LBB2_37:                               @ %if.end73
	str	r4, [r7, #4]
	add	r2, r10, #4
	mov	r1, r5
	ldr	r0, [r11, #-40]
	b	.LBB2_38
.LBB2_38:                               @ %if.end73
	str	r0, [r7, #8]
	add	r0, r7, #20
	bl	memcpy
	add	r4, r6, #4
	b	.LBB2_39
.LBB2_39:                               @ %do.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_40 Depth 2
	ldr	r5, [r6, #4]
	str	r5, [r7]
	b	.LBB2_40
.LBB2_40:                               @ %for.cond.i.i
                                        @   Parent Loop BB2_39 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r5
	mov	r1, r7
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	mov	r0, r5
	beq	.LBB2_42
	b	.LBB2_41
.LBB2_41:                               @ %if.end.i.i
                                        @   in Loop: Header=BB2_40 Depth=2
	ldr	r0, [r6, #4]
	cmp	r0, r5
	beq	.LBB2_40
	b	.LBB2_42
.LBB2_42:                               @ %a_cas_p.exit
                                        @   in Loop: Header=BB2_39 Depth=1
	cmp	r0, r5
	bne	.LBB2_39
	b	.LBB2_43
.LBB2_43:                               @ %if.end84
	ldmib	r7, {r0, r1}
	mov	r2, r8
	bl	__mo_lookup
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB2_79
	b	.LBB2_44
.LBB2_44:                               @ %if.end90
	cmp	r9, #0
	beq	.LBB2_78
	b	.LBB2_45
.LBB2_45:                               @ %if.end93
	mov	r4, r7
	ldr	r0, [r4, #12]!
	cmp	r0, #0
	beq	.LBB2_50
	b	.LBB2_46
.LBB2_46:                               @ %if.end93.if.end154_crit_edge
	add	r5, r7, #16
	b	.LBB2_72
.LBB2_47:                               @ %if.end9
	cmp	r0, #5
	bne	.LBB2_80
	b	.LBB2_48
.LBB2_48:                               @ %sw.bb
	ldr	r0, [r5, #4]
	mov	r10, #3
	ldrb	r1, [r0]
	cmp	r1, #0
	bne	.LBB2_14
	b	.LBB2_80
.LBB2_49:                               @ %if.then71
	ldr	r1, [r11, #-40]
	mov	r0, r4
	bl	__munmap
	b	.LBB2_79
.LBB2_50:                               @ %if.then95
	ldmib	r7, {r0, r1}
	ldr	r2, .LCPI2_13
	bl	__mo_lookup
	ldr	r10, .LCPI2_14
	b	.LBB2_51
.LCPI2_13:
	.long	.L.str1
.LCPI2_14:
	.long	.L.str
.LBB2_51:                               @ %if.then95
	mov	r5, r0
	mov	r2, #2
	cmp	r5, #0
	beq	.LBB2_69
	b	.LBB2_52
.LBB2_52:
	mov	r10, r8
	ldr	r8, .LCPI2_17
	b	.LBB2_53
.LCPI2_17:
	.long	.L.str2
.LBB2_53:                               @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r8
	mov	r2, #13
	bl	strncmp
	cmp	r0, #0
	beq	.LBB2_56
	b	.LBB2_54
.LBB2_54:                               @ %while.body
                                        @   in Loop: Header=BB2_53 Depth=1
	mov	r0, r5
	mov	r1, #10
	bl	strchr
	add	r5, r0, #1
	str	r0, [r11, #-44]
	cmp	r0, #0
	bne	.LBB2_53
	b	.LBB2_55
.LBB2_55:
	mov	r8, r10
	ldr	r10, .LCPI2_15
	mov	r2, #2
	b	.LBB2_69
.LCPI2_15:
	.long	.L.str
.LBB2_56:                               @ %if.then110
	add	r5, r5, #12
	b	.LBB2_57
.LBB2_57:                               @ %while.cond112
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r5, #1]!
	sub	r0, r1, #9
	cmp	r1, #32
	beq	.LBB2_57
	b	.LBB2_58
.LBB2_58:                               @ %while.cond112
                                        @   in Loop: Header=BB2_57 Depth=1
	cmp	r0, #5
	blo	.LBB2_57
	b	.LBB2_59
.LBB2_59:                               @ %while.end117
	ldr	r1, .LCPI2_18
	mov	r0, r5
	mov	r2, #9
	bl	strncmp
	b	.LBB2_60
.LCPI2_18:
	.long	.L.str3
.LBB2_60:                               @ %while.end117
	mov	r2, #2
	mov	r8, r10
	cmp	r0, #0
	bne	.LBB2_62
	b	.LBB2_61
.LBB2_61:                               @ %if.then120
	add	r0, r5, #9
	sub	r1, r11, #44
	mov	r2, #10
	bl	strtoul
	ldr	r5, [r11, #-44]
	mov	r2, r0
	b	.LBB2_62
.LBB2_62:                               @ %while.cond124.preheader
	ldr	r10, .LCPI2_16
	sub	r5, r5, #1
	b	.LBB2_63
.LCPI2_16:
	.long	.L.str
.LBB2_63:                               @ %while.cond124
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r5, #1]!
	cmp	r0, #0
	mov	r1, r0
	movne	r1, #1
	cmp	r0, #59
	cmpne	r1, #0
	bne	.LBB2_63
	b	.LBB2_64
.LBB2_64:                               @ %while.end134
	cmp	r0, #0
	beq	.LBB2_69
	b	.LBB2_65
.LBB2_65:
	str	r2, [r11, #-52]         @ 4-byte Spill
	b	.LBB2_66
.LBB2_66:                               @ %while.cond138
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r5, #1]!
	sub	r0, r1, #9
	cmp	r1, #32
	beq	.LBB2_66
	b	.LBB2_67
.LBB2_67:                               @ %while.cond138
                                        @   in Loop: Header=BB2_66 Depth=1
	cmp	r0, #5
	blo	.LBB2_66
	b	.LBB2_68
.LBB2_68:                               @ %while.end144
	ldr	r1, .LCPI2_19
	mov	r0, r5
	mov	r2, #7
	bl	strncmp
	ldr	r2, [r11, #-52]         @ 4-byte Reload
	cmp	r0, #0
	addeq	r10, r5, #7
	b	.LBB2_69
.LCPI2_19:
	.long	.L.str4
.LBB2_69:                               @ %if.end151
	mov	r5, r7
	@APP
	bl	__a_barrier
	@NO_APP
	str	r2, [r5, #16]!
	@APP
	bl	__a_barrier
	@NO_APP
	b	.LBB2_70
.LBB2_70:                               @ %for.cond.i.i275
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, r10
	mov	r2, r4
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB2_72
	b	.LBB2_71
.LBB2_71:                               @ %if.end.i.i277
                                        @   in Loop: Header=BB2_70 Depth=1
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB2_70
	b	.LBB2_72
.LBB2_72:                               @ %if.end154
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB2_78
	b	.LBB2_73
.LBB2_73:                               @ %if.then157
	ldr	r0, [r4]
	ldr	r1, [r11, #-48]         @ 4-byte Reload
	bl	__pleval
	mov	r4, r0
	ldr	r0, [r5]
	cmp	r4, r0
	bhi	.LBB2_79
	b	.LBB2_74
.LBB2_74:                               @ %while.cond165.preheader
	cmp	r4, #0
	beq	.LBB2_78
	b	.LBB2_75
.LBB2_75:                               @ %while.body167
                                        @ =>This Inner Loop Header: Depth=1
	ldmib	r7, {r0, r1}
	sub	r0, r0, r6
	add	r5, r0, r1
	mov	r0, r6
	b	.LBB2_76
.LBB2_76:                               @ %while.body167
                                        @   in Loop: Header=BB2_75 Depth=1
	mov	r1, r5
	bl	strnlen
	add	r0, r0, #1
	cmp	r0, r5
	bhs	.LBB2_79
	b	.LBB2_77
.LBB2_77:                               @ %if.end176
                                        @   in Loop: Header=BB2_75 Depth=1
	subs	r4, r4, #1
	add	r6, r6, r0
	bne	.LBB2_75
	b	.LBB2_78
.LBB2_78:                               @ %cleanup
	ldr	sp, [r11, #-72]         @ 4-byte Reload
	mov	r9, r6
	b	.LBB2_81
.LBB2_79:                               @ %cleanup.thread
	ldr	sp, [r11, #-72]         @ 4-byte Reload
	b	.LBB2_80
.LBB2_80:                               @ %notrans
	ldr	r0, [r11, #-48]         @ 4-byte Reload
	cmp	r0, #1
	moveq	r9, r8
	b	.LBB2_81
.LBB2_81:                               @ %return
	mov	r0, r9
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	dcngettext, .Ltmp2-dcngettext
	.cantunwind
	.fnend

	.globl	dcgettext
	.align	2
	.type	dcgettext,%function
dcgettext:                              @ @dcgettext
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r2, #0
	b	.LBB3_2
.LBB3_2:                                @ %entry
	mov	r3, #1
	bl	dcngettext
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	dcgettext, .Ltmp3-dcgettext
	.cantunwind
	.fnend

	.globl	dngettext
	.align	2
	.type	dngettext,%function
dngettext:                              @ @dngettext
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #5
	str	r12, [sp]
	bl	dcngettext
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	dngettext, .Ltmp4-dngettext
	.cantunwind
	.fnend

	.globl	dgettext
	.align	2
	.type	dgettext,%function
dgettext:                               @ @dgettext
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r2, #5
	mov	r3, #1
	b	.LBB5_2
.LBB5_2:                                @ %entry
	str	r2, [sp]
	mov	r2, #0
	bl	dcngettext
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	dgettext, .Ltmp5-dgettext
	.cantunwind
	.fnend

	.align	2
	.type	dummy_gettextdomain,%function
dummy_gettextdomain:                    @ @dummy_gettextdomain
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	ldr	r0, .LCPI6_0
	mov	pc, lr
.LCPI6_0:
	.long	.L.str5
.Ltmp6:
	.size	dummy_gettextdomain, .Ltmp6-dummy_gettextdomain
	.cantunwind
	.fnend

	.hidden	__libc
	.type	catnames,%object        @ @catnames
	.section	.rodata,"a",%progbits
catnames:
	.asciz	"LC_TIME\000\000\000\000"
	.asciz	"LC_COLLATE\000"
	.asciz	"LC_MONETARY"
	.asciz	"LC_MESSAGES"
	.size	catnames, 48

	.type	catlens,%object         @ @catlens
	.section	.rodata.cst4,"aM",%progbits,4
catlens:
	.ascii	"\007\n\013\013"
	.size	catlens, 4

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"n!=1;"
	.size	.L.str, 6

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.zero	1
	.size	.L.str1, 1

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"Plural-Forms:"
	.size	.L.str2, 14

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"nplurals="
	.size	.L.str3, 10

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"plural="
	.size	.L.str4, 8

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"messages"
	.size	.L.str5, 9

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,16,4
	.hidden	__lock
	.hidden	__unlock
	.hidden	__a_cas

	.weak	__gettextdomain
__gettextdomain = dummy_gettextdomain
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
