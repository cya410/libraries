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
	.file	"src/crypt/crypt_sha512.bc"
	.globl	__crypt_sha512
	.align	2
	.type	__crypt_sha512,%function
__crypt_sha512:                         @ @__crypt_sha512
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
	bl	sha512crypt
	mov	r4, r0
	ldr	r0, .LCPI0_4
	ldr	r1, .LCPI0_5
	b	.LBB0_3
.LCPI0_4:
	.long	__crypt_sha512.testkey
.LCPI0_5:
	.long	__crypt_sha512.testsetting
.LBB0_3:                                @ %entry
	mov	r5, sp
	mov	r2, r5
	bl	sha512crypt
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
	mov	r2, #116
	bl	memcmp
	b	.LBB0_6
.LCPI0_8:
	.long	__crypt_sha512.testhash
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
	.size	__crypt_sha512, .Ltmp0-__crypt_sha512
	.cantunwind
	.fnend

	.align	2
	.type	sha512crypt,%function
sha512crypt:                            @ @sha512crypt
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#500
	sub	sp, sp, #500
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r8, r2
	mov	r4, r1
	mov	r6, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	add	r0, sp, #84
	mov	r1, #20
	mov	r2, #0
	mov	r5, #0
	bl	__aeabi_memset
	mov	r7, #0
	b	.LBB1_5
.LBB1_5:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r6, r5]
	cmp	r0, #0
	beq	.LBB1_7
	b	.LBB1_6
.LBB1_6:                                @ %for.inc
                                        @   in Loop: Header=BB1_5 Depth=1
	add	r5, r5, #1
	cmp	r5, #256
	bls	.LBB1_5
	b	.LBB1_134
.LBB1_7:                                @ %if.end
	ldr	r1, .LCPI1_25
	mov	r0, r4
	mov	r2, #3
	bl	strncmp
	mov	r7, #0
	cmp	r0, #0
	bne	.LBB1_134
	b	.LBB1_8
.LCPI1_25:
	.long	.L.str1
.LBB1_8:                                @ %if.end6
	ldr	r1, .LCPI1_26
	add	r9, r4, #3
	mov	r2, #7
	mov	r0, r9
	bl	strncmp
	cmp	r0, #0
	beq	.LBB1_66
	b	.LBB1_9
.LCPI1_26:
	.long	.L.str2
.LBB1_9:
	mov	r0, #904
	orr	r0, r0, #4096
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB1_10
.LBB1_10:                               @ %if.end34
	mov	r7, #0
	mov	r4, #0
	b	.LBB1_11
.LBB1_11:                               @ %land.lhs.true
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r9, r4
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
	b	.LBB1_134
.LBB1_14:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_11 Depth=1
	cmp	r0, #36
	beq	.LBB1_17
	b	.LBB1_15
.LBB1_15:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_11 Depth=1
	cmp	r0, #58
	beq	.LBB1_134
	b	.LBB1_16
.LBB1_16:                               @ %for.inc58
                                        @   in Loop: Header=BB1_11 Depth=1
	add	r4, r4, #1
	cmp	r4, #16
	blo	.LBB1_11
	b	.LBB1_17
.LBB1_17:                               @ %for.end60
	str	r8, [sp, #36]           @ 4-byte Spill
	mov	r8, #0
	str	r4, [sp, #52]           @ 4-byte Spill
	add	r7, sp, #296
	b	.LBB1_18
.LBB1_18:                               @ %for.end60
	mov	r1, r6
	mov	r2, r5
	str	r8, [sp, #300]
	str	r8, [sp, #296]
	b	.LBB1_19
.LBB1_19:                               @ %for.end60
	ldr	r0, .LCPI1_29
	str	r0, [sp, #76]           @ 4-byte Spill
	str	r0, [sp, #308]
	ldr	r0, .LCPI1_34
	b	.LBB1_20
.LCPI1_29:
	.long	1779033703              @ 0x6a09e667
.LCPI1_34:
	.long	4089235720              @ 0xf3bcc908
.LBB1_20:                               @ %for.end60
	str	r0, [sp, #72]           @ 4-byte Spill
	str	r0, [sp, #304]
	ldr	r0, .LCPI1_39
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB1_21
.LCPI1_39:
	.long	3144134277              @ 0xbb67ae85
.LBB1_21:                               @ %for.end60
	str	r0, [sp, #316]
	ldr	r0, .LCPI1_44
	str	r0, [sp, #64]           @ 4-byte Spill
	str	r0, [sp, #312]
	b	.LBB1_22
.LCPI1_44:
	.long	2227873595              @ 0x84caa73b
.LBB1_22:                               @ %for.end60
	ldr	r0, .LCPI1_49
	str	r0, [sp, #56]           @ 4-byte Spill
	str	r0, [sp, #324]
	ldr	r0, .LCPI1_54
	b	.LBB1_23
.LCPI1_49:
	.long	1013904242              @ 0x3c6ef372
.LCPI1_54:
	.long	4271175723              @ 0xfe94f82b
.LBB1_23:                               @ %for.end60
	str	r0, [sp, #44]           @ 4-byte Spill
	str	r0, [sp, #320]
	ldr	r0, .LCPI1_59
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB1_24
.LCPI1_59:
	.long	2773480762              @ 0xa54ff53a
.LBB1_24:                               @ %for.end60
	str	r0, [sp, #332]
	ldr	r0, .LCPI1_64
	str	r0, [sp, #32]           @ 4-byte Spill
	str	r0, [sp, #328]
	b	.LBB1_25
.LCPI1_64:
	.long	1595750129              @ 0x5f1d36f1
.LBB1_25:                               @ %for.end60
	ldr	r0, .LCPI1_69
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r0, [sp, #340]
	ldr	r0, .LCPI1_74
	b	.LBB1_26
.LCPI1_69:
	.long	1359893119              @ 0x510e527f
.LCPI1_74:
	.long	2917565137              @ 0xade682d1
.LBB1_26:                               @ %for.end60
	str	r0, [sp, #24]           @ 4-byte Spill
	str	r0, [sp, #336]
	ldr	r0, .LCPI1_79
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB1_27
.LCPI1_79:
	.long	2600822924              @ 0x9b05688c
.LBB1_27:                               @ %for.end60
	str	r0, [sp, #348]
	ldr	r0, .LCPI1_84
	str	r9, [sp, #48]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB1_28
.LCPI1_84:
	.long	725511199               @ 0x2b3e6c1f
.LBB1_28:                               @ %for.end60
	str	r0, [sp, #344]
	ldr	r9, .LCPI1_89
	str	r9, [sp, #356]
	ldr	r10, .LCPI1_94
	b	.LBB1_29
.LCPI1_89:
	.long	528734635               @ 0x1f83d9ab
.LCPI1_94:
	.long	4215389547              @ 0xfb41bd6b
.LBB1_29:                               @ %for.end60
	str	r10, [sp, #352]
	ldr	r0, .LCPI1_99
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #364]
	b	.LBB1_30
.LCPI1_99:
	.long	1541459225              @ 0x5be0cd19
.LBB1_30:                               @ %for.end60
	ldr	r11, .LCPI1_104
	mov	r0, r7
	str	r11, [sp, #360]
	bl	sha512_update
	b	.LBB1_31
.LCPI1_104:
	.long	327033209               @ 0x137e2179
.LBB1_31:                               @ %for.end60
	ldr	r1, [sp, #48]           @ 4-byte Reload
	mov	r0, r7
	mov	r2, r4
	bl	sha512_update
	b	.LBB1_32
.LBB1_32:                               @ %for.end60
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	sha512_update
	b	.LBB1_33
.LBB1_33:                               @ %for.end60
	add	r1, sp, #232
	mov	r0, r7
	bl	sha512_sum
	ldr	r0, [sp, #76]           @ 4-byte Reload
	b	.LBB1_34
.LBB1_34:                               @ %for.end60
	str	r8, [sp, #300]
	str	r8, [sp, #296]
	mov	r1, r6
	mov	r2, r5
	b	.LBB1_35
.LBB1_35:                               @ %for.end60
	str	r0, [sp, #308]
	ldr	r0, [sp, #72]           @ 4-byte Reload
	str	r0, [sp, #304]
	ldr	r0, [sp, #68]           @ 4-byte Reload
	b	.LBB1_36
.LBB1_36:                               @ %for.end60
	str	r0, [sp, #316]
	ldr	r0, [sp, #64]           @ 4-byte Reload
	str	r0, [sp, #312]
	ldr	r0, [sp, #56]           @ 4-byte Reload
	b	.LBB1_37
.LBB1_37:                               @ %for.end60
	str	r0, [sp, #324]
	ldr	r0, [sp, #44]           @ 4-byte Reload
	str	r0, [sp, #320]
	ldr	r0, [sp, #40]           @ 4-byte Reload
	b	.LBB1_38
.LBB1_38:                               @ %for.end60
	str	r0, [sp, #332]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #328]
	ldr	r0, [sp, #28]           @ 4-byte Reload
	b	.LBB1_39
.LBB1_39:                               @ %for.end60
	str	r0, [sp, #340]
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #336]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	b	.LBB1_40
.LBB1_40:                               @ %for.end60
	str	r0, [sp, #348]
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #344]
	ldr	r0, [sp, #12]           @ 4-byte Reload
	b	.LBB1_41
.LBB1_41:                               @ %for.end60
	str	r9, [sp, #356]
	ldr	r9, [sp, #48]           @ 4-byte Reload
	str	r10, [sp, #352]
	str	r0, [sp, #364]
	b	.LBB1_42
.LBB1_42:                               @ %for.end60
	mov	r0, r7
	str	r11, [sp, #360]
	bl	sha512_update
	mov	r0, r7
	b	.LBB1_43
.LBB1_43:                               @ %for.end60
	mov	r1, r9
	mov	r2, r4
	bl	sha512_update
	mov	r0, r7
	b	.LBB1_44
.LBB1_44:                               @ %for.end60
	mov	r1, r5
	add	r2, sp, #232
	bl	hashmd
	add	r0, r7, #64
	b	.LBB1_45
.LBB1_45:                               @ %for.end60
	add	r1, r7, #56
	add	r2, r7, #48
	add	r3, r7, #40
	add	r4, r7, #32
	b	.LBB1_46
.LBB1_46:                               @ %for.end60
	add	r10, r7, #24
	add	r11, r7, #16
	add	r7, r7, #8
	cmp	r5, #0
	beq	.LBB1_71
	b	.LBB1_47
.LBB1_47:
	str	r7, [sp, #64]           @ 4-byte Spill
	str	r11, [sp, #68]          @ 4-byte Spill
	str	r10, [sp, #76]          @ 4-byte Spill
	str	r4, [sp, #40]           @ 4-byte Spill
	b	.LBB1_48
.LBB1_48:
	mov	r11, r1
	mov	r10, r0
	add	r7, sp, #296
	add	r9, sp, #232
	mov	r4, r5
	str	r3, [sp, #44]           @ 4-byte Spill
	str	r2, [sp, #72]           @ 4-byte Spill
	b	.LBB1_49
.LBB1_49:                               @ %for.body66
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r7
	tst	r4, #1
	beq	.LBB1_51
	b	.LBB1_50
.LBB1_50:                               @ %if.then68
                                        @   in Loop: Header=BB1_49 Depth=1
	mov	r1, r9
	mov	r2, #64
	b	.LBB1_52
.LBB1_51:                               @ %if.else70
                                        @   in Loop: Header=BB1_49 Depth=1
	mov	r1, r6
	mov	r2, r5
	b	.LBB1_52
.LBB1_52:                               @ %for.inc72
                                        @   in Loop: Header=BB1_49 Depth=1
	bl	sha512_update
	lsr	r0, r4, #1
	cmp	r8, r4, lsr #1
	mov	r4, r0
	bne	.LBB1_49
	b	.LBB1_53
.LBB1_53:                               @ %for.end73
	add	r0, sp, #296
	add	r1, sp, #232
	bl	sha512_sum
	mov	r7, #0
	b	.LBB1_54
.LBB1_54:                               @ %for.end73
	cmp	r5, #0
	str	r7, [sp, #300]
	str	r7, [sp, #296]
	ldr	r0, .LCPI1_30
	b	.LBB1_55
.LCPI1_30:
	.long	1779033703              @ 0x6a09e667
.LBB1_55:                               @ %for.end73
	ldr	r1, [sp, #64]           @ 4-byte Reload
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_35
	str	r0, [r1]
	b	.LBB1_56
.LCPI1_35:
	.long	4089235720              @ 0xf3bcc908
.LBB1_56:                               @ %for.end73
	ldr	r0, .LCPI1_40
	ldr	r1, [sp, #68]           @ 4-byte Reload
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_45
	b	.LBB1_57
.LCPI1_40:
	.long	3144134277              @ 0xbb67ae85
.LCPI1_45:
	.long	2227873595              @ 0x84caa73b
.LBB1_57:                               @ %for.end73
	str	r0, [r1]
	ldr	r0, .LCPI1_50
	ldr	r1, [sp, #76]           @ 4-byte Reload
	str	r0, [r1, #4]
	b	.LBB1_58
.LCPI1_50:
	.long	1013904242              @ 0x3c6ef372
.LBB1_58:                               @ %for.end73
	ldr	r0, .LCPI1_55
	str	r0, [r1]
	ldr	r0, .LCPI1_60
	ldr	r1, [sp, #40]           @ 4-byte Reload
	b	.LBB1_59
.LCPI1_55:
	.long	4271175723              @ 0xfe94f82b
.LCPI1_60:
	.long	2773480762              @ 0xa54ff53a
.LBB1_59:                               @ %for.end73
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_65
	str	r0, [r1]
	ldr	r0, .LCPI1_70
	b	.LBB1_60
.LCPI1_65:
	.long	1595750129              @ 0x5f1d36f1
.LCPI1_70:
	.long	1359893119              @ 0x510e527f
.LBB1_60:                               @ %for.end73
	ldr	r1, [sp, #44]           @ 4-byte Reload
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_75
	str	r0, [r1]
	b	.LBB1_61
.LCPI1_75:
	.long	2917565137              @ 0xade682d1
.LBB1_61:                               @ %for.end73
	ldr	r0, .LCPI1_80
	ldr	r8, [sp, #72]           @ 4-byte Reload
	str	r0, [r8, #4]
	ldr	r0, .LCPI1_85
	b	.LBB1_62
.LCPI1_80:
	.long	2600822924              @ 0x9b05688c
.LCPI1_85:
	.long	725511199               @ 0x2b3e6c1f
.LBB1_62:                               @ %for.end73
	str	r0, [r8]
	ldr	r0, .LCPI1_90
	str	r0, [r11, #4]
	ldr	r0, .LCPI1_95
	b	.LBB1_63
.LCPI1_90:
	.long	528734635               @ 0x1f83d9ab
.LCPI1_95:
	.long	4215389547              @ 0xfb41bd6b
.LBB1_63:                               @ %for.end73
	str	r0, [r11]
	ldr	r0, .LCPI1_100
	str	r0, [r10, #4]
	ldr	r0, .LCPI1_105
	ldr	r9, [sp, #48]           @ 4-byte Reload
	str	r0, [r10]
	beq	.LBB1_84
	b	.LBB1_64
.LCPI1_100:
	.long	1541459225              @ 0x5be0cd19
.LCPI1_105:
	.long	327033209               @ 0x137e2179
.LBB1_64:
	add	r4, sp, #296
	b	.LBB1_65
.LBB1_65:                               @ %for.body78
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	sha512_update
	add	r7, r7, #1
	cmp	r7, r5
	bne	.LBB1_65
	b	.LBB1_84
.LBB1_66:                               @ %if.then10
	ldrb	r0, [r4, #10]!
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB1_134
	b	.LBB1_67
.LBB1_67:                               @ %if.end16
	add	r1, sp, #80
	mov	r0, r4
	mov	r2, #10
	bl	strtoul
	b	.LBB1_68
.LBB1_68:                               @ %if.end16
	ldr	r4, [sp, #80]
	ldrb	r1, [r4]
	cmp	r1, #36
	bne	.LBB1_134
	b	.LBB1_69
.LBB1_69:                               @ %if.end22
	ldr	r2, .LCPI1_27
	ldr	r1, .LCPI1_28
	cmp	r0, r2
	movls	r2, r0
	b	.LBB1_70
.LCPI1_27:
	.long	9999999                 @ 0x98967f
.LCPI1_28:
	.long	.L.str3
.LBB1_70:                               @ %if.end22
	cmp	r0, #1000
	add	r0, sp, #84
	movlo	r2, #1000
	str	r2, [sp, #60]           @ 4-byte Spill
	bl	sprintf
	add	r9, r4, #1
	b	.LBB1_10
.LBB1_71:                               @ %for.end81.critedge
	str	r0, [sp, #32]           @ 4-byte Spill
	str	r1, [sp, #56]           @ 4-byte Spill
	add	r0, sp, #296
	add	r1, sp, #232
	b	.LBB1_72
.LBB1_72:                               @ %for.end81.critedge
	str	r2, [sp, #72]           @ 4-byte Spill
	mov	r6, r3
	bl	sha512_sum
	str	r8, [sp, #300]
	b	.LBB1_73
.LBB1_73:                               @ %for.end81.critedge
	str	r8, [sp, #296]
	ldr	r0, .LCPI1_31
	str	r0, [r7, #4]
	ldr	r0, .LCPI1_36
	b	.LBB1_74
.LCPI1_31:
	.long	1779033703              @ 0x6a09e667
.LCPI1_36:
	.long	4089235720              @ 0xf3bcc908
.LBB1_74:                               @ %for.end81.critedge
	str	r7, [sp, #64]           @ 4-byte Spill
	str	r0, [r7]
	ldr	r0, .LCPI1_41
	str	r0, [r11, #4]
	b	.LBB1_75
.LCPI1_41:
	.long	3144134277              @ 0xbb67ae85
.LBB1_75:                               @ %for.end81.critedge
	ldr	r0, .LCPI1_46
	str	r11, [sp, #68]          @ 4-byte Spill
	str	r0, [r11]
	ldr	r0, .LCPI1_51
	b	.LBB1_76
.LCPI1_46:
	.long	2227873595              @ 0x84caa73b
.LCPI1_51:
	.long	1013904242              @ 0x3c6ef372
.LBB1_76:                               @ %for.end81.critedge
	str	r0, [r10, #4]
	ldr	r0, .LCPI1_56
	str	r10, [sp, #76]          @ 4-byte Spill
	str	r0, [r10]
	b	.LBB1_77
.LCPI1_56:
	.long	4271175723              @ 0xfe94f82b
.LBB1_77:                               @ %for.end81.critedge
	ldr	r0, .LCPI1_61
	str	r0, [r4, #4]
	ldr	r0, .LCPI1_66
	str	r4, [sp, #40]           @ 4-byte Spill
	b	.LBB1_78
.LCPI1_61:
	.long	2773480762              @ 0xa54ff53a
.LCPI1_66:
	.long	1595750129              @ 0x5f1d36f1
.LBB1_78:                               @ %for.end81.critedge
	str	r0, [r4]
	ldr	r0, .LCPI1_71
	str	r0, [r6, #4]
	ldr	r0, .LCPI1_76
	b	.LBB1_79
.LCPI1_71:
	.long	1359893119              @ 0x510e527f
.LCPI1_76:
	.long	2917565137              @ 0xade682d1
.LBB1_79:                               @ %for.end81.critedge
	str	r6, [sp, #44]           @ 4-byte Spill
	str	r0, [r6]
	ldr	r0, .LCPI1_81
	ldr	r1, [sp, #72]           @ 4-byte Reload
	b	.LBB1_80
.LCPI1_81:
	.long	2600822924              @ 0x9b05688c
.LBB1_80:                               @ %for.end81.critedge
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_86
	mov	r3, r1
	mov	r8, r3
	b	.LBB1_81
.LCPI1_86:
	.long	725511199               @ 0x2b3e6c1f
.LBB1_81:                               @ %for.end81.critedge
	str	r0, [r1]
	ldr	r0, .LCPI1_91
	ldr	r1, [sp, #56]           @ 4-byte Reload
	str	r0, [r1, #4]
	b	.LBB1_82
.LCPI1_91:
	.long	528734635               @ 0x1f83d9ab
.LBB1_82:                               @ %for.end81.critedge
	ldr	r0, .LCPI1_96
	mov	r2, r1
	mov	r11, r2
	str	r0, [r1]
	b	.LBB1_83
.LCPI1_96:
	.long	4215389547              @ 0xfb41bd6b
.LBB1_83:                               @ %for.end81.critedge
	ldr	r0, .LCPI1_101
	ldr	r10, [sp, #32]          @ 4-byte Reload
	str	r0, [r10, #4]
	ldr	r0, .LCPI1_106
	str	r0, [r10]
	b	.LBB1_84
.LCPI1_101:
	.long	1541459225              @ 0x5be0cd19
.LCPI1_106:
	.long	327033209               @ 0x137e2179
.LBB1_84:                               @ %for.end81
	add	r6, sp, #296
	add	r1, sp, #168
	str	r11, [sp, #56]          @ 4-byte Spill
	str	r8, [sp, #72]           @ 4-byte Spill
	b	.LBB1_85
.LBB1_85:                               @ %for.end81
	mov	r0, r6
	bl	sha512_sum
	mov	r4, #0
	str	r4, [sp, #300]
	b	.LBB1_86
.LBB1_86:                               @ %for.end81
	str	r4, [sp, #296]
	ldr	r0, .LCPI1_32
	ldr	r1, [sp, #64]           @ 4-byte Reload
	str	r0, [r1, #4]
	b	.LBB1_87
.LCPI1_32:
	.long	1779033703              @ 0x6a09e667
.LBB1_87:                               @ %for.end81
	ldr	r0, .LCPI1_37
	str	r0, [r1]
	ldr	r0, .LCPI1_42
	ldr	r1, [sp, #68]           @ 4-byte Reload
	b	.LBB1_88
.LCPI1_37:
	.long	4089235720              @ 0xf3bcc908
.LCPI1_42:
	.long	3144134277              @ 0xbb67ae85
.LBB1_88:                               @ %for.end81
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_47
	str	r0, [r1]
	ldr	r0, .LCPI1_52
	b	.LBB1_89
.LCPI1_47:
	.long	2227873595              @ 0x84caa73b
.LCPI1_52:
	.long	1013904242              @ 0x3c6ef372
.LBB1_89:                               @ %for.end81
	ldr	r1, [sp, #76]           @ 4-byte Reload
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_57
	str	r0, [r1]
	b	.LBB1_90
.LCPI1_57:
	.long	4271175723              @ 0xfe94f82b
.LBB1_90:                               @ %for.end81
	ldr	r0, .LCPI1_62
	ldr	r1, [sp, #40]           @ 4-byte Reload
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_67
	b	.LBB1_91
.LCPI1_62:
	.long	2773480762              @ 0xa54ff53a
.LCPI1_67:
	.long	1595750129              @ 0x5f1d36f1
.LBB1_91:                               @ %for.end81
	str	r0, [r1]
	ldr	r0, .LCPI1_72
	ldr	r1, [sp, #44]           @ 4-byte Reload
	str	r0, [r1, #4]
	b	.LBB1_92
.LCPI1_72:
	.long	1359893119              @ 0x510e527f
.LBB1_92:                               @ %for.end81
	ldr	r0, .LCPI1_77
	str	r0, [r1]
	ldr	r0, .LCPI1_82
	str	r0, [r8, #4]
	b	.LBB1_93
.LCPI1_77:
	.long	2917565137              @ 0xade682d1
.LCPI1_82:
	.long	2600822924              @ 0x9b05688c
.LBB1_93:                               @ %for.end81
	ldr	r0, .LCPI1_87
	str	r0, [r8]
	ldr	r0, .LCPI1_92
	str	r0, [r11, #4]
	b	.LBB1_94
.LCPI1_87:
	.long	725511199               @ 0x2b3e6c1f
.LCPI1_92:
	.long	528734635               @ 0x1f83d9ab
.LBB1_94:                               @ %for.end81
	ldr	r0, .LCPI1_97
	str	r0, [r11]
	ldr	r0, .LCPI1_102
	str	r0, [r10, #4]
	ldr	r0, .LCPI1_107
	ldr	r7, [sp, #52]           @ 4-byte Reload
	str	r0, [r10]
	b	.LBB1_95
.LCPI1_97:
	.long	4215389547              @ 0xfb41bd6b
.LCPI1_102:
	.long	1541459225              @ 0x5be0cd19
.LCPI1_107:
	.long	327033209               @ 0x137e2179
.LBB1_95:                               @ %for.body88
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r9
	mov	r2, r7
	bl	sha512_update
	b	.LBB1_96
.LBB1_96:                               @ %for.body88
                                        @   in Loop: Header=BB1_95 Depth=1
	ldrb	r0, [sp, #232]
	add	r4, r4, #1
	add	r0, r0, #16
	cmp	r4, r0
	blo	.LBB1_95
	b	.LBB1_97
.LBB1_97:                               @ %for.end91
	add	r0, sp, #296
	add	r1, sp, #104
	bl	sha512_sum
	ldr	r0, [sp, #60]           @ 4-byte Reload
	b	.LBB1_98
.LBB1_98:                               @ %for.end91
	ldr	r7, [sp, #44]           @ 4-byte Reload
	ldr	r6, [sp, #40]           @ 4-byte Reload
	ldr	r11, [sp, #76]          @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB1_121
	b	.LBB1_99
.LBB1_99:
	mov	r4, #0
	b	.LBB1_100
.LBB1_100:                              @ %for.body96
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	ands	r9, r4, #1
	str	r0, [sp, #300]
	str	r0, [sp, #296]
	b	.LBB1_101
.LBB1_101:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r0, .LCPI1_33
	ldr	r1, [sp, #64]           @ 4-byte Reload
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_38
	b	.LBB1_102
.LCPI1_33:
	.long	1779033703              @ 0x6a09e667
.LCPI1_38:
	.long	4089235720              @ 0xf3bcc908
.LBB1_102:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	str	r0, [r1]
	ldr	r0, .LCPI1_43
	ldr	r1, [sp, #68]           @ 4-byte Reload
	str	r0, [r1, #4]
	b	.LBB1_103
.LCPI1_43:
	.long	3144134277              @ 0xbb67ae85
.LBB1_103:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r0, .LCPI1_48
	str	r0, [r1]
	ldr	r0, .LCPI1_53
	str	r0, [r11, #4]
	b	.LBB1_104
.LCPI1_48:
	.long	2227873595              @ 0x84caa73b
.LCPI1_53:
	.long	1013904242              @ 0x3c6ef372
.LBB1_104:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r0, .LCPI1_58
	str	r0, [r11]
	ldr	r0, .LCPI1_63
	str	r0, [r6, #4]
	b	.LBB1_105
.LCPI1_58:
	.long	4271175723              @ 0xfe94f82b
.LCPI1_63:
	.long	2773480762              @ 0xa54ff53a
.LBB1_105:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r0, .LCPI1_68
	str	r0, [r6]
	ldr	r0, .LCPI1_73
	str	r0, [r7, #4]
	b	.LBB1_106
.LCPI1_68:
	.long	1595750129              @ 0x5f1d36f1
.LCPI1_73:
	.long	1359893119              @ 0x510e527f
.LBB1_106:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r0, .LCPI1_78
	str	r0, [r7]
	ldr	r0, .LCPI1_83
	ldr	r1, [sp, #72]           @ 4-byte Reload
	b	.LBB1_107
.LCPI1_78:
	.long	2917565137              @ 0xade682d1
.LCPI1_83:
	.long	2600822924              @ 0x9b05688c
.LBB1_107:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_88
	str	r0, [r1]
	ldr	r0, .LCPI1_93
	b	.LBB1_108
.LCPI1_88:
	.long	725511199               @ 0x2b3e6c1f
.LCPI1_93:
	.long	528734635               @ 0x1f83d9ab
.LBB1_108:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r1, [sp, #56]           @ 4-byte Reload
	str	r0, [r1, #4]
	ldr	r0, .LCPI1_98
	str	r0, [r1]
	b	.LBB1_109
.LCPI1_98:
	.long	4215389547              @ 0xfb41bd6b
.LBB1_109:                              @ %for.body96
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r0, .LCPI1_103
	str	r0, [r10, #4]
	ldr	r0, .LCPI1_108
	str	r0, [r10]
	add	r0, sp, #296
	beq	.LBB1_111
	b	.LBB1_110
.LCPI1_103:
	.long	1541459225              @ 0x5be0cd19
.LCPI1_108:
	.long	327033209               @ 0x137e2179
.LBB1_110:                              @ %if.then98
                                        @   in Loop: Header=BB1_100 Depth=1
	mov	r1, r5
	add	r2, sp, #168
	bl	hashmd
	b	.LBB1_112
.LBB1_111:                              @ %if.else100
                                        @   in Loop: Header=BB1_100 Depth=1
	add	r1, sp, #232
	mov	r2, #64
	bl	sha512_update
	b	.LBB1_112
.LBB1_112:                              @ %if.end102
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r0, .LCPI1_109
	umull	r1, r2, r4, r0
	lsr	r0, r2, #1
	add	r0, r0, r0, lsl #1
	subs	r0, r4, r0
	beq	.LBB1_114
	b	.LBB1_113
.LCPI1_109:
	.long	2863311531              @ 0xaaaaaaab
.LBB1_113:                              @ %if.then105
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r2, [sp, #52]           @ 4-byte Reload
	add	r0, sp, #296
	add	r1, sp, #104
	bl	sha512_update
	b	.LBB1_114
.LBB1_114:                              @ %if.end107
                                        @   in Loop: Header=BB1_100 Depth=1
	ldr	r0, .LCPI1_110
	umull	r1, r2, r4, r0
	sub	r0, r4, r2
	add	r0, r2, r0, lsr #1
	b	.LBB1_115
.LCPI1_110:
	.long	613566757               @ 0x24924925
.LBB1_115:                              @ %if.end107
                                        @   in Loop: Header=BB1_100 Depth=1
	lsr	r1, r0, #2
	lsl	r1, r1, #3
	sub	r0, r1, r0, lsr #2
	subs	r0, r4, r0
	beq	.LBB1_117
	b	.LBB1_116
.LBB1_116:                              @ %if.then110
                                        @   in Loop: Header=BB1_100 Depth=1
	add	r0, sp, #296
	mov	r1, r5
	add	r2, sp, #168
	bl	hashmd
	b	.LBB1_117
.LBB1_117:                              @ %if.end112
                                        @   in Loop: Header=BB1_100 Depth=1
	cmp	r9, #0
	add	r9, sp, #296
	mov	r0, r9
	beq	.LBB1_119
	b	.LBB1_118
.LBB1_118:                              @ %if.then115
                                        @   in Loop: Header=BB1_100 Depth=1
	add	r8, sp, #232
	mov	r2, #64
	mov	r1, r8
	bl	sha512_update
	ldr	r11, [sp, #76]          @ 4-byte Reload
	b	.LBB1_120
.LBB1_119:                              @ %if.else117
                                        @   in Loop: Header=BB1_100 Depth=1
	mov	r1, r5
	add	r2, sp, #168
	bl	hashmd
	ldr	r11, [sp, #76]          @ 4-byte Reload
	add	r8, sp, #232
	b	.LBB1_120
.LBB1_120:                              @ %if.end119
                                        @   in Loop: Header=BB1_100 Depth=1
	mov	r0, r9
	mov	r1, r8
	bl	sha512_sum
	ldr	r0, [sp, #60]           @ 4-byte Reload
	add	r4, r4, #1
	cmp	r0, r4
	bne	.LBB1_100
	b	.LBB1_121
.LBB1_121:                              @ %for.end123
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldr	r8, [sp, #36]           @ 4-byte Reload
	ldr	r1, .LCPI1_111
	ldr	r3, [sp, #52]           @ 4-byte Reload
	b	.LBB1_122
.LCPI1_111:
	.long	.L.str4
.LBB1_122:                              @ %for.end123
	add	r2, sp, #84
	str	r0, [sp]
	mov	r0, r8
	bl	sprintf
	b	.LBB1_123
.LBB1_123:                              @ %for.end123
	ldr	r12, .LCPI1_112
	ldr	r1, .LCPI1_113
	add	r2, r8, r0
	mov	r3, #0
	add	r4, sp, #232
	b	.LBB1_124
.LCPI1_112:
	.long	sha512crypt.perm
.LCPI1_113:
	.long	b64
.LBB1_124:                              @ %for.body130
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_127 Depth 2
	add	r6, r3, r3, lsl #1
	mov	r7, r12
	ldrb	r6, [r7, r6]!
	ldrb	r5, [r7, #1]
	b	.LBB1_125
.LBB1_125:                              @ %for.body130
                                        @   in Loop: Header=BB1_124 Depth=1
	ldrb	r7, [r7, #2]
	ldrb	r6, [r4, r6]
	ldrb	r5, [r4, r5]
	ldrb	r7, [r4, r7]
	b	.LBB1_126
.LBB1_126:                              @ %for.body130
                                        @   in Loop: Header=BB1_124 Depth=1
	lsl	r5, r5, #8
	orr	r6, r5, r6, lsl #16
	mov	r5, #0
	orr	r6, r6, r7
	b	.LBB1_127
.LBB1_127:                              @ %while.body.i233
                                        @   Parent Loop BB1_124 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r7, r6, #63
	lsr	r6, r6, #6
	ldrb	r7, [r1, r7]
	strb	r7, [r2, -r5]
	b	.LBB1_128
.LBB1_128:                              @ %while.body.i233
                                        @   in Loop: Header=BB1_127 Depth=2
	sub	r7, r5, #1
	add	r5, r5, #4
	cmp	r5, #1
	mov	r5, r7
	bgt	.LBB1_127
	b	.LBB1_129
.LBB1_129:                              @ %to64.exit235
                                        @   in Loop: Header=BB1_124 Depth=1
	add	r3, r3, #1
	add	r2, r2, #4
	cmp	r3, #21
	bne	.LBB1_124
	b	.LBB1_130
.LBB1_130:                              @ %for.end150
	ldrb	r3, [sp, #295]
	add	r0, r8, r0
	mov	r7, #0
	add	r2, r0, #84
	b	.LBB1_131
.LBB1_131:                              @ %while.body.i
                                        @ =>This Inner Loop Header: Depth=1
	and	r6, r3, #63
	lsr	r3, r3, #6
	ldrb	r6, [r1, r6]
	strb	r6, [r2, -r7]
	b	.LBB1_132
.LBB1_132:                              @ %while.body.i
                                        @   in Loop: Header=BB1_131 Depth=1
	sub	r6, r7, #1
	add	r7, r7, #2
	cmp	r7, #1
	mov	r7, r6
	bgt	.LBB1_131
	b	.LBB1_133
.LBB1_133:                              @ %to64.exit
	mov	r1, #0
	mov	r7, r8
	strb	r1, [r0, #86]
	b	.LBB1_134
.LBB1_134:                              @ %cleanup
	mov	r0, r7
	add	sp, sp, #500
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	sha512crypt, .Ltmp1-sha512crypt
	.cantunwind
	.fnend

	.align	2
	.type	sha512_update,%function
sha512_update:                          @ @sha512_update
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
	ands	r1, r0, #127
	beq	.LBB2_9
	b	.LBB2_5
.LBB2_5:                                @ %if.then
	add	r0, r5, r1
	rsb	r7, r1, #128
	add	r0, r0, #72
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
	add	r1, r5, #72
	b	.LBB2_8
.LBB2_8:                                @ %if.end
	mov	r0, r5
	bl	processblock
	add	r6, r6, r7
	sub	r4, r4, r7
	b	.LBB2_9
.LBB2_9:                                @ %for.cond.preheader
	cmp	r4, #128
	blo	.LBB2_13
	b	.LBB2_10
.LBB2_10:                               @ %for.body.lr.ph
	sub	r8, r4, #128
	bic	r9, r8, #127
	add	r0, r9, r6
	add	r7, r0, #128
	b	.LBB2_11
.LBB2_11:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r6
	bl	processblock
	sub	r4, r4, #128
	add	r6, r6, #128
	cmp	r4, #127
	bhi	.LBB2_11
	b	.LBB2_12
.LBB2_12:                               @ %for.cond.for.end_crit_edge
	sub	r4, r8, r9
	b	.LBB2_14
.LBB2_13:
	mov	r7, r6
	b	.LBB2_14
.LBB2_14:                               @ %for.end
	add	r0, r5, #72
	mov	r1, r7
	b	.LBB2_15
.LBB2_15:                               @ %if.then5
	mov	r2, r4
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	memcpy
.Ltmp2:
	.size	sha512_update, .Ltmp2-sha512_update
	.cantunwind
	.fnend

	.align	2
	.type	sha512_sum,%function
sha512_sum:                             @ @sha512_sum
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
	ldr	r0, [r8], #72
	b	.LBB3_3
.LBB3_3:                                @ %entry
	and	r1, r0, #127
	mov	r0, #128
	add	r7, r1, #1
	strb	r0, [r8, r1]
	cmp	r7, #113
	blo	.LBB3_6
	b	.LBB3_4
.LBB3_4:                                @ %if.then.i
	add	r0, r5, r7
	eor	r2, r1, #127
	mov	r1, #0
	mov	r7, #0
	b	.LBB3_5
.LBB3_5:                                @ %if.then.i
	add	r0, r0, #72
	bl	memset
	mov	r0, r5
	mov	r1, r8
	bl	processblock
	b	.LBB3_6
.LBB3_6:                                @ %pad.exit
	add	r0, r5, r7
	rsb	r2, r7, #120
	mov	r1, #0
	mov	r7, #0
	b	.LBB3_7
.LBB3_7:                                @ %pad.exit
	add	r0, r0, #72
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
	strb	r6, [r5, #192]
	lsr	r6, r1, #13
	lsr	r1, r1, #5
	strb	r6, [r5, #193]
	b	.LBB3_10
.LBB3_10:                               @ %pad.exit
	strb	r1, [r5, #194]
	lsr	r1, r0, #21
	strb	r3, [r5, #195]
	strb	r1, [r5, #196]
	b	.LBB3_11
.LBB3_11:                               @ %pad.exit
	lsr	r1, r0, #13
	lsr	r0, r0, #5
	strb	r1, [r5, #197]
	strb	r0, [r5, #198]
	b	.LBB3_12
.LBB3_12:                               @ %pad.exit
	mov	r0, r5
	mov	r1, r8
	strb	r2, [r5, #199]
	bl	processblock
	add	r0, r5, #8
	b	.LBB3_13
.LBB3_13:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r0, r7
	mov	r3, r4
	ldrb	r2, [r1, #7]
	strb	r2, [r3, r7]!
	b	.LBB3_14
.LBB3_14:                               @ %for.body
                                        @   in Loop: Header=BB3_13 Depth=1
	ldrb	r2, [r1, #6]
	strb	r2, [r3, #1]
	ldrb	r2, [r1, #5]
	strb	r2, [r3, #2]
	b	.LBB3_15
.LBB3_15:                               @ %for.body
                                        @   in Loop: Header=BB3_13 Depth=1
	ldrb	r2, [r1, #4]
	strb	r2, [r3, #3]
	ldrb	r2, [r1, #3]
	strb	r2, [r3, #4]
	b	.LBB3_16
.LBB3_16:                               @ %for.body
                                        @   in Loop: Header=BB3_13 Depth=1
	ldrb	r2, [r1, #2]
	strb	r2, [r3, #5]
	ldrb	r1, [r1, #1]
	strb	r1, [r3, #6]
	b	.LBB3_17
.LBB3_17:                               @ %for.body
                                        @   in Loop: Header=BB3_13 Depth=1
	ldrb	r1, [r0, r7]
	add	r7, r7, #8
	cmp	r7, #64
	strb	r1, [r3, #7]
	bne	.LBB3_13
	b	.LBB3_18
.LBB3_18:                               @ %for.end
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp3:
	.size	sha512_sum, .Ltmp3-sha512_sum
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
	cmp	r7, #65
	blo	.LBB4_6
	b	.LBB4_3
.LBB4_3:                                @ %for.body.lr.ph
	sub	r0, r7, #65
	mov	r5, r7
	bic	r8, r0, #63
	b	.LBB4_4
.LBB4_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r4
	mov	r2, #64
	bl	sha512_update
	sub	r5, r5, #64
	cmp	r5, #64
	bhi	.LBB4_4
	b	.LBB4_5
.LBB4_5:                                @ %for.cond.for.end_crit_edge
	sub	r0, r7, #64
	sub	r7, r0, r8
	b	.LBB4_6
.LBB4_6:                                @ %for.end
	mov	r0, r6
	mov	r1, r4
	mov	r2, r7
	pop	{r4, r5, r6, r7, r8, lr}
	b	sha512_update
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
	.pad	#820
	sub	sp, sp, #820
	mov	r4, #0
	add	r9, sp, #176
	b	.LBB5_3
.LBB5_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r1
	ldrb	r12, [r2, r4]!
	ldrb	r3, [r2, #4]
	ldrb	r7, [r2, #5]
	b	.LBB5_4
.LBB5_4:                                @ %for.body
                                        @   in Loop: Header=BB5_3 Depth=1
	ldrb	r6, [r2, #1]
	ldrb	r5, [r2, #2]
	ldrb	lr, [r2, #3]
	lsl	r3, r3, #24
	b	.LBB5_5
.LBB5_5:                                @ %for.body
                                        @   in Loop: Header=BB5_3 Depth=1
	orr	r3, r3, r7, lsl #16
	ldrb	r7, [r2, #6]
	ldrb	r2, [r2, #7]
	orr	r3, r3, r7, lsl #8
	b	.LBB5_6
.LBB5_6:                                @ %for.body
                                        @   in Loop: Header=BB5_3 Depth=1
	orr	r2, r3, r2
	add	r3, r9, r4
	str	r2, [r9, r4]
	lsl	r2, r6, #16
	b	.LBB5_7
.LBB5_7:                                @ %for.body
                                        @   in Loop: Header=BB5_3 Depth=1
	add	r4, r4, #8
	orr	r2, r2, r12, lsl #24
	cmp	r4, #128
	orr	r2, r2, r5, lsl #8
	orr	r2, r2, lr
	str	r2, [r3, #4]
	bne	.LBB5_3
	b	.LBB5_8
.LBB5_8:                                @ %for.body51.lr.ph
	ldr	lr, [sp, #176]
	ldr	r2, [sp, #180]
	mov	r8, #0
	b	.LBB5_9
.LBB5_9:                                @ %for.body51
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r9, r8
	add	r8, r8, #8
	ldr	r6, [r1, #116]
	ldr	r7, [r1, #112]
	b	.LBB5_10
.LBB5_10:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	ldr	r3, [r1, #12]
	lsl	r4, r6, #3
	lsl	r5, r7, #13
	orr	r4, r4, r7, lsr #29
	b	.LBB5_11
.LBB5_11:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	orr	r5, r5, r6, lsr #19
	eor	r4, r4, r6, lsr #6
	eor	r12, r4, r5
	lsr	r4, r7, #6
	b	.LBB5_12
.LBB5_12:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	lsl	r5, r7, #3
	lsr	r7, r7, #19
	orr	r4, r4, r6, lsl #26
	orr	r5, r5, r6, lsr #29
	b	.LBB5_13
.LBB5_13:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	orr	r7, r7, r6, lsl #13
	ldr	r6, [r1, #76]
	eor	r5, r5, r4
	ldr	r4, [r1, #8]
	b	.LBB5_14
.LBB5_14:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	eor	r7, r5, r7
	ldr	r5, [r1, #72]
	adds	r5, lr, r5
	mov	lr, r4
	b	.LBB5_15
.LBB5_15:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	adc	r2, r2, r6
	adds	r7, r5, r7
	lsr	r6, r4, #7
	lsr	r5, r4, #8
	b	.LBB5_16
.LBB5_16:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	orr	r6, r6, r3, lsl #25
	orr	r5, r5, r3, lsl #24
	adc	r12, r2, r12
	eor	r6, r5, r6
	b	.LBB5_17
.LBB5_17:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	lsrs	r5, r3, #1
	rrx	r2, r4
	eor	r2, r6, r2
	lsl	r6, r4, #24
	b	.LBB5_18
.LBB5_18:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	orr	r6, r6, r3, lsr #8
	adds	r2, r7, r2
	orr	r7, r5, r4, lsl #31
	eor	r6, r6, r3, lsr #7
	b	.LBB5_19
.LBB5_19:                               @ %for.body51
                                        @   in Loop: Header=BB5_9 Depth=1
	str	r2, [r1, #128]
	mov	r2, r3
	eor	r7, r6, r7
	adc	r7, r12, r7
	cmp	r8, #512
	str	r7, [r1, #132]
	bne	.LBB5_9
	b	.LBB5_20
.LBB5_20:                               @ %for.end80
	ldr	r9, [r0, #8]!
	mov	r10, #0
	ldr	r1, [r0, #60]
	str	r9, [sp, #44]           @ 4-byte Spill
	b	.LBB5_21
.LBB5_21:                               @ %for.end80
	str	r0, [sp, #88]           @ 4-byte Spill
	str	r1, [sp, #104]          @ 4-byte Spill
	mov	r1, r0
	ldr	r5, [r1, #56]!
	b	.LBB5_22
.LBB5_22:                               @ %for.end80
	str	r1, [sp, #84]           @ 4-byte Spill
	ldr	r1, [r0, #52]
	str	r5, [sp, #80]           @ 4-byte Spill
	str	r1, [sp, #100]          @ 4-byte Spill
	b	.LBB5_23
.LBB5_23:                               @ %for.end80
	mov	r1, r0
	ldr	r7, [r1, #48]!
	ldr	r12, [r0, #44]
	str	r1, [sp, #76]           @ 4-byte Spill
	b	.LBB5_24
.LBB5_24:                               @ %for.end80
	mov	r1, r0
	str	r7, [sp, #72]           @ 4-byte Spill
	str	r12, [sp, #64]          @ 4-byte Spill
	ldr	lr, [r1, #40]!
	b	.LBB5_25
.LBB5_25:                               @ %for.end80
	ldr	r8, [r0, #36]
	str	r1, [sp, #68]           @ 4-byte Spill
	mov	r1, r0
	str	lr, [sp, #60]           @ 4-byte Spill
	b	.LBB5_26
.LBB5_26:                               @ %for.end80
	str	r8, [sp, #52]           @ 4-byte Spill
	ldr	r6, [r1, #32]!
	ldr	r11, [r0, #20]
	ldr	r4, [r0, #28]
	b	.LBB5_27
.LBB5_27:                               @ %for.end80
	str	r1, [sp, #56]           @ 4-byte Spill
	ldr	r1, [r0, #4]
	str	r6, [sp, #48]           @ 4-byte Spill
	str	r11, [sp, #32]          @ 4-byte Spill
	b	.LBB5_28
.LBB5_28:                               @ %for.end80
	str	r4, [sp, #36]           @ 4-byte Spill
	str	r1, [sp, #92]           @ 4-byte Spill
	ldr	r1, [r0, #12]
	str	r1, [sp, #96]           @ 4-byte Spill
	b	.LBB5_29
.LBB5_29:                               @ %for.end80
	mov	r1, r0
	ldr	r3, [r1, #24]!
	str	r1, [sp, #40]           @ 4-byte Spill
	mov	r1, r0
	b	.LBB5_30
.LBB5_30:                               @ %for.end80
	str	r3, [sp, #28]           @ 4-byte Spill
	ldr	r2, [r1, #16]!
	str	r2, [sp, #20]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	b	.LBB5_31
.LBB5_31:                               @ %for.end80
	ldr	r1, [r0, #8]!
	str	r7, [sp, #128]          @ 4-byte Spill
	ldr	r7, [sp, #96]           @ 4-byte Reload
	str	r8, [sp, #168]          @ 4-byte Spill
	b	.LBB5_32
.LBB5_32:                               @ %for.end80
	mov	r8, r2
	mov	r2, r11
	str	r5, [sp, #136]          @ 4-byte Spill
	str	lr, [sp, #120]          @ 4-byte Spill
	b	.LBB5_33
.LBB5_33:                               @ %for.end80
	str	r6, [sp, #172]          @ 4-byte Spill
	str	r3, [sp, #144]          @ 4-byte Spill
	str	r4, [sp, #140]          @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB5_34
.LBB5_34:                               @ %for.end80
	ldr	r0, [sp, #104]          @ 4-byte Reload
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r0, [sp, #132]          @ 4-byte Spill
	ldr	r0, [sp, #100]          @ 4-byte Reload
	str	r0, [sp, #124]          @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #92]           @ 4-byte Reload
	b	.LBB5_35
.LBB5_35:                               @ %for.body100
                                        @ =>This Inner Loop Header: Depth=1
	mov	r5, r0
	ldr	r0, [sp, #120]          @ 4-byte Reload
	mov	r11, r1
	mov	r4, r9
	b	.LBB5_36
.LBB5_36:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	str	r2, [sp, #148]          @ 4-byte Spill
	str	r7, [sp, #116]          @ 4-byte Spill
	mov	lr, r8
	ldr	r6, [sp, #172]          @ 4-byte Reload
	b	.LBB5_37
.LBB5_37:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	ldr	r3, [sp, #168]          @ 4-byte Reload
	str	r12, [sp, #160]         @ 4-byte Spill
	ldr	r12, [sp, #124]         @ 4-byte Reload
	str	r8, [sp, #152]          @ 4-byte Spill
	b	.LBB5_38
.LBB5_38:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	ldr	r8, [sp, #128]          @ 4-byte Reload
	orr	r1, r7, r11
	str	r5, [sp, #112]          @ 4-byte Spill
	and	r1, r2, r1
	b	.LBB5_39
.LBB5_39:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	lsl	r2, r11, #30
	orr	r2, r2, r4, lsr #2
	str	r0, [sp, #156]          @ 4-byte Spill
	and	r0, r7, r11
	b	.LBB5_40
.LBB5_40:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	orr	r7, r5, r4
	str	r12, [sp, #164]         @ 4-byte Spill
	str	r8, [sp, #108]          @ 4-byte Spill
	orr	r0, r1, r0
	b	.LBB5_41
.LBB5_41:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	lsl	r1, r4, #4
	and	r7, lr, r7
	ldr	lr, [sp, #160]          @ 4-byte Reload
	orr	r1, r1, r11, lsr #28
	b	.LBB5_42
.LBB5_42:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	eor	r1, r1, r2
	lsl	r2, r11, #25
	orr	r2, r2, r4, lsr #7
	eor	r2, r1, r2
	b	.LBB5_43
.LBB5_43:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	and	r1, r5, r4
	lsr	r5, r4, #28
	orr	r1, r7, r1
	lsl	r7, r4, #30
	b	.LBB5_44
.LBB5_44:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	orr	r5, r5, r11, lsl #4
	orr	r7, r7, r11, lsr #2
	eor	r7, r5, r7
	lsl	r5, r4, #25
	b	.LBB5_45
.LBB5_45:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	orr	r5, r5, r11, lsr #7
	eor	r7, r7, r5
	lsr	r5, r6, #14
	adds	r9, r7, r1
	b	.LBB5_46
.LBB5_46:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	lsl	r7, r6, #18
	orr	r5, r5, r3, lsl #18
	ldr	r1, [sp, #136]          @ 4-byte Reload
	adc	r2, r2, r0
	b	.LBB5_47
.LBB5_47:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	lsl	r0, r6, #14
	orr	r7, r7, r3, lsr #14
	orr	r0, r0, r3, lsr #18
	eor	r0, r7, r0
	b	.LBB5_48
.LBB5_48:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	lsl	r7, r3, #23
	orr	r7, r7, r6, lsr #9
	eor	r0, r0, r7
	lsr	r7, r6, #18
	b	.LBB5_49
.LBB5_49:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	orr	r7, r7, r3, lsl #14
	eor	r7, r5, r7
	lsl	r5, r6, #23
	orr	r5, r5, r3, lsr #9
	b	.LBB5_50
.LBB5_50:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	eor	r7, r7, r5
	eor	r5, r12, lr
	and	r5, r5, r3
	adds	r7, r7, r1
	b	.LBB5_51
.LBB5_51:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	ldr	r1, [sp, #132]          @ 4-byte Reload
	eor	r5, r5, r12
	ldr	r12, [sp, #156]         @ 4-byte Reload
	adc	r0, r0, r1
	b	.LBB5_52
.LBB5_52:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	eor	r1, r8, r12
	and	r1, r1, r6
	eor	r1, r1, r8
	adds	r1, r7, r1
	b	.LBB5_53
.LBB5_53:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	ldr	r7, .LCPI5_0
	adc	r0, r0, r5
	ldr	r5, [r7, r10]!
	str	lr, [sp, #124]          @ 4-byte Spill
	b	.LBB5_54
.LCPI5_0:
	.long	K
.LBB5_54:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	ldr	lr, [sp, #112]          @ 4-byte Reload
	str	r8, [sp, #136]          @ 4-byte Spill
	str	r12, [sp, #128]         @ 4-byte Spill
	mov	r12, r3
	b	.LBB5_55
.LBB5_55:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	str	r6, [sp, #120]          @ 4-byte Spill
	ldr	r7, [r7, #4]
	adds	r1, r1, r5
	add	r5, sp, #176
	b	.LBB5_56
.LBB5_56:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	mov	r8, lr
	adc	r0, r0, r7
	add	r7, r5, r10
	ldr	r5, [r5, r10]
	b	.LBB5_57
.LBB5_57:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	add	r10, r10, #8
	ldr	r7, [r7, #4]
	adds	r5, r1, r5
	adc	r0, r0, r7
	b	.LBB5_58
.LBB5_58:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	adds	r9, r9, r5
	mov	r7, r11
	adc	r1, r2, r0
	ldr	r2, [sp, #144]          @ 4-byte Reload
	b	.LBB5_59
.LBB5_59:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	adds	r2, r5, r2
	ldr	r5, [sp, #116]          @ 4-byte Reload
	str	r2, [sp, #172]          @ 4-byte Spill
	ldr	r2, [sp, #140]          @ 4-byte Reload
	b	.LBB5_60
.LBB5_60:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	adc	r0, r0, r2
	mov	r2, r5
	cmp	r10, #640
	str	r0, [sp, #168]          @ 4-byte Spill
	b	.LBB5_61
.LBB5_61:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	ldr	r0, [sp, #164]          @ 4-byte Reload
	str	r0, [sp, #132]          @ 4-byte Spill
	ldr	r0, [sp, #152]          @ 4-byte Reload
	str	r0, [sp, #144]          @ 4-byte Spill
	b	.LBB5_62
.LBB5_62:                               @ %for.body100
                                        @   in Loop: Header=BB5_35 Depth=1
	ldr	r0, [sp, #148]          @ 4-byte Reload
	str	r0, [sp, #140]          @ 4-byte Spill
	mov	r0, r4
	bne	.LBB5_35
	b	.LBB5_63
.LBB5_63:                               @ %for.end128
	ldr	r0, [sp, #44]           @ 4-byte Reload
	ldr	r2, [sp, #92]           @ 4-byte Reload
	adds	r0, r0, r9
	adc	r1, r2, r1
	b	.LBB5_64
.LBB5_64:                               @ %for.end128
	ldr	r2, [sp, #88]           @ 4-byte Reload
	stm	r2, {r0, r1}
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #96]           @ 4-byte Reload
	b	.LBB5_65
.LBB5_65:                               @ %for.end128
	ldr	r2, [sp, #16]           @ 4-byte Reload
	adds	r0, r0, r4
	adc	r1, r1, r11
	stm	r2, {r0, r1}
	b	.LBB5_66
.LBB5_66:                               @ %for.end128
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	ldr	r2, [sp, #24]           @ 4-byte Reload
	adds	r0, r0, lr
	b	.LBB5_67
.LBB5_67:                               @ %for.end128
	adc	r1, r1, r5
	stm	r2, {r0, r1}
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #152]          @ 4-byte Reload
	b	.LBB5_68
.LBB5_68:                               @ %for.end128
	ldr	r2, [sp, #148]          @ 4-byte Reload
	adds	r0, r0, r1
	ldr	r1, [sp, #36]           @ 4-byte Reload
	adc	r1, r1, r2
	b	.LBB5_69
.LBB5_69:                               @ %for.end128
	ldr	r2, [sp, #40]           @ 4-byte Reload
	stm	r2, {r0, r1}
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldr	r1, [sp, #172]          @ 4-byte Reload
	b	.LBB5_70
.LBB5_70:                               @ %for.end128
	ldr	r2, [sp, #168]          @ 4-byte Reload
	adds	r0, r0, r1
	ldr	r1, [sp, #52]           @ 4-byte Reload
	adc	r1, r1, r2
	b	.LBB5_71
.LBB5_71:                               @ %for.end128
	ldr	r2, [sp, #56]           @ 4-byte Reload
	stm	r2, {r0, r1}
	ldr	r0, [sp, #60]           @ 4-byte Reload
	ldr	r1, [sp, #64]           @ 4-byte Reload
	b	.LBB5_72
.LBB5_72:                               @ %for.end128
	ldr	r2, [sp, #68]           @ 4-byte Reload
	adds	r0, r0, r6
	adc	r1, r1, r3
	stm	r2, {r0, r1}
	b	.LBB5_73
.LBB5_73:                               @ %for.end128
	ldr	r0, [sp, #72]           @ 4-byte Reload
	ldr	r1, [sp, #156]          @ 4-byte Reload
	ldr	r2, [sp, #160]          @ 4-byte Reload
	adds	r0, r0, r1
	b	.LBB5_74
.LBB5_74:                               @ %for.end128
	ldr	r1, [sp, #100]          @ 4-byte Reload
	adc	r1, r1, r2
	ldr	r2, [sp, #76]           @ 4-byte Reload
	stm	r2, {r0, r1}
	b	.LBB5_75
.LBB5_75:                               @ %for.end128
	ldr	r0, [sp, #80]           @ 4-byte Reload
	ldr	r1, [sp, #108]          @ 4-byte Reload
	ldr	r2, [sp, #164]          @ 4-byte Reload
	adds	r0, r0, r1
	b	.LBB5_76
.LBB5_76:                               @ %for.end128
	ldr	r1, [sp, #104]          @ 4-byte Reload
	adc	r1, r1, r2
	ldr	r2, [sp, #84]           @ 4-byte Reload
	stm	r2, {r0, r1}
	add	sp, sp, #820
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	processblock, .Ltmp5-processblock
	.cantunwind
	.fnend

	.type	__crypt_sha512.testkey,%object @ @__crypt_sha512.testkey
	.section	.rodata,"a",%progbits
__crypt_sha512.testkey:
	.asciz	"Xy01@#\001\002\200\177\377\r\n\201\t !"
	.size	__crypt_sha512.testkey, 18

	.type	__crypt_sha512.testsetting,%object @ @__crypt_sha512.testsetting
__crypt_sha512.testsetting:
	.asciz	"$6$rounds=1234$abc0123456789$"
	.size	__crypt_sha512.testsetting, 30

	.type	__crypt_sha512.testhash,%object @ @__crypt_sha512.testhash
__crypt_sha512.testhash:
	.asciz	"$6$rounds=1234$abc0123456789$BCpt8zLrc/RcyuXmCDOE1ALqMXB2MH6n1g891HhFj8.w7LxGv.FTkqq6Vxc/km3Y0jE0j24jY5PIv/oOu6reg1"
	.size	__crypt_sha512.testhash, 116

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"*"
	.size	.L.str, 2

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"$6$"
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
	.asciz	"$6$%s%.*s$"
	.size	.L.str4, 11

	.type	sha512crypt.perm,%object @ @sha512crypt.perm
	.section	.rodata,"a",%progbits
sha512crypt.perm:
	.ascii	"\000\025*"
	.ascii	"\026+\001"
	.ascii	",\002\027"
	.ascii	"\003\030-"
	.ascii	"\031.\004"
	.ascii	"/\005\032"
	.ascii	"\006\0330"
	.ascii	"\0341\007"
	.ascii	"2\b\035"
	.ascii	"\t\0363"
	.ascii	"\0374\n"
	.ascii	"5\013 "
	.ascii	"\f!6"
	.ascii	"\"7\r"
	.ascii	"8\016#"
	.ascii	"\017$9"
	.ascii	"%:\020"
	.ascii	";\021&"
	.ascii	"\022'<"
	.ascii	"(=\023"
	.ascii	">\024)"
	.size	sha512crypt.perm, 63

	.type	K,%object               @ @K
	.align	3
K:
	.long	3609767458              @ 0x428a2f98d728ae22
	.long	1116352408
	.long	602891725               @ 0x7137449123ef65cd
	.long	1899447441
	.long	3964484399              @ 0xb5c0fbcfec4d3b2f
	.long	3049323471
	.long	2173295548              @ 0xe9b5dba58189dbbc
	.long	3921009573
	.long	4081628472              @ 0x3956c25bf348b538
	.long	961987163
	.long	3053834265              @ 0x59f111f1b605d019
	.long	1508970993
	.long	2937671579              @ 0x923f82a4af194f9b
	.long	2453635748
	.long	3664609560              @ 0xab1c5ed5da6d8118
	.long	2870763221
	.long	2734883394              @ 0xd807aa98a3030242
	.long	3624381080
	.long	1164996542              @ 0x12835b0145706fbe
	.long	310598401
	.long	1323610764              @ 0x243185be4ee4b28c
	.long	607225278
	.long	3590304994              @ 0x550c7dc3d5ffb4e2
	.long	1426881987
	.long	4068182383              @ 0x72be5d74f27b896f
	.long	1925078388
	.long	991336113               @ 0x80deb1fe3b1696b1
	.long	2162078206
	.long	633803317               @ 0x9bdc06a725c71235
	.long	2614888103
	.long	3479774868              @ 0xc19bf174cf692694
	.long	3248222580
	.long	2666613458              @ 0xe49b69c19ef14ad2
	.long	3835390401
	.long	944711139               @ 0xefbe4786384f25e3
	.long	4022224774
	.long	2341262773              @ 0xfc19dc68b8cd5b5
	.long	264347078
	.long	2007800933              @ 0x240ca1cc77ac9c65
	.long	604807628
	.long	1495990901              @ 0x2de92c6f592b0275
	.long	770255983
	.long	1856431235              @ 0x4a7484aa6ea6e483
	.long	1249150122
	.long	3175218132              @ 0x5cb0a9dcbd41fbd4
	.long	1555081692
	.long	2198950837              @ 0x76f988da831153b5
	.long	1996064986
	.long	3999719339              @ 0x983e5152ee66dfab
	.long	2554220882
	.long	766784016               @ 0xa831c66d2db43210
	.long	2821834349
	.long	2566594879              @ 0xb00327c898fb213f
	.long	2952996808
	.long	3203337956              @ 0xbf597fc7beef0ee4
	.long	3210313671
	.long	1034457026              @ 0xc6e00bf33da88fc2
	.long	3336571891
	.long	2466948901              @ 0xd5a79147930aa725
	.long	3584528711
	.long	3758326383              @ 0x6ca6351e003826f
	.long	113926993
	.long	168717936               @ 0x142929670a0e6e70
	.long	338241895
	.long	1188179964              @ 0x27b70a8546d22ffc
	.long	666307205
	.long	1546045734              @ 0x2e1b21385c26c926
	.long	773529912
	.long	1522805485              @ 0x4d2c6dfc5ac42aed
	.long	1294757372
	.long	2643833823              @ 0x53380d139d95b3df
	.long	1396182291
	.long	2343527390              @ 0x650a73548baf63de
	.long	1695183700
	.long	1014477480              @ 0x766a0abb3c77b2a8
	.long	1986661051
	.long	1206759142              @ 0x81c2c92e47edaee6
	.long	2177026350
	.long	344077627               @ 0x92722c851482353b
	.long	2456956037
	.long	1290863460              @ 0xa2bfe8a14cf10364
	.long	2730485921
	.long	3158454273              @ 0xa81a664bbc423001
	.long	2820302411
	.long	3505952657              @ 0xc24b8b70d0f89791
	.long	3259730800
	.long	106217008               @ 0xc76c51a30654be30
	.long	3345764771
	.long	3606008344              @ 0xd192e819d6ef5218
	.long	3516065817
	.long	1432725776              @ 0xd69906245565a910
	.long	3600352804
	.long	1467031594              @ 0xf40e35855771202a
	.long	4094571909
	.long	851169720               @ 0x106aa07032bbd1b8
	.long	275423344
	.long	3100823752              @ 0x19a4c116b8d2d0c8
	.long	430227734
	.long	1363258195              @ 0x1e376c085141ab53
	.long	506948616
	.long	3750685593              @ 0x2748774cdf8eeb99
	.long	659060556
	.long	3785050280              @ 0x34b0bcb5e19b48a8
	.long	883997877
	.long	3318307427              @ 0x391c0cb3c5c95a63
	.long	958139571
	.long	3812723403              @ 0x4ed8aa4ae3418acb
	.long	1322822218
	.long	2003034995              @ 0x5b9cca4f7763e373
	.long	1537002063
	.long	3602036899              @ 0x682e6ff3d6b2b8a3
	.long	1747873779
	.long	1575990012              @ 0x748f82ee5defb2fc
	.long	1955562222
	.long	1125592928              @ 0x78a5636f43172f60
	.long	2024104815
	.long	2716904306              @ 0x84c87814a1f0ab72
	.long	2227730452
	.long	442776044               @ 0x8cc702081a6439ec
	.long	2361852424
	.long	593698344               @ 0x90befffa23631e28
	.long	2428436474
	.long	3733110249              @ 0xa4506cebde82bde9
	.long	2756734187
	.long	2999351573              @ 0xbef9a3f7b2c67915
	.long	3204031479
	.long	3815920427              @ 0xc67178f2e372532b
	.long	3329325298
	.long	3928383900              @ 0xca273eceea26619c
	.long	3391569614
	.long	566280711               @ 0xd186b8c721c0c207
	.long	3515267271
	.long	3454069534              @ 0xeada7dd6cde0eb1e
	.long	3940187606
	.long	4000239992              @ 0xf57d4f7fee6ed178
	.long	4118630271
	.long	1914138554              @ 0x6f067aa72176fba
	.long	116418474
	.long	2731055270              @ 0xa637dc5a2c898a6
	.long	174292421
	.long	3203993006              @ 0x113f9804bef90dae
	.long	289380356
	.long	320620315               @ 0x1b710b35131c471b
	.long	460393269
	.long	587496836               @ 0x28db77f523047d84
	.long	685471733
	.long	1086792851              @ 0x32caab7b40c72493
	.long	852142971
	.long	365543100               @ 0x3c9ebe0a15c9bebc
	.long	1017036298
	.long	2618297676              @ 0x431d67c49c100d4c
	.long	1126000580
	.long	3409855158              @ 0x4cc5d4becb3e42b6
	.long	1288033470
	.long	4234509866              @ 0x597f299cfc657e2a
	.long	1501505948
	.long	987167468               @ 0x5fcb6fab3ad6faec
	.long	1607167915
	.long	1246189591              @ 0x6c44198c4a475817
	.long	1816402316
	.size	K, 640

	.type	b64,%object             @ @b64
	.section	.rodata.str1.1,"aMS",%progbits,1
b64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	b64, 65


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
