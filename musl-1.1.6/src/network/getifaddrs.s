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
	.file	"src/network/getifaddrs.bc"
	.globl	freeifaddrs
	.align	2
	.type	freeifaddrs,%function
freeifaddrs:                            @ @freeifaddrs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	cmp	r0, #0
	beq	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0]
	bl	free
	mov	r0, r4
	cmp	r4, #0
	bne	.LBB0_1
	b	.LBB0_2
.LBB0_2:                                @ %while.end
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	freeifaddrs, .Ltmp0-freeifaddrs
	.cantunwind
	.fnend

	.globl	getifaddrs
	.align	2
	.type	getifaddrs,%function
getifaddrs:                             @ @getifaddrs
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	.pad	#264
	sub	sp, sp, #264
	b	.LBB1_2
.LBB1_2:                                @ %entry
	mov	r4, sp
	mov	r5, r0
	mov	r1, #0
	mov	r2, #264
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r0, r4
	bl	memset
	ldr	r2, .LCPI1_0
	mov	r0, #0
	b	.LBB1_4
.LCPI1_0:
	.long	netlink_msg_to_ifaddr
.LBB1_4:                                @ %entry
	mov	r1, #0
	mov	r3, r4
	bl	__rtnetlink_enumerate
	mov	r4, r0
	ldr	r0, [sp]
	cmp	r4, #0
	beq	.LBB1_7
	b	.LBB1_5
.LBB1_5:                                @ %if.else
	cmp	r0, #0
	beq	.LBB1_8
	b	.LBB1_6
.LBB1_6:                                @ %while.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r0]
	bl	free
	mov	r0, r5
	cmp	r5, #0
	bne	.LBB1_6
	b	.LBB1_8
.LBB1_7:                                @ %if.then
	str	r0, [r5]
	b	.LBB1_8
.LBB1_8:                                @ %if.end
	mov	r0, r4
	add	sp, sp, #264
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	getifaddrs, .Ltmp1-getifaddrs
	.cantunwind
	.fnend

	.align	2
	.type	netlink_msg_to_ifaddr,%function
netlink_msg_to_ifaddr:                  @ @netlink_msg_to_ifaddr
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#44
	sub	sp, sp, #44
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mov	r6, r1
	mov	r11, r0
	ldrh	r0, [r6, #4]
	cmp	r0, #16
	bne	.LBB2_8
	b	.LBB2_4
.LBB2_4:                                @ %if.then
	mov	r0, r6
	mov	r1, #164
	ldr	r2, [r0], #32
	bic	r3, r2, #3
	cmp	r3, #32
	beq	.LBB2_13
	b	.LBB2_5
.LBB2_5:                                @ %for.body.lr.ph
	mov	r3, #1020
	add	r2, r6, r2
	orr	r3, r3, #130048
	b	.LBB2_6
.LBB2_6:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldrh	r7, [r0]
	ldrh	r5, [r0, #2]
	cmp	r5, #7
	beq	.LBB2_12
	b	.LBB2_7
.LBB2_7:                                @ %for.inc
                                        @   in Loop: Header=BB2_6 Depth=1
	add	r7, r7, #3
	and	r7, r7, r3
	add	r0, r0, r7
	sub	r7, r2, r0
	cmp	r7, #3
	bhi	.LBB2_6
	b	.LBB2_13
.LBB2_8:                                @ %if.else
	ldr	r2, [r6, #20]
	and	r0, r2, #63
	add	r0, r11, r0, lsl #2
	ldr	r4, [r0, #8]
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB2_65
	b	.LBB2_9
.LBB2_9:
	mov	r1, #164
	b	.LBB2_10
.LBB2_10:                               @ %for.body17
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r4, #140]
	cmp	r3, r2
	beq	.LBB2_13
	b	.LBB2_11
.LBB2_11:                               @ %for.inc23
                                        @   in Loop: Header=BB2_10 Depth=1
	ldr	r4, [r4, #28]
	cmp	r4, #0
	bne	.LBB2_10
	b	.LBB2_65
.LBB2_12:                               @ %if.end
	add	r1, r7, #160
                                        @ implicit-def: R4
	b	.LBB2_13
.LBB2_13:                               @ %if.end28
	mov	r0, #1
	bl	calloc
	mov	r5, r0
	mvn	r0, #0
	cmp	r5, #0
	beq	.LBB2_65
	b	.LBB2_14
.LBB2_14:                               @ %if.end33
	ldrh	r0, [r6, #4]
	cmp	r0, #16
	bne	.LBB2_18
	b	.LBB2_15
.LBB2_15:                               @ %if.then38
	ldr	r0, [r6, #20]
	str	r0, [r5, #140]
	ldr	r0, [r6, #24]
	str	r0, [r5, #8]
	b	.LBB2_16
.LBB2_16:                               @ %if.then38
	ldr	r0, [r6]
	bic	r0, r0, #3
	cmp	r0, #32
	bne	.LBB2_21
	b	.LBB2_17
.LBB2_17:                               @ %if.then38.for.end100_crit_edge
	add	r8, r5, #4
	b	.LBB2_39
.LBB2_18:                               @ %if.else113
	ldr	r0, [r4, #4]
	mov	r8, r5
	mov	r9, r6
	str	r0, [r8, #4]!
	b	.LBB2_19
.LBB2_19:                               @ %if.else113
	ldr	r0, [r4, #8]
	str	r0, [r8, #4]
	ldr	r0, [r9], #24
	bic	r0, r0, #3
	cmp	r0, #24
	bne	.LBB2_41
	b	.LBB2_20
.LBB2_20:                               @ %if.else113.for.end183_crit_edge
	str	r11, [sp, #16]          @ 4-byte Spill
	add	r7, r5, #12
	b	.LBB2_54
.LBB2_21:                               @ %for.body51.lr.ph
	add	r0, r5, #116
	mov	r9, #1020
	add	r4, r6, #32
	add	r7, r5, #164
	b	.LBB2_22
.LBB2_22:                               @ %for.body51.lr.ph
	add	r8, r5, #4
	add	r10, r5, #144
	str	r0, [sp, #24]           @ 4-byte Spill
	add	r0, r5, #104
	b	.LBB2_23
.LBB2_23:                               @ %for.body51.lr.ph
	orr	r9, r9, #130048
	str	r0, [sp, #20]           @ 4-byte Spill
	add	r0, r5, #44
	str	r0, [sp, #16]           @ 4-byte Spill
	add	r0, r5, #32
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB2_24
.LBB2_24:                               @ %for.body51
                                        @ =>This Inner Loop Header: Depth=1
	ldrh	r0, [r4, #2]
	sub	r0, r0, #1
	cmp	r0, #6
	bhi	.LBB2_37
	b	.LBB2_25
.LBB2_25:                               @ %for.body51
                                        @   in Loop: Header=BB2_24 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI2_0_0
	ldr	pc, [r0, r1]
.LJTI2_0_0:
	.long	.LBB2_26
	.long	.LBB2_30
	.long	.LBB2_34
	.long	.LBB2_37
	.long	.LBB2_37
	.long	.LBB2_37
	.long	.LBB2_36
.LBB2_26:                               @ %sw.bb69
                                        @   in Loop: Header=BB2_24 Depth=1
	ldrh	r0, [r4]
	sub	r2, r0, #4
	cmp	r2, #24
	bhi	.LBB2_37
	b	.LBB2_27
.LBB2_27:                               @ %if.end.i
                                        @   in Loop: Header=BB2_24 Depth=1
	ldrh	r0, [r6, #18]
	ldr	r1, [r6, #20]
	mov	r3, #17
	strh	r3, [r5, #32]
	b	.LBB2_28
.LBB2_28:                               @ %if.end.i
                                        @   in Loop: Header=BB2_24 Depth=1
	str	r1, [r5, #36]
	strh	r0, [r5, #40]
	ldr	r0, [sp, #16]           @ 4-byte Reload
	add	r1, r4, #4
	b	.LBB2_29
.LBB2_29:                               @ %if.end.i
                                        @   in Loop: Header=BB2_24 Depth=1
	strb	r2, [r5, #43]
	bl	memcpy
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [r5, #12]
	b	.LBB2_37
.LBB2_30:                               @ %sw.bb76
                                        @   in Loop: Header=BB2_24 Depth=1
	ldrh	r0, [r4]
	sub	r2, r0, #4
	cmp	r2, #24
	bhi	.LBB2_37
	b	.LBB2_31
.LBB2_31:                               @ %if.end.i326
                                        @   in Loop: Header=BB2_24 Depth=1
	ldrh	r0, [r6, #18]
	ldr	r1, [r6, #20]
	mov	r3, #17
	strh	r3, [r5, #104]
	b	.LBB2_32
.LBB2_32:                               @ %if.end.i326
                                        @   in Loop: Header=BB2_24 Depth=1
	str	r1, [r5, #108]
	strh	r0, [r5, #112]
	ldr	r0, [sp, #24]           @ 4-byte Reload
	add	r1, r4, #4
	b	.LBB2_33
.LBB2_33:                               @ %if.end.i326
                                        @   in Loop: Header=BB2_24 Depth=1
	strb	r2, [r5, #115]
	bl	memcpy
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [r5, #20]
	b	.LBB2_37
.LBB2_34:                               @ %sw.bb
                                        @   in Loop: Header=BB2_24 Depth=1
	ldrh	r0, [r4]
	sub	r2, r0, #4
	cmp	r2, #16
	bhi	.LBB2_37
	b	.LBB2_35
.LBB2_35:                               @ %if.then59
                                        @   in Loop: Header=BB2_24 Depth=1
	add	r1, r4, #4
	mov	r0, r10
	bl	memcpy
	str	r10, [r8]
	b	.LBB2_37
.LBB2_36:                               @ %sw.bb84
                                        @   in Loop: Header=BB2_24 Depth=1
	str	r7, [r5, #24]
	mov	r1, r4
	ldrh	r0, [r1], #4
	sub	r2, r0, #4
	mov	r0, r7
	bl	memcpy
	b	.LBB2_37
.LBB2_37:                               @ %for.inc94
                                        @   in Loop: Header=BB2_24 Depth=1
	ldrh	r1, [r4]
	ldr	r0, [r6]
	add	r1, r1, #3
	add	r0, r6, r0
	b	.LBB2_38
.LBB2_38:                               @ %for.inc94
                                        @   in Loop: Header=BB2_24 Depth=1
	and	r1, r1, r9
	add	r4, r4, r1
	sub	r0, r0, r4
	cmp	r0, #3
	bhi	.LBB2_24
	b	.LBB2_39
.LBB2_39:                               @ %for.end100
	ldr	r0, [r8]
	cmp	r0, #0
	beq	.LBB2_61
	b	.LBB2_40
.LBB2_40:                               @ %if.then104
	ldr	r0, [r5, #140]
	and	r0, r0, #63
	add	r0, r11, r0, lsl #2
	ldr	r1, [r0, #8]
	str	r1, [r5, #28]
	str	r5, [r0, #8]
	b	.LBB2_61
.LBB2_41:                               @ %for.body132.lr.ph
	str	r11, [sp, #16]          @ 4-byte Spill
	mov	r11, #1020
	add	r0, r5, #104
	add	r10, r5, #144
	b	.LBB2_42
.LBB2_42:                               @ %for.body132.lr.ph
	add	r4, r5, #32
	add	r7, r5, #12
	str	r0, [sp, #24]           @ 4-byte Spill
	add	r0, r5, #20
	orr	r11, r11, #130048
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB2_43
.LBB2_43:                               @ %for.body132
                                        @ =>This Inner Loop Header: Depth=1
	ldrh	r0, [r9, #2]
	cmp	r0, #1
	beq	.LBB2_47
	b	.LBB2_44
.LBB2_44:                               @ %for.body132
                                        @   in Loop: Header=BB2_43 Depth=1
	cmp	r0, #3
	bne	.LBB2_49
	b	.LBB2_45
.LBB2_45:                               @ %sw.bb157
                                        @   in Loop: Header=BB2_43 Depth=1
	ldrh	r0, [r9]
	sub	r2, r0, #4
	cmp	r2, #16
	bhi	.LBB2_52
	b	.LBB2_46
.LBB2_46:                               @ %if.then163
                                        @   in Loop: Header=BB2_43 Depth=1
	add	r1, r9, #4
	mov	r0, r10
	bl	memcpy
	str	r10, [r8]
	b	.LBB2_52
.LBB2_47:                               @ %sw.bb135
                                        @   in Loop: Header=BB2_43 Depth=1
	mov	r3, r9
	ldrb	r1, [r6, #16]
	ldrh	r0, [r3], #4
	ldr	r2, [r6, #20]
	b	.LBB2_48
.LBB2_48:                               @ %sw.bb135
                                        @   in Loop: Header=BB2_43 Depth=1
	sub	r0, r0, #4
	stm	sp, {r0, r2}
	mov	r0, r7
	mov	r2, r4
	bl	copy_addr
	b	.LBB2_52
.LBB2_49:                               @ %for.body132
                                        @   in Loop: Header=BB2_43 Depth=1
	cmp	r0, #4
	bne	.LBB2_52
	b	.LBB2_50
.LBB2_50:                               @ %sw.bb145
                                        @   in Loop: Header=BB2_43 Depth=1
	mov	r3, r9
	ldrb	r1, [r6, #16]
	ldrh	r0, [r3], #4
	ldr	r2, [r6, #20]
	b	.LBB2_51
.LBB2_51:                               @ %sw.bb145
                                        @   in Loop: Header=BB2_43 Depth=1
	sub	r0, r0, #4
	stm	sp, {r0, r2}
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r2, [sp, #24]           @ 4-byte Reload
	bl	copy_addr
	b	.LBB2_52
.LBB2_52:                               @ %for.inc177
                                        @   in Loop: Header=BB2_43 Depth=1
	ldrh	r1, [r9]
	ldr	r0, [r6]
	add	r1, r1, #3
	add	r0, r6, r0
	b	.LBB2_53
.LBB2_53:                               @ %for.inc177
                                        @   in Loop: Header=BB2_43 Depth=1
	and	r1, r1, r11
	add	r9, r9, r1
	sub	r0, r0, r9
	cmp	r0, #3
	bhi	.LBB2_43
	b	.LBB2_54
.LBB2_54:                               @ %for.end183
	ldr	r0, [r7]
	ldr	r11, [sp, #16]          @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB2_61
	b	.LBB2_55
.LBB2_55:                               @ %if.then187
	ldrb	r4, [r6, #17]
	ldrb	r10, [r6, #16]
	add	r9, sp, #28
	mov	r7, #0
	b	.LBB2_56
.LBB2_56:                               @ %if.then187
	mov	r1, #255
	mov	r0, r9
	str	r7, [sp, #40]
	str	r7, [sp, #36]
	b	.LBB2_57
.LBB2_57:                               @ %if.then187
	str	r7, [sp, #32]
	str	r7, [sp, #28]
	cmp	r4, #128
	movhi	r4, #128
	b	.LBB2_58
.LBB2_58:                               @ %if.then187
	lsr	r6, r4, #3
	mov	r2, r6
	bl	memset
	add	r2, r5, #68
	add	r0, r5, #16
	cmp	r4, #127
	bhi	.LBB2_60
	b	.LBB2_59
.LBB2_59:                               @ %if.then2.i
	and	r1, r4, #7
	mov	r3, #255
	rsb	r1, r1, #8
	lsl	r1, r3, r1
	strb	r1, [r9, r6]
	b	.LBB2_60
.LBB2_60:                               @ %gen_netmask.exit
	mov	r1, #16
	add	r3, sp, #28
	stm	sp, {r1, r7}
	mov	r1, r10
	bl	copy_addr
	b	.LBB2_61
.LBB2_61:                               @ %if.end193
	ldr	r0, [r8]
	cmp	r0, #0
	beq	.LBB2_63
	b	.LBB2_62
.LBB2_62:                               @ %if.then197
	ldr	r0, [r11]
	cmp	r0, #0
	streq	r5, [r11]
	ldr	r0, [r11, #4]
	cmp	r0, #0
	strne	r5, [r0]
	str	r5, [r11, #4]
	b	.LBB2_64
.LBB2_63:                               @ %if.else209
	mov	r0, r5
	bl	free
	b	.LBB2_64
.LBB2_64:                               @ %return
	mov	r0, #0
	b	.LBB2_65
.LBB2_65:                               @ %return
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	netlink_msg_to_ifaddr, .Ltmp2-netlink_msg_to_ifaddr
	.cantunwind
	.fnend

	.align	2
	.type	copy_addr,%function
copy_addr:                              @ @copy_addr
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	mov	r4, r2
	mov	r6, r0
	cmp	r1, #10
	bne	.LBB3_4
	b	.LBB3_2
.LBB3_2:                                @ %sw.bb1
	ldrb	r5, [r3]
	add	r0, r4, #8
	mov	r2, #16
	cmp	r5, #255
	bne	.LBB3_6
	b	.LBB3_3
.LBB3_3:                                @ %land.lhs.true11
	ldrb	r5, [r3, #1]
	and	r5, r5, #15
	cmp	r5, #2
	bne	.LBB3_9
	b	.LBB3_8
.LBB3_4:                                @ %entry
	cmp	r1, #2
	bne	.LBB3_11
	b	.LBB3_5
.LBB3_5:                                @ %sw.bb
	add	r0, r4, #4
	mov	r2, #4
	b	.LBB3_9
.LBB3_6:                                @ %sw.bb1
	cmp	r5, #254
	bne	.LBB3_9
	b	.LBB3_7
.LBB3_7:                                @ %land.lhs.true
	ldrb	r5, [r3, #1]
	and	r5, r5, #192
	cmp	r5, #128
	bne	.LBB3_9
	b	.LBB3_8
.LBB3_8:                                @ %if.then
	ldr	r5, [sp, #20]
	str	r5, [r4, #24]
	b	.LBB3_9
.LBB3_9:                                @ %sw.epilog
	ldr	r5, [sp, #16]
	cmp	r2, r5
	bhi	.LBB3_11
	b	.LBB3_10
.LBB3_10:                               @ %if.end21
	strh	r1, [r4]
	mov	r1, r3
	bl	memcpy
	str	r4, [r6]
	b	.LBB3_11
.LBB3_11:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp3:
	.size	copy_addr, .Ltmp3-copy_addr
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
