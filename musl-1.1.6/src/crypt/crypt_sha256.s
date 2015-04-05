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
	.file	"src/crypt/crypt_sha256.bc"
	.globl	__crypt_sha256
	.align	2
	.type	__crypt_sha256,%function
__crypt_sha256:                         @ @__crypt_sha256
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#128
	sub	sp, sp, #128
	b	.LBB0_2
.LBB0_2:                                @ %entry
	bl	sha256crypt
	mov	r4, r0
	ldr	r0, .LCPI0_4
	ldr	r1, .LCPI0_5
	b	.LBB0_3
.LCPI0_4:
	.long	__crypt_sha256.testkey
.LCPI0_5:
	.long	__crypt_sha256.testsetting
.LBB0_3:                                @ %entry
	mov	r5, sp
	mov	r2, r5
	bl	sha256crypt
	mov	r1, r0
	ldr	r0, .LCPI0_6
	cmp	r4, #0
	beq	.LBB0_7
	b	.LBB0_4
.LCPI0_6:
	.long	.L.str
.LBB0_4:                                @ %entry
	cmp	r1, r5
	bne	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %lor.lhs.false3
	ldr	r1, .LCPI0_8
	mov	r0, sp
	mov	r2, #73
	bl	memcmp
	b	.LBB0_6
.LCPI0_8:
	.long	__crypt_sha256.testhash
.LBB0_6:                                @ %lor.lhs.false3
	mov	r1, r0
	ldr	r0, .LCPI0_7
	cmp	r1, #0
	moveq	r0, r4
	b	.LBB0_7
.LCPI0_7:
	.long	.L.str
.LBB0_7:                                @ %cleanup
	add	sp, sp, #128
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__crypt_sha256, .Ltmp0-__crypt_sha256
	.cantunwind
	.fnend

	.align	2
	.type	sha256crypt,%function
sha256crypt:                            @ @sha256crypt
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#268
	sub	sp, sp, #268
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r8, r2
	mov	r4, r1
	mov	r11, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	add	r0, sp, #44
	mov	r1, #20
	mov	r2, #0
	mov	r7, #0
	b	.LBB1_5
.LBB1_5:                                @ %entry
	bl	__aeabi_memset
	mov	r1, #1
	mov	r0, r11
	orr	r1, r1, #256
	b	.LBB1_6
.LBB1_6:                                @ %entry
	bl	strnlen
	mov	r5, r0
	cmp	r5, #256
	bhi	.LBB1_96
	b	.LBB1_7
.LBB1_7:                                @ %if.end
	ldr	r1, .LCPI1_17
	mov	r0, r4
	mov	r2, #3
	bl	strncmp
	cmp	r0, #0
	bne	.LBB1_96
	b	.LBB1_8
.LCPI1_17:
	.long	.L.str1
.LBB1_8:                                @ %if.end4
	ldr	r1, .LCPI1_18
	add	r6, r4, #3
	mov	r2, #7
	mov	r0, r6
	bl	strncmp
	cmp	r0, #0
	beq	.LBB1_48
	b	.LBB1_9
.LCPI1_18:
	.long	.L.str2
.LBB1_9:
	mov	r0, #904
	orr	r0, r0, #4096
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB1_10
.LBB1_10:                               @ %if.end30
	mov	r7, #0
	mov	r9, #0
	b	.LBB1_11
.LBB1_11:                               @ %land.lhs.true
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r6, r9
	ldrsb	r1, [r0]
	and	r0, r1, #255
	cmp	r1, #35
	bgt	.LBB1_14
	b	.LBB1_12
.LBB1_12:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_11 Depth=1
	cmp	r0, #0
	beq	.LBB1_17
	b	.LBB1_13
.LBB1_13:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_11 Depth=1
	cmp	r0, #10
	bne	.LBB1_16
	b	.LBB1_96
.LBB1_14:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_11 Depth=1
	cmp	r0, #36
	beq	.LBB1_17
	b	.LBB1_15
.LBB1_15:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_11 Depth=1
	cmp	r0, #58
	beq	.LBB1_96
	b	.LBB1_16
.LBB1_16:                               @ %for.inc
                                        @   in Loop: Header=BB1_11 Depth=1
	add	r9, r9, #1
	cmp	r9, #16
	blo	.LBB1_11
	b	.LBB1_17
.LBB1_17:                               @ %for.end
	mov	r10, #0
	str	r8, [sp, #32]           @ 4-byte Spill
	add	r8, sp, #160
	mov	r1, r11
	b	.LBB1_18
.LBB1_18:                               @ %for.end
	mov	r2, r5
	str	r10, [sp, #164]
	str	r10, [sp, #160]
	ldr	r0, .LCPI1_21
	b	.LBB1_19
.LCPI1_21:
	.long	1779033703              @ 0x6a09e667
.LBB1_19:                               @ %for.end
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r0, [sp, #168]
	ldr	r0, .LCPI1_26
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB1_20
.LCPI1_26:
	.long	3144134277              @ 0xbb67ae85
.LBB1_20:                               @ %for.end
	str	r0, [sp, #172]
	ldr	r0, .LCPI1_31
	str	r0, [sp, #20]           @ 4-byte Spill
	str	r0, [sp, #176]
	b	.LBB1_21
.LCPI1_31:
	.long	1013904242              @ 0x3c6ef372
.LBB1_21:                               @ %for.end
	ldr	r0, .LCPI1_36
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r0, [sp, #180]
	ldr	r0, .LCPI1_41
	b	.LBB1_22
.LCPI1_36:
	.long	2773480762              @ 0xa54ff53a
.LCPI1_41:
	.long	1359893119              @ 0x510e527f
.LBB1_22:                               @ %for.end
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #184]
	ldr	r0, .LCPI1_46
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB1_23
.LCPI1_46:
	.long	2600822924              @ 0x9b05688c
.LBB1_23:                               @ %for.end
	str	r0, [sp, #188]
	ldr	r7, .LCPI1_51
	mov	r0, r8
	str	r7, [sp, #192]
	b	.LBB1_24
.LCPI1_51:
	.long	528734635               @ 0x1f83d9ab
.LBB1_24:                               @ %for.end
	ldr	r4, .LCPI1_56
	str	r4, [sp, #196]
	bl	sha256_update
	mov	r0, r8
	b	.LBB1_25
.LCPI1_56:
	.long	1541459225              @ 0x5be0cd19
.LBB1_25:                               @ %for.end
	mov	r1, r6
	mov	r2, r9
	bl	sha256_update
	mov	r0, r8
	b	.LBB1_26
.LBB1_26:                               @ %for.end
	mov	r1, r11
	mov	r2, r5
	bl	sha256_update
	add	r1, sp, #128
	b	.LBB1_27
.LBB1_27:                               @ %for.end
	mov	r0, r8
	bl	sha256_sum
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r10, [sp, #164]
	b	.LBB1_28
.LBB1_28:                               @ %for.end
	str	r10, [sp, #160]
	mov	r1, r11
	mov	r2, r5
	str	r0, [sp, #168]
	b	.LBB1_29
.LBB1_29:                               @ %for.end
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #172]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #176]
	b	.LBB1_30
.LBB1_30:                               @ %for.end
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #180]
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #184]
	b	.LBB1_31
.LBB1_31:                               @ %for.end
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #188]
	mov	r0, r8
	str	r7, [sp, #192]
	b	.LBB1_32
.LBB1_32:                               @ %for.end
	str	r4, [sp, #196]
	bl	sha256_update
	mov	r0, r8
	mov	r1, r6
	b	.LBB1_33
.LBB1_33:                               @ %for.end
	mov	r2, r9
	mov	r4, r6
	bl	sha256_update
	mov	r0, r8
	b	.LBB1_34
.LBB1_34:                               @ %for.end
	mov	r1, r5
	add	r2, sp, #128
	bl	hashmd
	cmp	r5, #0
	beq	.LBB1_53
	b	.LBB1_35
.LBB1_35:
	add	r6, sp, #160
	add	r8, sp, #128
	mov	r7, r5
	b	.LBB1_36
.LBB1_36:                               @ %for.body53
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	tst	r7, #1
	beq	.LBB1_38
	b	.LBB1_37
.LBB1_37:                               @ %if.then55
                                        @   in Loop: Header=BB1_36 Depth=1
	mov	r1, r8
	mov	r2, #32
	b	.LBB1_39
.LBB1_38:                               @ %if.else57
                                        @   in Loop: Header=BB1_36 Depth=1
	mov	r1, r11
	mov	r2, r5
	b	.LBB1_39
.LBB1_39:                               @ %for.inc59
                                        @   in Loop: Header=BB1_36 Depth=1
	bl	sha256_update
	lsr	r0, r7, #1
	cmp	r10, r7, lsr #1
	mov	r7, r0
	bne	.LBB1_36
	b	.LBB1_40
.LBB1_40:                               @ %for.end60
	add	r0, sp, #160
	add	r1, sp, #128
	bl	sha256_sum
	mov	r0, #0
	b	.LBB1_41
.LBB1_41:                               @ %for.end60
	cmp	r5, #0
	str	r0, [sp, #164]
	str	r0, [sp, #160]
	ldr	r0, .LCPI1_22
	b	.LBB1_42
.LCPI1_22:
	.long	1779033703              @ 0x6a09e667
.LBB1_42:                               @ %for.end60
	str	r0, [sp, #168]
	ldr	r0, .LCPI1_27
	str	r0, [sp, #172]
	ldr	r0, .LCPI1_32
	b	.LBB1_43
.LCPI1_27:
	.long	3144134277              @ 0xbb67ae85
.LCPI1_32:
	.long	1013904242              @ 0x3c6ef372
.LBB1_43:                               @ %for.end60
	str	r0, [sp, #176]
	ldr	r0, .LCPI1_37
	str	r0, [sp, #180]
	ldr	r0, .LCPI1_42
	b	.LBB1_44
.LCPI1_37:
	.long	2773480762              @ 0xa54ff53a
.LCPI1_42:
	.long	1359893119              @ 0x510e527f
.LBB1_44:                               @ %for.end60
	str	r0, [sp, #184]
	ldr	r0, .LCPI1_47
	str	r0, [sp, #188]
	ldr	r0, .LCPI1_52
	b	.LBB1_45
.LCPI1_47:
	.long	2600822924              @ 0x9b05688c
.LCPI1_52:
	.long	528734635               @ 0x1f83d9ab
.LBB1_45:                               @ %for.end60
	str	r0, [sp, #192]
	ldr	r0, .LCPI1_57
	str	r0, [sp, #196]
	beq	.LBB1_58
	b	.LBB1_46
.LCPI1_57:
	.long	1541459225              @ 0x5be0cd19
.LBB1_46:
	add	r6, sp, #160
	mov	r7, r5
	b	.LBB1_47
.LBB1_47:                               @ %for.body65
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r11
	mov	r2, r5
	bl	sha256_update
	subs	r7, r7, #1
	bne	.LBB1_47
	b	.LBB1_58
.LBB1_48:                               @ %if.then7
	ldrb	r0, [r4, #10]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB1_96
	b	.LBB1_49
.LBB1_49:                               @ %if.end12
	add	r1, sp, #40
	mov	r0, r4
	mov	r2, #10
	bl	strtoul
	b	.LBB1_50
.LBB1_50:                               @ %if.end12
	ldr	r4, [sp, #40]
	ldrb	r1, [r4]
	cmp	r1, #36
	bne	.LBB1_96
	b	.LBB1_51
.LBB1_51:                               @ %if.end18
	ldr	r2, .LCPI1_19
	ldr	r1, .LCPI1_20
	cmp	r0, r2
	movls	r2, r0
	b	.LBB1_52
.LCPI1_19:
	.long	9999999                 @ 0x98967f
.LCPI1_20:
	.long	.L.str3
.LBB1_52:                               @ %if.end18
	cmp	r0, #1000
	add	r0, sp, #44
	movlo	r2, #1000
	str	r2, [sp, #36]           @ 4-byte Spill
	bl	sprintf
	add	r6, r4, #1
	b	.LBB1_10
.LBB1_53:                               @ %for.end68.critedge
	add	r0, sp, #160
	add	r1, sp, #128
	bl	sha256_sum
	str	r10, [sp, #164]
	b	.LBB1_54
.LBB1_54:                               @ %for.end68.critedge
	str	r10, [sp, #160]
	ldr	r0, .LCPI1_23
	str	r0, [sp, #168]
	ldr	r0, .LCPI1_28
	b	.LBB1_55
.LCPI1_23:
	.long	1779033703              @ 0x6a09e667
.LCPI1_28:
	.long	3144134277              @ 0xbb67ae85
.LBB1_55:                               @ %for.end68.critedge
	str	r0, [sp, #172]
	ldr	r0, .LCPI1_33
	str	r0, [sp, #176]
	ldr	r0, .LCPI1_38
	b	.LBB1_56
.LCPI1_33:
	.long	1013904242              @ 0x3c6ef372
.LCPI1_38:
	.long	2773480762              @ 0xa54ff53a
.LBB1_56:                               @ %for.end68.critedge
	str	r0, [sp, #180]
	ldr	r0, .LCPI1_43
	str	r0, [sp, #184]
	ldr	r0, .LCPI1_48
	b	.LBB1_57
.LCPI1_43:
	.long	1359893119              @ 0x510e527f
.LCPI1_48:
	.long	2600822924              @ 0x9b05688c
.LBB1_57:                               @ %for.end68.critedge
	str	r0, [sp, #188]
	ldr	r0, .LCPI1_53
	str	r0, [sp, #192]
	ldr	r0, .LCPI1_58
	str	r0, [sp, #196]
	b	.LBB1_58
.LCPI1_53:
	.long	528734635               @ 0x1f83d9ab
.LCPI1_58:
	.long	1541459225              @ 0x5be0cd19
.LBB1_58:                               @ %for.end68
	add	r6, sp, #160
	add	r1, sp, #96
	mov	r0, r6
	bl	sha256_sum
	b	.LBB1_59
.LBB1_59:                               @ %for.end68
	mov	r7, #0
	str	r7, [sp, #164]
	str	r7, [sp, #160]
	ldr	r0, .LCPI1_24
	b	.LBB1_60
.LCPI1_24:
	.long	1779033703              @ 0x6a09e667
.LBB1_60:                               @ %for.end68
	str	r0, [sp, #168]
	ldr	r0, .LCPI1_29
	str	r0, [sp, #172]
	ldr	r0, .LCPI1_34
	b	.LBB1_61
.LCPI1_29:
	.long	3144134277              @ 0xbb67ae85
.LCPI1_34:
	.long	1013904242              @ 0x3c6ef372
.LBB1_61:                               @ %for.end68
	str	r0, [sp, #176]
	ldr	r0, .LCPI1_39
	str	r0, [sp, #180]
	ldr	r0, .LCPI1_44
	b	.LBB1_62
.LCPI1_39:
	.long	2773480762              @ 0xa54ff53a
.LCPI1_44:
	.long	1359893119              @ 0x510e527f
.LBB1_62:                               @ %for.end68
	str	r0, [sp, #184]
	ldr	r0, .LCPI1_49
	str	r0, [sp, #188]
	ldr	r0, .LCPI1_54
	str	r0, [sp, #192]
	ldr	r0, .LCPI1_59
	str	r0, [sp, #196]
	b	.LBB1_63
.LCPI1_49:
	.long	2600822924              @ 0x9b05688c
.LCPI1_54:
	.long	528734635               @ 0x1f83d9ab
.LCPI1_59:
	.long	1541459225              @ 0x5be0cd19
.LBB1_63:                               @ %for.body75
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r9
	bl	sha256_update
	b	.LBB1_64
.LBB1_64:                               @ %for.body75
                                        @   in Loop: Header=BB1_63 Depth=1
	ldrb	r0, [sp, #128]
	add	r7, r7, #1
	add	r0, r0, #16
	cmp	r7, r0
	blo	.LBB1_63
	b	.LBB1_65
.LBB1_65:                               @ %for.end78
	add	r0, sp, #160
	add	r1, sp, #64
	bl	sha256_sum
	ldr	r0, [sp, #36]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB1_83
	b	.LBB1_66
.LBB1_66:
	mov	r7, #0
	mov	r10, #0
	add	r6, sp, #160
	add	r8, sp, #128
	b	.LBB1_67
.LBB1_67:                               @ %for.body83
                                        @ =>This Inner Loop Header: Depth=1
	str	r10, [sp, #164]
	str	r10, [sp, #160]
	ldr	r0, .LCPI1_25
	ands	r11, r7, #1
	b	.LBB1_68
.LCPI1_25:
	.long	1779033703              @ 0x6a09e667
.LBB1_68:                               @ %for.body83
                                        @   in Loop: Header=BB1_67 Depth=1
	str	r0, [sp, #168]
	ldr	r0, .LCPI1_30
	str	r0, [sp, #172]
	ldr	r0, .LCPI1_35
	b	.LBB1_69
.LCPI1_30:
	.long	3144134277              @ 0xbb67ae85
.LCPI1_35:
	.long	1013904242              @ 0x3c6ef372
.LBB1_69:                               @ %for.body83
                                        @   in Loop: Header=BB1_67 Depth=1
	str	r0, [sp, #176]
	ldr	r0, .LCPI1_40
	str	r0, [sp, #180]
	ldr	r0, .LCPI1_45
	b	.LBB1_70
.LCPI1_40:
	.long	2773480762              @ 0xa54ff53a
.LCPI1_45:
	.long	1359893119              @ 0x510e527f
.LBB1_70:                               @ %for.body83
                                        @   in Loop: Header=BB1_67 Depth=1
	str	r0, [sp, #184]
	ldr	r0, .LCPI1_50
	str	r0, [sp, #188]
	ldr	r0, .LCPI1_55
	b	.LBB1_71
.LCPI1_50:
	.long	2600822924              @ 0x9b05688c
.LCPI1_55:
	.long	528734635               @ 0x1f83d9ab
.LBB1_71:                               @ %for.body83
                                        @   in Loop: Header=BB1_67 Depth=1
	str	r0, [sp, #192]
	ldr	r0, .LCPI1_60
	str	r0, [sp, #196]
	mov	r0, r6
	beq	.LBB1_73
	b	.LBB1_72
.LCPI1_60:
	.long	1541459225              @ 0x5be0cd19
.LBB1_72:                               @ %if.then85
                                        @   in Loop: Header=BB1_67 Depth=1
	mov	r1, r5
	add	r2, sp, #96
	bl	hashmd
	b	.LBB1_74
.LBB1_73:                               @ %if.else87
                                        @   in Loop: Header=BB1_67 Depth=1
	mov	r1, r8
	mov	r2, #32
	bl	sha256_update
	b	.LBB1_74
.LBB1_74:                               @ %if.end89
                                        @   in Loop: Header=BB1_67 Depth=1
	ldr	r0, .LCPI1_61
	umull	r1, r2, r7, r0
	lsr	r0, r2, #1
	add	r0, r0, r0, lsl #1
	subs	r0, r7, r0
	beq	.LBB1_76
	b	.LBB1_75
.LCPI1_61:
	.long	2863311531              @ 0xaaaaaaab
.LBB1_75:                               @ %if.then92
                                        @   in Loop: Header=BB1_67 Depth=1
	mov	r0, r6
	add	r1, sp, #64
	mov	r2, r9
	bl	sha256_update
	b	.LBB1_76
.LBB1_76:                               @ %if.end94
                                        @   in Loop: Header=BB1_67 Depth=1
	ldr	r0, .LCPI1_62
	umull	r1, r2, r7, r0
	sub	r0, r7, r2
	add	r0, r2, r0, lsr #1
	b	.LBB1_77
.LCPI1_62:
	.long	613566757               @ 0x24924925
.LBB1_77:                               @ %if.end94
                                        @   in Loop: Header=BB1_67 Depth=1
	lsr	r1, r0, #2
	lsl	r1, r1, #3
	sub	r0, r1, r0, lsr #2
	subs	r0, r7, r0
	beq	.LBB1_79
	b	.LBB1_78
.LBB1_78:                               @ %if.then97
                                        @   in Loop: Header=BB1_67 Depth=1
	mov	r0, r6
	mov	r1, r5
	add	r2, sp, #96
	bl	hashmd
	b	.LBB1_79
.LBB1_79:                               @ %if.end99
                                        @   in Loop: Header=BB1_67 Depth=1
	mov	r0, r6
	cmp	r11, #0
	beq	.LBB1_81
	b	.LBB1_80
.LBB1_80:                               @ %if.then102
                                        @   in Loop: Header=BB1_67 Depth=1
	mov	r1, r8
	mov	r2, #32
	bl	sha256_update
	b	.LBB1_82
.LBB1_81:                               @ %if.else104
                                        @   in Loop: Header=BB1_67 Depth=1
	mov	r1, r5
	add	r2, sp, #96
	bl	hashmd
	b	.LBB1_82
.LBB1_82:                               @ %if.end106
                                        @   in Loop: Header=BB1_67 Depth=1
	mov	r0, r6
	mov	r1, r8
	bl	sha256_sum
	ldr	r0, [sp, #36]           @ 4-byte Reload
	add	r7, r7, #1
	cmp	r0, r7
	bne	.LBB1_67
	b	.LBB1_83
.LBB1_83:                               @ %for.end110
	ldr	r8, [sp, #32]           @ 4-byte Reload
	ldr	r1, .LCPI1_63
	add	r2, sp, #44
	mov	r3, r9
	b	.LBB1_84
.LCPI1_63:
	.long	.L.str4
.LBB1_84:                               @ %for.end110
	str	r4, [sp]
	mov	r0, r8
	bl	sprintf
	ldr	r12, .LCPI1_64
	b	.LBB1_85
.LCPI1_64:
	.long	sha256crypt.perm
.LBB1_85:                               @ %for.end110
	ldr	r1, .LCPI1_65
	add	r2, r8, r0
	mov	r3, #0
	add	r4, sp, #128
	b	.LBB1_86
.LCPI1_65:
	.long	b64
.LBB1_86:                               @ %for.body117
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_89 Depth 2
	add	r6, r3, r3, lsl #1
	mov	r7, r12
	ldrb	r6, [r7, r6]!
	ldrb	r5, [r7, #1]
	b	.LBB1_87
.LBB1_87:                               @ %for.body117
                                        @   in Loop: Header=BB1_86 Depth=1
	ldrb	r7, [r7, #2]
	ldrb	r6, [r4, r6]
	ldrb	r5, [r4, r5]
	ldrb	r7, [r4, r7]
	b	.LBB1_88
.LBB1_88:                               @ %for.body117
                                        @   in Loop: Header=BB1_86 Depth=1
	lsl	r5, r5, #8
	orr	r6, r5, r6, lsl #16
	mov	r5, #0
	orr	r6, r6, r7
	b	.LBB1_89
.LBB1_89:                               @ %while.body.i217
                                        @   Parent Loop BB1_86 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r7, r6, #63
	lsr	r6, r6, #6
	ldrb	r7, [r1, r7]
	strb	r7, [r2, -r5]
	b	.LBB1_90
.LBB1_90:                               @ %while.body.i217
                                        @   in Loop: Header=BB1_89 Depth=2
	sub	r7, r5, #1
	add	r5, r5, #4
	cmp	r5, #1
	mov	r5, r7
	bgt	.LBB1_89
	b	.LBB1_91
.LBB1_91:                               @ %to64.exit219
                                        @   in Loop: Header=BB1_86 Depth=1
	add	r3, r3, #1
	add	r2, r2, #4
	cmp	r3, #10
	bne	.LBB1_86
	b	.LBB1_92
.LBB1_92:                               @ %for.end137
	ldrb	r3, [sp, #158]
	ldrb	r7, [sp, #159]
	add	r0, r8, r0
	add	r2, r0, #40
	orr	r3, r3, r7, lsl #8
	mov	r7, #0
	b	.LBB1_93
.LBB1_93:                               @ %while.body.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r6, r3, #63
	lsr	r3, r3, #6
	ldrb	r6, [r1, r6]
	strb	r6, [r2, -r7]
	b	.LBB1_94
.LBB1_94:                               @ %while.body.i
                                        @   in Loop: Header=BB1_93 Depth=1
	sub	r6, r7, #1
	add	r7, r7, #3
	cmp	r7, #1
	mov	r7, r6
	bgt	.LBB1_93
	b	.LBB1_95
.LBB1_95:                               @ %to64.exit
	mov	r1, #0
	mov	r7, r8
	strb	r1, [r0, #43]
	b	.LBB1_96
.LBB1_96:                               @ %cleanup
	mov	r0, r7
	add	sp, sp, #268
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	sha256crypt, .Ltmp1-sha256crypt
	.cantunwind
	.fnend

	.align	2
	.type	sha256_update,%function
sha256_update:                          @ @sha256_update
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r5, r0
	mov	r6, r1
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mov	r4, r2
	ldm	r5, {r0, r1}
	adds	r2, r0, r4
	adc	r1, r1, #0
	b	.LBB2_4
.LBB2_4:                                @ %entry
	str	r2, [r5]
	str	r1, [r5, #4]
	ands	r1, r0, #63
	beq	.LBB2_9
	b	.LBB2_5
.LBB2_5:                                @ %if.then
	add	r0, r5, r1
	rsb	r7, r1, #64
	add	r0, r0, #40
	cmp	r7, r4
	bls	.LBB2_7
	b	.LBB2_6
.LBB2_6:                                @ %if.then5
	mov	r1, r6
	b	.LBB2_15
.LBB2_7:                                @ %if.end
	mov	r1, r6
	mov	r2, r7
	bl	memcpy
	add	r1, r5, #40
	b	.LBB2_8
.LBB2_8:                                @ %if.end
	mov	r0, r5
	bl	processblock
	add	r6, r6, r7
	sub	r4, r4, r7
	b	.LBB2_9
.LBB2_9:                                @ %for.cond.preheader
	cmp	r4, #64
	blo	.LBB2_13
	b	.LBB2_10
.LBB2_10:                               @ %for.body.lr.ph
	sub	r8, r4, #64
	bic	r9, r8, #63
	add	r0, r9, r6
	add	r7, r0, #64
	b	.LBB2_11
.LBB2_11:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r6
	bl	processblock
	sub	r4, r4, #64
	add	r6, r6, #64
	cmp	r4, #63
	bhi	.LBB2_11
	b	.LBB2_12
.LBB2_12:                               @ %for.cond.for.end_crit_edge
	sub	r4, r8, r9
	b	.LBB2_14
.LBB2_13:
	mov	r7, r6
	b	.LBB2_14
.LBB2_14:                               @ %for.end
	add	r0, r5, #40
	mov	r1, r7
	b	.LBB2_15
.LBB2_15:                               @ %if.then5
	mov	r2, r4
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	memcpy
.Ltmp2:
	.size	sha256_update, .Ltmp2-sha256_update
	.cantunwind
	.fnend

	.align	2
	.type	sha256_sum,%function
sha256_sum:                             @ @sha256_sum
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.LBB3_2:                                @ %entry
	mov	r5, r0
	mov	r4, r1
	mov	r8, r5
	ldr	r0, [r8], #40
	b	.LBB3_3
.LBB3_3:                                @ %entry
	and	r1, r0, #63
	mov	r0, #128
	add	r7, r1, #1
	strb	r0, [r8, r1]
	cmp	r7, #57
	blo	.LBB3_6
	b	.LBB3_4
.LBB3_4:                                @ %if.then.i
	add	r0, r5, r7
	eor	r2, r1, #63
	mov	r1, #0
	mov	r7, #0
	b	.LBB3_5
.LBB3_5:                                @ %if.then.i
	add	r0, r0, #40
	bl	memset
	mov	r0, r5
	mov	r1, r8
	bl	processblock
	b	.LBB3_6
.LBB3_6:                                @ %pad.exit
	add	r0, r5, r7
	rsb	r2, r7, #56
	mov	r1, #0
	mov	r7, #0
	b	.LBB3_7
.LBB3_7:                                @ %pad.exit
	add	r0, r0, #40
	bl	memset
	ldm	r5, {r0, r1}
	lsl	r3, r1, #3
	b	.LBB3_8
.LBB3_8:                                @ %pad.exit
	lsl	r2, r0, #3
	lsr	r6, r1, #21
	orr	r3, r3, r0, lsr #29
	stm	r5, {r2, r3}
	b	.LBB3_9
.LBB3_9:                                @ %pad.exit
	strb	r6, [r5, #96]
	lsr	r6, r1, #13
	lsr	r1, r1, #5
	strb	r6, [r5, #97]
	b	.LBB3_10
.LBB3_10:                               @ %pad.exit
	strb	r1, [r5, #98]
	lsr	r1, r0, #21
	strb	r3, [r5, #99]
	strb	r1, [r5, #100]
	b	.LBB3_11
.LBB3_11:                               @ %pad.exit
	lsr	r1, r0, #13
	lsr	r0, r0, #5
	strb	r1, [r5, #101]
	strb	r0, [r5, #102]
	b	.LBB3_12
.LBB3_12:                               @ %pad.exit
	mov	r0, r5
	mov	r1, r8
	strb	r2, [r5, #103]
	bl	processblock
	add	r0, r5, #8
	b	.LBB3_13
.LBB3_13:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r0, r7
	mov	r3, r4
	ldrb	r2, [r1, #3]
	strb	r2, [r3, r7]!
	b	.LBB3_14
.LBB3_14:                               @ %for.body
                                        @   in Loop: Header=BB3_13 Depth=1
	ldrh	r1, [r1, #2]
	strb	r1, [r3, #1]
	ldr	r1, [r0, r7]
	lsr	r1, r1, #8
	b	.LBB3_15
.LBB3_15:                               @ %for.body
                                        @   in Loop: Header=BB3_13 Depth=1
	strb	r1, [r3, #2]
	ldr	r1, [r0, r7]
	add	r7, r7, #4
	cmp	r7, #32
	strb	r1, [r3, #3]
	bne	.LBB3_13
	b	.LBB3_16
.LBB3_16:                               @ %for.end
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp3:
	.size	sha256_sum, .Ltmp3-sha256_sum
	.cantunwind
	.fnend

	.align	2
	.type	hashmd,%function
hashmd:                                 @ @hashmd
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.LBB4_2:                                @ %entry
	mov	r7, r1
	mov	r4, r2
	mov	r6, r0
	cmp	r7, #33
	blo	.LBB4_6
	b	.LBB4_3
.LBB4_3:                                @ %for.body.lr.ph
	sub	r0, r7, #33
	mov	r5, r7
	bic	r8, r0, #31
	b	.LBB4_4
.LBB4_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r4
	mov	r2, #32
	bl	sha256_update
	sub	r5, r5, #32
	cmp	r5, #32
	bhi	.LBB4_4
	b	.LBB4_5
.LBB4_5:                                @ %for.cond.for.end_crit_edge
	sub	r0, r7, #32
	sub	r7, r0, r8
	b	.LBB4_6
.LBB4_6:                                @ %for.end
	mov	r0, r6
	mov	r1, r4
	mov	r2, r7
	pop	{r4, r5, r6, r7, r8, lr}
	b	sha256_update
.Ltmp4:
	.size	hashmd, .Ltmp4-hashmd
	.cantunwind
	.fnend

	.align	2
	.type	processblock,%function
processblock:                           @ @processblock
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	b	.LBB5_2
.LBB5_2:                                @ %entry
	.pad	#300
	sub	sp, sp, #300
	mov	r3, #0
	add	lr, sp, #44
	b	.LBB5_3
.LBB5_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r5, r1
	ldrb	r2, [r5, r3]!
	ldrb	r7, [r5, #1]
	ldrb	r6, [r5, #2]
	b	.LBB5_4
.LBB5_4:                                @ %for.body
                                        @   in Loop: Header=BB5_3 Depth=1
	ldrb	r5, [r5, #3]
	lsl	r7, r7, #16
	orr	r2, r7, r2, lsl #24
	orr	r2, r2, r6, lsl #8
	b	.LBB5_5
.LBB5_5:                                @ %for.body
                                        @   in Loop: Header=BB5_3 Depth=1
	orr	r2, r2, r5
	str	r2, [lr, r3]
	add	r3, r3, #4
	cmp	r3, #64
	bne	.LBB5_3
	b	.LBB5_6
.LBB5_6:                                @ %for.body23.lr.ph
	ldr	r3, [sp, #44]
	mov	r1, #0
	b	.LBB5_7
.LBB5_7:                                @ %for.body23
                                        @ =>This Inner Loop Header: Depth=1
	add	r7, lr, r1
	add	r1, r1, #4
	ldr	r6, [r7, #56]
	ldr	r2, [r7, #4]
	b	.LBB5_8
.LBB5_8:                                @ %for.body23
                                        @   in Loop: Header=BB5_7 Depth=1
	ldr	r12, [r7, #36]
	cmp	r1, #192
	ror	r4, r6, #19
	ror	r5, r2, #18
	b	.LBB5_9
.LBB5_9:                                @ %for.body23
                                        @   in Loop: Header=BB5_7 Depth=1
	add	r3, r3, r12
	eor	r4, r4, r6, lsr #10
	eor	r5, r5, r2, lsr #3
	eor	r6, r4, r6, ror #17
	b	.LBB5_10
.LBB5_10:                               @ %for.body23
                                        @   in Loop: Header=BB5_7 Depth=1
	eor	r5, r5, r2, ror #7
	add	r3, r3, r6
	add	r3, r3, r5
	str	r3, [r7, #64]
	mov	r3, r2
	bne	.LBB5_7
	b	.LBB5_11
.LBB5_11:                               @ %for.end52
	ldr	r2, [r0, #8]
	ldr	r7, [r0, #36]
	ldr	r8, [r0, #12]
	ldr	r6, [r0, #16]
	b	.LBB5_12
.LBB5_12:                               @ %for.end52
	ldr	r9, [r0, #20]
	ldr	r10, [r0, #24]
	ldr	r3, [r0, #28]
	ldr	r5, [r0, #32]
	b	.LBB5_13
.LBB5_13:                               @ %for.end52
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r1, #0
	mov	r0, r2
	str	r2, [sp, #32]           @ 4-byte Spill
	b	.LBB5_14
.LBB5_14:                               @ %for.end52
	str	r8, [sp, #28]           @ 4-byte Spill
	str	r6, [sp, #24]           @ 4-byte Spill
	str	r9, [sp, #20]           @ 4-byte Spill
	str	r10, [sp, #16]          @ 4-byte Spill
	b	.LBB5_15
.LBB5_15:                               @ %for.end52
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r5, [sp, #8]            @ 4-byte Spill
	str	r7, [sp, #4]            @ 4-byte Spill
	str	r7, [sp, #40]           @ 4-byte Spill
	b	.LBB5_16
.LBB5_16:                               @ %for.body72
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r0
	mov	r2, r8
	mov	lr, r6
	mov	r11, r3
	b	.LBB5_17
.LBB5_17:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	mov	r12, r10
	ldr	r6, [sp, #40]           @ 4-byte Reload
	mov	r4, r5
	orr	r3, r2, r7
	b	.LBB5_18
.LBB5_18:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	and	r0, r2, r7
	ror	r5, r12, #6
	mov	r8, r7
	str	r4, [sp, #40]           @ 4-byte Spill
	b	.LBB5_19
.LBB5_19:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	and	r3, lr, r3
	eor	r5, r5, r12, ror #11
	orr	r0, r3, r0
	ror	r3, r7, #2
	b	.LBB5_20
.LBB5_20:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	eor	r5, r5, r12, ror #25
	eor	r3, r3, r7, ror #13
	add	r5, r5, r6
	mov	r6, r2
	b	.LBB5_21
.LBB5_21:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	eor	r3, r3, r7, ror #22
	add	r0, r3, r0
	eor	r3, r4, r11
	and	r3, r3, r12
	b	.LBB5_22
.LBB5_22:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	eor	r3, r3, r4
	add	r3, r5, r3
	ldr	r5, .LCPI5_0
	ldr	r5, [r5, r1, lsl #2]
	b	.LBB5_23
.LCPI5_0:
	.long	K
.LBB5_23:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	add	r3, r3, r5
	add	r5, sp, #44
	ldr	r5, [r5, r1, lsl #2]
	add	r1, r1, #1
	b	.LBB5_24
.LBB5_24:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	cmp	r1, #64
	add	r3, r3, r5
	mov	r5, r11
	add	r10, r3, r9
	b	.LBB5_25
.LBB5_25:                               @ %for.body72
                                        @   in Loop: Header=BB5_16 Depth=1
	add	r0, r0, r3
	mov	r3, r12
	mov	r9, lr
	bne	.LBB5_16
	b	.LBB5_26
.LBB5_26:                               @ %for.end100
	ldr	r1, [sp, #32]           @ 4-byte Reload
	add	r8, r1, r0
	ldr	r0, [sp, #28]           @ 4-byte Reload
	add	r1, r0, r7
	b	.LBB5_27
.LBB5_27:                               @ %for.end100
	ldr	r0, [sp, #24]           @ 4-byte Reload
	add	r2, r0, r2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	add	r3, r0, lr
	b	.LBB5_28
.LBB5_28:                               @ %for.end100
	ldr	r0, [sp, #16]           @ 4-byte Reload
	add	r7, r0, r10
	ldr	r0, [sp, #12]           @ 4-byte Reload
	add	r6, r0, r12
	b	.LBB5_29
.LBB5_29:                               @ %for.end100
	ldr	r0, [sp, #8]            @ 4-byte Reload
	add	r5, r0, r11
	ldr	r0, [sp, #4]            @ 4-byte Reload
	add	r4, r0, r4
	b	.LBB5_30
.LBB5_30:                               @ %for.end100
	ldr	r0, [sp, #36]           @ 4-byte Reload
	add	r9, r0, #12
	str	r8, [r0, #8]
	stm	r9, {r1, r2, r3, r7}
	b	.LBB5_31
.LBB5_31:                               @ %for.end100
	str	r6, [r0, #28]
	str	r5, [r0, #32]
	str	r4, [r0, #36]
	add	sp, sp, #300
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	processblock, .Ltmp5-processblock
	.cantunwind
	.fnend

	.type	__crypt_sha256.testkey,%object @ @__crypt_sha256.testkey
	.section	.rodata,"a",%progbits
__crypt_sha256.testkey:
	.asciz	"Xy01@#\001\002\200\177\377\r\n\201\t !"
	.size	__crypt_sha256.testkey, 18

	.type	__crypt_sha256.testsetting,%object @ @__crypt_sha256.testsetting
__crypt_sha256.testsetting:
	.asciz	"$5$rounds=1234$abc0123456789$"
	.size	__crypt_sha256.testsetting, 30

	.type	__crypt_sha256.testhash,%object @ @__crypt_sha256.testhash
__crypt_sha256.testhash:
	.asciz	"$5$rounds=1234$abc0123456789$3VfDjPt05VHFn47C/ojFZ6KRPYrOjj1lLbH.dkF3bZ6"
	.size	__crypt_sha256.testhash, 73

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"*"
	.size	.L.str, 2

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"$5$"
	.size	.L.str1, 4

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"rounds="
	.size	.L.str2, 8

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"rounds=%u$"
	.size	.L.str3, 11

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"$5$%s%.*s$"
	.size	.L.str4, 11

	.type	sha256crypt.perm,%object @ @sha256crypt.perm
	.section	.rodata,"a",%progbits
sha256crypt.perm:
	.ascii	"\000\n\024"
	.ascii	"\025\001\013"
	.ascii	"\f\026\002"
	.ascii	"\003\r\027"
	.ascii	"\030\004\016"
	.ascii	"\017\031\005"
	.ascii	"\006\020\032"
	.ascii	"\033\007\021"
	.ascii	"\022\034\b"
	.ascii	"\t\023\035"
	.size	sha256crypt.perm, 30

	.type	K,%object               @ @K
	.align	2
K:
	.long	1116352408              @ 0x428a2f98
	.long	1899447441              @ 0x71374491
	.long	3049323471              @ 0xb5c0fbcf
	.long	3921009573              @ 0xe9b5dba5
	.long	961987163               @ 0x3956c25b
	.long	1508970993              @ 0x59f111f1
	.long	2453635748              @ 0x923f82a4
	.long	2870763221              @ 0xab1c5ed5
	.long	3624381080              @ 0xd807aa98
	.long	310598401               @ 0x12835b01
	.long	607225278               @ 0x243185be
	.long	1426881987              @ 0x550c7dc3
	.long	1925078388              @ 0x72be5d74
	.long	2162078206              @ 0x80deb1fe
	.long	2614888103              @ 0x9bdc06a7
	.long	3248222580              @ 0xc19bf174
	.long	3835390401              @ 0xe49b69c1
	.long	4022224774              @ 0xefbe4786
	.long	264347078               @ 0xfc19dc6
	.long	604807628               @ 0x240ca1cc
	.long	770255983               @ 0x2de92c6f
	.long	1249150122              @ 0x4a7484aa
	.long	1555081692              @ 0x5cb0a9dc
	.long	1996064986              @ 0x76f988da
	.long	2554220882              @ 0x983e5152
	.long	2821834349              @ 0xa831c66d
	.long	2952996808              @ 0xb00327c8
	.long	3210313671              @ 0xbf597fc7
	.long	3336571891              @ 0xc6e00bf3
	.long	3584528711              @ 0xd5a79147
	.long	113926993               @ 0x6ca6351
	.long	338241895               @ 0x14292967
	.long	666307205               @ 0x27b70a85
	.long	773529912               @ 0x2e1b2138
	.long	1294757372              @ 0x4d2c6dfc
	.long	1396182291              @ 0x53380d13
	.long	1695183700              @ 0x650a7354
	.long	1986661051              @ 0x766a0abb
	.long	2177026350              @ 0x81c2c92e
	.long	2456956037              @ 0x92722c85
	.long	2730485921              @ 0xa2bfe8a1
	.long	2820302411              @ 0xa81a664b
	.long	3259730800              @ 0xc24b8b70
	.long	3345764771              @ 0xc76c51a3
	.long	3516065817              @ 0xd192e819
	.long	3600352804              @ 0xd6990624
	.long	4094571909              @ 0xf40e3585
	.long	275423344               @ 0x106aa070
	.long	430227734               @ 0x19a4c116
	.long	506948616               @ 0x1e376c08
	.long	659060556               @ 0x2748774c
	.long	883997877               @ 0x34b0bcb5
	.long	958139571               @ 0x391c0cb3
	.long	1322822218              @ 0x4ed8aa4a
	.long	1537002063              @ 0x5b9cca4f
	.long	1747873779              @ 0x682e6ff3
	.long	1955562222              @ 0x748f82ee
	.long	2024104815              @ 0x78a5636f
	.long	2227730452              @ 0x84c87814
	.long	2361852424              @ 0x8cc70208
	.long	2428436474              @ 0x90befffa
	.long	2756734187              @ 0xa4506ceb
	.long	3204031479              @ 0xbef9a3f7
	.long	3329325298              @ 0xc67178f2
	.size	K, 256

	.type	b64,%object             @ @b64
	.section	.rodata.str1.1,"aMS",%progbits,1
b64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	b64, 65


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
