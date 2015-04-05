.section lgamma_r_text
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
	.file	"src/math/lgamma_r.bc"
	.globl	__lgamma_r
	.align	2
	.type	__lgamma_r,%function
.section bb0_0
__lgamma_r:                             @ @__lgamma_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r11, r0
	mov	r5, r2
	mov	r0, #1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r10, r1
	str	r0, [r5]
	mov	r0, #267386880
	bic	r6, r10, #-2147483648
	orr	r0, r0, #1879048192
	cmp	r6, r0
	blo	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	mov	r0, r11
	mov	r1, r10
	mov	r2, r11
	mov	r3, r10
	bl	__aeabi_dmul
	b	.LBB0_238
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r0, .LCPI0_132
	cmp	r6, r0
	bhi	.LBB0_9
	b	.LBB0_7
.LCPI0_132:
	.long	999292927               @ 0x3b8fffff
.section bb0_7
.LBB0_7:                                @ %if.then8
	cmp	r10, #0
	mvnlt	r0, #0
	eorlt	r10, r10, #-2147483648
	strlt	r0, [r5]
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then8
	mov	r0, r11
	mov	r1, r10
	bl	log
	eor	r1, r1, #-2147483648
	b	.LBB0_238
.section bb0_9
.LBB0_9:                                @ %if.end12
	cmp	r10, #0
	blt	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:
                                        @ implicit-def: R9
                                        @ implicit-def: R4
	mov	r8, r10
	b	.LBB0_41
.section bb0_11
.LBB0_11:                               @ %if.then14
	mov	r3, #266338304
	mov	r0, r11
	mov	r1, r10
	mov	r2, #0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then14
	orr	r3, r3, #-1342177280
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r7, r1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then14
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R7<kill>
	bl	floor
	mov	r2, r0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then14
	mov	r3, r1
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_dsub
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then14
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r3, #1048576
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then14
	mov	r7, r0
	mov	r4, r1
	mov	r2, #0
	orr	r3, r3, #1073741824
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then14
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	bl	__aeabi_d2iz
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then14
	add	r0, r0, #1
	add	r9, r0, r0, lsr #31
	asr	r8, r9, #1
	mov	r0, r8
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then14
	bl	__aeabi_i2f
	mov	r1, #-1090519040
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then14
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then14
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_133
	ldr	r3, .LCPI0_135
	bl	__aeabi_dmul
	mov	r2, #1
	cmp	r2, r9, asr #1
	beq	.LBB0_24
	b	.LBB0_22
.LCPI0_133:
	.long	1413754136              @ 0x54442d18
.LCPI0_135:
	.long	1074340347              @ 0x400921fb
.section bb0_22
.LBB0_22:                               @ %if.then14
	mov	r2, #0
	cmp	r8, #2
	bne	.LBB0_25
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %sw.bb12.i
	str	r2, [sp]
	eor	r1, r1, #-2147483648
	b	.LBB0_28
.section bb0_24
.LBB0_24:                               @ %sw.bb10.i
	mov	r2, #0
	mov	r3, #0
	bl	__cos
	b	.LBB0_29
.section bb0_25
.LBB0_25:                               @ %if.then14
	cmp	r8, #3
	bne	.LBB0_27
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %sw.bb15.i
	mov	r3, #0
	bl	__cos
	mov	r7, r0
	eor	r4, r1, #-2147483648
	b	.LBB0_30
.section bb0_27
.LBB0_27:                               @ %sw.bb.i
	str	r2, [sp]
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %sin_pi.exit
	mov	r2, #0
	mov	r3, #0
	bl	__sin
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %sin_pi.exit
	mov	r7, r0
	mov	r4, r1
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %sin_pi.exit
	mov	r0, r7
	mov	r1, r4
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_33
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.then19
	mov	r0, r11
	mov	r1, r10
	mov	r2, r11
	mov	r3, r10
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.then19
	bl	__aeabi_dsub
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	b	.LBB0_238
.section bb0_33
.LBB0_33:                               @ %if.end21
	mov	r0, r7
	mov	r1, r4
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end21
	eor	r8, r10, #-2147483648
	bl	__aeabi_dcmple
	mov	r9, r0
	mov	r0, r7
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end21
	mov	r1, r4
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpun
	orrs	r0, r0, r9
	bne	.LBB0_37
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.then24
	mvn	r0, #0
	str	r0, [r5]
	b	.LBB0_38
.section bb0_37
.LBB0_37:                               @ %if.else
	eor	r4, r4, #-2147483648
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end26
	mov	r0, r7
	mov	r1, r4
	mov	r2, r11
	mov	r3, r8
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end26
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .LCPI0_134
	b	.LBB0_40
.LCPI0_134:
	.long	1413754136              @ 0x54442d18
.section bb0_40
.LBB0_40:                               @ %if.end26
	ldr	r1, .LCPI0_136
	bl	__aeabi_ddiv
	bl	log
	mov	r9, r0
	mov	r4, r1
	b	.LBB0_41
.LCPI0_136:
	.long	1074340347              @ 0x400921fb
.section bb0_41
.LBB0_41:                               @ %if.end30
	ldr	r0, .LCPI0_137
	cmp	r10, r0
	bgt	.LBB0_44
	b	.LBB0_42
.LCPI0_137:
	.long	1072693247              @ 0x3fefffff
.section bb0_42
.LBB0_42:                               @ %if.end30
	mov	r0, #267386880
	orr	r0, r0, #-1342177280
	cmp	r10, r0
	beq	.LBB0_45
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.end30
	cmp	r10, #-1073741824
	beq	.LBB0_45
	b	.LBB0_46
.section bb0_44
.LBB0_44:                               @ %if.end30
	mov	r0, #267386880
	orr	r0, r0, #805306368
	cmp	r10, r0
	cmpne	r10, #1073741824
	bne	.LBB0_46
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %land.lhs.true
	mov	r7, #0
	mov	r5, #0
	cmp	r11, #0
	beq	.LBB0_236
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.else40
	mov	r0, #0
	cmp	r0, r6, lsr #30
	bne	.LBB0_51
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.then43
	ldr	r0, .LCPI0_183
	cmp	r6, r0
	bhi	.LBB0_99
	b	.LBB0_48
.LCPI0_183:
	.long	1072483532              @ 0x3feccccc
.section bb0_48
.LBB0_48:                               @ %if.then46
	mov	r0, r11
	mov	r1, r8
	bl	log
	mov	r2, r0
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.then46
	ldr	r0, .LCPI0_188
	eor	r1, r1, #-2147483648
	cmp	r6, r0
	bls	.LBB0_157
	b	.LBB0_50
.LCPI0_188:
	.long	1072130371              @ 0x3fe76943
.section bb0_50
.LBB0_50:
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, #267386880
	mov	r0, #0
	str	r4, [sp, #24]           @ 4-byte Spill
	str	r9, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	orr	r1, r1, #805306368
	b	.LBB0_102
.section bb0_51
.LBB0_51:                               @ %if.else163
	str	r4, [sp, #24]           @ 4-byte Spill
	str	r9, [sp, #20]           @ 4-byte Spill
	ldr	r0, .LCPI0_138
	cmp	r6, r0
	bhi	.LBB0_133
	b	.LBB0_52
.LCPI0_138:
	.long	1075838975              @ 0x401fffff
.section bb0_52
.LBB0_52:                               @ %if.then166
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_d2iz
	mov	r9, r0
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %if.then166
                                        @ kill: R0<def> R9<kill>
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %if.then166
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_154
	b	.LBB0_55
.LCPI0_154:
	.long	3709331781              @ 0xdd17e945
.section bb0_55
.LBB0_55:                               @ %if.then166
	ldr	r3, .LCPI0_155
	mov	r8, r0
	mov	r6, r1
                                        @ kill: R0<def> R8<kill>
	b	.LBB0_56
.LCPI0_155:
	.long	1057013740              @ 0x3f00bfec
.section bb0_56
.LBB0_56:                               @ %if.then166
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_156
	ldr	r3, .LCPI0_157
	b	.LBB0_57
.LCPI0_156:
	.long	1936257593              @ 0x7368f239
.LCPI0_157:
	.long	1063134902              @ 0x3f5e26b6
.section bb0_57
.LBB0_57:                               @ %if.then166
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %if.then166
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_158
	ldr	r3, .LCPI0_159
	b	.LBB0_59
.LCPI0_158:
	.long	2123602273              @ 0x7e939961
.LCPI0_159:
	.long	1067141148              @ 0x3f9b481c
.section bb0_59
.LBB0_59:                               @ %if.then166
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.then166
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_160
	ldr	r3, .LCPI0_161
	b	.LBB0_61
.LCPI0_160:
	.long	3202740983              @ 0xbee5f2f7
.LCPI0_161:
	.long	1069726620              @ 0x3fc2bb9c
.section bb0_61
.LBB0_61:                               @ %if.then166
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.then166
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_162
	ldr	r3, .LCPI0_163
	b	.LBB0_63
.LCPI0_162:
	.long	1326686041              @ 0x4f139f59
.LCPI0_163:
	.long	1070913935              @ 0x3fd4d98f
.section bb0_63
.LBB0_63:                               @ %if.then166
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.then166
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_164
	ldr	r3, .LCPI0_165
	b	.LBB0_65
.LCPI0_164:
	.long	920782968               @ 0x36e20878
.LCPI0_165:
	.long	1070302347              @ 0x3fcb848b
.section bb0_65
.LBB0_65:                               @ %if.then166
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.then166
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_166
	ldr	r3, .LCPI0_169
	b	.LBB0_67
.LCPI0_166:
	.long	3816665288              @ 0xe37db0c8
.LCPI0_169:
	.long	3216229479              @ 0xbfb3c467
.section bb0_67
.LBB0_67:                               @ %if.then166
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.then166
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_171
	ldr	r3, .LCPI0_172
	b	.LBB0_69
.LCPI0_171:
	.long	2780004672              @ 0xa5b38140
.LCPI0_172:
	.long	1054784247              @ 0x3edebaf7
.section bb0_69
.LBB0_69:                               @ %if.then166
	mov	r5, r0
	mov	r7, r1
	mov	r0, r8
	mov	r1, r6
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %if.then166
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_173
	ldr	r3, .LCPI0_174
	bl	__aeabi_dadd
	b	.LBB0_71
.LCPI0_173:
	.long	3393300827              @ 0xca41a95b
.LCPI0_174:
	.long	1061780954              @ 0x3f497dda
.section bb0_71
.LBB0_71:                               @ %if.then166
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r6
	b	.LBB0_72
.section bb0_72
.LBB0_72:                               @ %if.then166
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_175
	ldr	r3, .LCPI0_176
	bl	__aeabi_dadd
	b	.LBB0_73
.LCPI0_175:
	.long	1949226101              @ 0x742ed475
.LCPI0_176:
	.long	1066604522              @ 0x3f9317ea
.section bb0_73
.LBB0_73:                               @ %if.then166
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r6
	b	.LBB0_74
.section bb0_74
.LBB0_74:                               @ %if.then166
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_177
	ldr	r3, .LCPI0_178
	bl	__aeabi_dadd
	b	.LBB0_75
.LCPI0_177:
	.long	3439058727              @ 0xccfbdf27
.LCPI0_178:
	.long	1069941229              @ 0x3fc601ed
.section bb0_75
.LBB0_75:                               @ %if.then166
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r6
	b	.LBB0_76
.section bb0_76
.LBB0_76:                               @ %if.then166
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_179
	ldr	r3, .LCPI0_180
	bl	__aeabi_dadd
	b	.LBB0_77
.LCPI0_179:
	.long	2480135388              @ 0x93d3dcdc
.LCPI0_180:
	.long	1072110104              @ 0x3fe71a18
.section bb0_77
.LBB0_77:                               @ %if.then166
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r6
	b	.LBB0_78
.section bb0_78
.LBB0_78:                               @ %if.then166
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_181
	ldr	r3, .LCPI0_182
	bl	__aeabi_dadd
	b	.LBB0_79
.LCPI0_181:
	.long	1657056116              @ 0x62c4ab74
.LCPI0_182:
	.long	1073104295              @ 0x3ff645a7
.section bb0_79
.LBB0_79:                               @ %if.then166
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r6
	b	.LBB0_80
.section bb0_80
.LBB0_80:                               @ %if.then166
	bl	__aeabi_dmul
	mov	r11, #267386880
	mov	r2, #0
	mov	r4, #0
	b	.LBB0_81
.section bb0_81
.LBB0_81:                               @ %if.then166
	orr	r11, r11, #805306368
	mov	r3, r11
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_82
.section bb0_82
.LBB0_82:                               @ %if.then166
	mov	r3, r1
	mov	r0, r5
	mov	r1, r7
	bl	__aeabi_ddiv
	b	.LBB0_83
.section bb0_83
.LBB0_83:                               @ %if.then166
	mov	r3, #266338304
	mov	r5, r0
	mov	r7, r1
	mov	r0, r8
	b	.LBB0_84
.section bb0_84
.LBB0_84:                               @ %if.then166
	mov	r1, r6
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	b	.LBB0_85
.section bb0_85
.LBB0_85:                               @ %if.then166
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r7, r0
	b	.LBB0_86
.section bb0_86
.LBB0_86:                               @ %if.then166
	sub	r0, r9, #3
	mov	r5, r1
	cmp	r0, #4
	bhi	.LBB0_203
	b	.LBB0_87
.section bb0_87
.LBB0_87:                               @ %if.then166
	lsl	r0, r0, #2
	adr	r1, .LJTI0_0_0
	ldr	pc, [r0, r1]
.LJTI0_0_0:
	.long	.LBB0_96
	.long	.LBB0_94
	.long	.LBB0_92
	.long	.LBB0_90
	.long	.LBB0_88
.section bb0_88
.LBB0_88:                               @ %sw.bb198
	mov	r3, #1572864
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_89
.section bb0_89
.LBB0_89:                               @ %sw.bb198
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r11, r1
	b	.LBB0_90
.section bb0_90
.LBB0_90:                               @ %sw.bb201
	mov	r3, #1310720
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_91
.section bb0_91
.LBB0_91:                               @ %sw.bb201
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r11
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r11, r1
	b	.LBB0_92
.section bb0_92
.LBB0_92:                               @ %sw.bb204
	mov	r3, #1048576
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_93
.section bb0_93
.LBB0_93:                               @ %sw.bb204
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r11
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r11, r1
	b	.LBB0_94
.section bb0_94
.LBB0_94:                               @ %sw.bb207
	mov	r3, #524288
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_95
.section bb0_95
.LBB0_95:                               @ %sw.bb207
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r11
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r11, r1
	b	.LBB0_96
.section bb0_96
.LBB0_96:                               @ %sw.bb210
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	mov	r3, #1073741824
	b	.LBB0_97
.section bb0_97
.LBB0_97:                               @ %sw.bb210
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r11
	bl	__aeabi_dmul
	b	.LBB0_98
.section bb0_98
.LBB0_98:                               @ %sw.bb210
	bl	log
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_156
.section bb0_99
.LBB0_99:                               @ %if.else61
	ldr	r0, .LCPI0_184
	cmp	r6, r0
	bls	.LBB0_160
	b	.LBB0_100
.LCPI0_184:
	.long	1073460418              @ 0x3ffbb4c2
.section bb0_100
.LBB0_100:
	mov	r0, #0
	str	r4, [sp, #24]           @ 4-byte Spill
	str	r9, [sp, #20]           @ 4-byte Spill
	mov	r1, #1073741824
	b	.LBB0_101
.section bb0_101
.LBB0_101:
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, #0
	b	.LBB0_102
.section bb0_102
.LBB0_102:                              @ %sw.bb
	mov	r2, r11
	mov	r3, r8
	bl	__aeabi_dsub
	mov	r8, r0
	b	.LBB0_103
.section bb0_103
.LBB0_103:                              @ %sw.bb
	mov	r6, r1
	mov	r2, r8
	mov	r3, r6
                                        @ kill: R0<def> R8<kill>
	b	.LBB0_104
.section bb0_104
.LBB0_104:                              @ %sw.bb
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_246
	ldr	r3, .LCPI0_247
	b	.LBB0_105
.LCPI0_246:
	.long	1116535378              @ 0x428cfa52
.LCPI0_247:
	.long	1056600180              @ 0x3efa7074
.section bb0_105
.LBB0_105:                              @ %sw.bb
	mov	r7, r0
	mov	r5, r1
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB0_106
.section bb0_106
.LBB0_106:                              @ %sw.bb
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_248
	ldr	r3, .LCPI0_249
	bl	__aeabi_dadd
	b	.LBB0_107
.LCPI0_248:
	.long	3977307469              @ 0xed10e54d
.LCPI0_249:
	.long	1059910380              @ 0x3f2cf2ec
.section bb0_107
.LBB0_107:                              @ %sw.bb
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_108
.section bb0_108
.LBB0_108:                              @ %sw.bb
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_250
	ldr	r3, .LCPI0_251
	bl	__aeabi_dadd
	b	.LBB0_109
.LCPI0_250:
	.long	292503389               @ 0x116f3f5d
.LCPI0_251:
	.long	1062439572              @ 0x3f538a94
.section bb0_109
.LBB0_109:                              @ %sw.bb
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_110
.section bb0_110
.LBB0_110:                              @ %sw.bb
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_252
	ldr	r3, .LCPI0_253
	bl	__aeabi_dadd
	b	.LBB0_111
.LCPI0_252:
	.long	3062886376              @ 0xb68fefe8
.LCPI0_253:
	.long	1065238607              @ 0x3f7e404f
.section bb0_111
.LBB0_111:                              @ %sw.bb
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_112
.section bb0_112
.LBB0_112:                              @ %sw.bb
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_254
	ldr	r3, .LCPI0_255
	bl	__aeabi_dadd
	b	.LBB0_113
.LCPI0_254:
	.long	441803431               @ 0x1a5562a7
.LCPI0_255:
	.long	1068580352              @ 0x3fb13e00
.section bb0_113
.LBB0_113:                              @ %sw.bb
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_114
.section bb0_114
.LBB0_114:                              @ %sw.bb
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_167
	ldr	r3, .LCPI0_256
	bl	__aeabi_dadd
	b	.LBB0_115
.LCPI0_167:
	.long	3816665288              @ 0xe37db0c8
.LCPI0_256:
	.long	1068745831              @ 0x3fb3c467
.section bb0_115
.LBB0_115:                              @ %sw.bb
	ldr	r2, .LCPI0_257
	ldr	r3, .LCPI0_258
	mov	r9, r0
	mov	r4, r1
	b	.LBB0_116
.LCPI0_257:
	.long	2426689591              @ 0x90a45837
.LCPI0_258:
	.long	1057457550              @ 0x3f07858e
.section bb0_116
.LBB0_116:                              @ %sw.bb
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_259
	b	.LBB0_117
.LCPI0_259:
	.long	2558393095              @ 0x987dfb07
.section bb0_117
.LBB0_117:                              @ %sw.bb
	ldr	r3, .LCPI0_260
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_118
.LCPI0_260:
	.long	1058820232              @ 0x3f1c5088
.section bb0_118
.LBB0_118:                              @ %sw.bb
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_261
	b	.LBB0_119
.LCPI0_261:
	.long	2310642688              @ 0x89b99c00
.section bb0_119
.LBB0_119:                              @ %sw.bb
	ldr	r3, .LCPI0_262
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_120
.LCPI0_262:
	.long	1061205702              @ 0x3f40b6c6
.section bb0_120
.LBB0_120:                              @ %sw.bb
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_263
	b	.LBB0_121
.LCPI0_263:
	.long	3434582635              @ 0xccb7926b
.section bb0_121
.LBB0_121:                              @ %sw.bb
	ldr	r3, .LCPI0_264
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_122
.LCPI0_264:
	.long	1063759320              @ 0x3f67add8
.section bb0_122
.LBB0_122:                              @ %sw.bb
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_265
	b	.LBB0_123
.LCPI0_265:
	.long	2895271035              @ 0xac92547b
.section bb0_123
.LBB0_123:                              @ %sw.bb
	ldr	r3, .LCPI0_266
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_124
.LCPI0_266:
	.long	1066734370              @ 0x3f951322
.section bb0_124
.LBB0_124:                              @ %sw.bb
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_267
	b	.LBB0_125
.LCPI0_267:
	.long	3299217325              @ 0xc4a60fad
.section bb0_125
.LBB0_125:                              @ %sw.bb
	ldr	r3, .LCPI0_268
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_126
.LCPI0_268:
	.long	1070900044              @ 0x3fd4a34c
.section bb0_126
.LBB0_126:                              @ %sw.bb
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r5, r0
	b	.LBB0_127
.section bb0_127
.LBB0_127:                              @ %sw.bb
	mov	r7, r1
	mov	r0, r8
	mov	r1, r6
	mov	r2, r9
	b	.LBB0_128
.section bb0_128
.LBB0_128:                              @ %sw.bb
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_129
.section bb0_129
.LBB0_129:                              @ %sw.bb
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_130
.section bb0_130
.LBB0_130:                              @ %sw.bb
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	orr	r3, r3, #-1342177280
	b	.LBB0_131
.section bb0_131
.LBB0_131:                              @ %sw.bb
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_132
.section bb0_132
.LBB0_132:                              @ %sw.bb
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	b	.LBB0_156
.section bb0_133
.LBB0_133:                              @ %if.else216
	mov	r0, r11
	mov	r1, r8
	bl	log
	mov	r2, r0
	ldr	r0, .LCPI0_139
	cmp	r6, r0
	bhi	.LBB0_200
	b	.LBB0_134
.LCPI0_139:
	.long	1133510655              @ 0x438fffff
.section bb0_134
.LBB0_134:                              @ %if.then219
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, #267386880
	str	r2, [sp, #12]           @ 4-byte Spill
	mov	r0, #0
	b	.LBB0_135
.section bb0_135
.LBB0_135:                              @ %if.then219
	mov	r2, r11
	mov	r3, r8
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	b	.LBB0_136
.section bb0_136
.LBB0_136:                              @ %if.then219
	mov	r4, r0
	mov	r7, r1
	mov	r2, r4
	mov	r3, r7
	b	.LBB0_137
.section bb0_137
.LBB0_137:                              @ %if.then219
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_140
	b	.LBB0_138
.LCPI0_140:
	.long	194921444               @ 0xb9e43e4
.section bb0_138
.LBB0_138:                              @ %if.then219
	ldr	r3, .LCPI0_141
	mov	r5, r0
	mov	r9, r1
                                        @ kill: R0<def> R5<kill>
	b	.LBB0_139
.LCPI0_141:
	.long	3210393757              @ 0xbf5ab89d
.section bb0_139
.LBB0_139:                              @ %if.then219
                                        @ kill: R1<def> R9<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_142
	ldr	r3, .LCPI0_143
	b	.LBB0_140
.LCPI0_142:
	.long	1289410001              @ 0x4cdad5d1
.LCPI0_143:
	.long	1061906362              @ 0x3f4b67ba
.section bb0_140
.LBB0_140:                              @ %if.then219
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_141
.section bb0_141
.LBB0_141:                              @ %if.then219
	mov	r1, r9
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_144
	ldr	r3, .LCPI0_145
	b	.LBB0_142
.LCPI0_144:
	.long	2349852481              @ 0x8c0fe741
.LCPI0_145:
	.long	3208872139              @ 0xbf4380cb
.section bb0_142
.LBB0_142:                              @ %if.then219
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_143
.section bb0_143
.LBB0_143:                              @ %if.then219
	mov	r1, r9
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_146
	ldr	r3, .LCPI0_147
	b	.LBB0_144
.LCPI0_146:
	.long	2563717302              @ 0x98cf38b6
.LCPI0_147:
	.long	1061814687              @ 0x3f4a019f
.section bb0_144
.LBB0_144:                              @ %if.then219
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_145
.section bb0_145
.LBB0_145:                              @ %if.then219
	mov	r1, r9
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_148
	ldr	r3, .LCPI0_149
	b	.LBB0_146
.LCPI0_148:
	.long	380644956               @ 0x16b02e5c
.LCPI0_149:
	.long	3211182444              @ 0xbf66c16c
.section bb0_146
.LBB0_146:                              @ %if.then219
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	b	.LBB0_147
.section bb0_147
.LBB0_147:                              @ %if.then219
	mov	r1, r9
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_150
	ldr	r3, .LCPI0_151
	b	.LBB0_148
.LCPI0_150:
	.long	1431655739              @ 0x5555553b
.LCPI0_151:
	.long	1068848469              @ 0x3fb55555
.section bb0_148
.LBB0_148:                              @ %if.then219
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_149
.section bb0_149
.LBB0_149:                              @ %if.then219
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_152
	ldr	r3, .LCPI0_153
	b	.LBB0_150
.LCPI0_152:
	.long	2429123945              @ 0x90c97d69
.LCPI0_153:
	.long	1071304675              @ 0x3fdacfe3
.section bb0_150
.LBB0_150:                              @ %if.then219
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r5, r0
	mov	r7, r1
	b	.LBB0_151
.section bb0_151
.LBB0_151:                              @ %if.then219
	mov	r0, r11
	mov	r1, r8
	mov	r2, #0
	orr	r3, r3, #-1342177280
	b	.LBB0_152
.section bb0_152
.LBB0_152:                              @ %if.then219
	bl	__aeabi_dadd
	mov	r6, r0
	mov	r4, r1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	b	.LBB0_153
.section bb0_153
.LBB0_153:                              @ %if.then219
	ldr	r1, [sp, #16]           @ 4-byte Reload
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #-1342177280
	b	.LBB0_154
.section bb0_154
.LBB0_154:                              @ %if.then219
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_155
.section bb0_155
.LBB0_155:                              @ %if.then219
	mov	r1, r4
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r7
	b	.LBB0_156
.section bb0_156
.LBB0_156:                              @ %if.end246
	bl	__aeabi_dadd
	b	.LBB0_202
.section bb0_157
.LBB0_157:                              @ %if.end75
	str	r4, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	ldr	r2, .LCPI0_189
	ldr	r3, .LCPI0_190
	b	.LBB0_158
.LCPI0_189:
	.long	2371549436              @ 0x8d5af8fc
.LCPI0_190:
	.long	3218967393              @ 0xbfdd8b61
.section bb0_158
.LBB0_158:                              @ %if.end75
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dadd
	b	.LBB0_159
.section bb0_159
.LBB0_159:                              @ %if.end75
	mov	r7, r0
	ldr	r0, .LCPI0_191
	mov	r5, r1
	cmp	r6, r0
	movls	r5, r8
	movls	r7, r11
	bls	.LBB0_207
	b	.LBB0_164
.LCPI0_191:
	.long	1070442080              @ 0x3fcda660
.section bb0_160
.LBB0_160:                              @ %if.else66
	ldr	r0, .LCPI0_185
	cmp	r6, r0
	blo	.LBB0_204
	b	.LBB0_161
.LCPI0_185:
	.long	1072936132              @ 0x3ff3b4c4
.section bb0_161
.LBB0_161:                              @ %if.end75.thread382
	str	r4, [sp, #24]           @ 4-byte Spill
	ldr	r2, .LCPI0_186
	ldr	r3, .LCPI0_187
	mov	r0, r11
	b	.LBB0_162
.LCPI0_186:
	.long	1666629183              @ 0x6356be3f
.LCPI0_187:
	.long	3220660952              @ 0xbff762d8
.section bb0_162
.LBB0_162:                              @ %if.end75.thread382
	mov	r1, r8
	bl	__aeabi_dadd
	mov	r7, r0
	mov	r0, #0
	b	.LBB0_163
.section bb0_163
.LBB0_163:                              @ %if.end75.thread382
	mov	r5, r1
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB0_164
.section bb0_164
.LBB0_164:                              @ %sw.bb102
	mov	r0, r7
	mov	r1, r5
	mov	r2, r7
	mov	r3, r5
	b	.LBB0_165
.section bb0_165
.LBB0_165:                              @ %sw.bb102
	bl	__aeabi_dmul
	mov	r8, r1
	mov	r2, r0
	mov	r0, r7
	b	.LBB0_166
.section bb0_166
.LBB0_166:                              @ %sw.bb102
	mov	r1, r5
	mov	r3, r8
	str	r2, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_dmul
	b	.LBB0_167
.section bb0_167
.LBB0_167:                              @ %sw.bb102
	str	r9, [sp, #20]           @ 4-byte Spill
	ldr	r2, .LCPI0_212
	ldr	r3, .LCPI0_213
	mov	r9, r0
	b	.LBB0_168
.LCPI0_212:
	.long	3972238392              @ 0xecc38c38
.LCPI0_213:
	.long	3207888676              @ 0xbf347f24
.section bb0_168
.LBB0_168:                              @ %sw.bb102
	mov	r4, r1
                                        @ kill: R0<def> R9<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	b	.LBB0_169
.section bb0_169
.LBB0_169:                              @ %sw.bb102
	ldr	r2, .LCPI0_214
	ldr	r3, .LCPI0_215
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_170
.LCPI0_214:
	.long	4016154857              @ 0xef61a8e9
.LCPI0_215:
	.long	1062002444              @ 0x3f4cdf0c
.section bb0_170
.LBB0_170:                              @ %sw.bb102
	mov	r3, r1
	mov	r0, r9
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_171
.section bb0_171
.LBB0_171:                              @ %sw.bb102
	ldr	r2, .LCPI0_216
	ldr	r3, .LCPI0_217
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_172
.LCPI0_216:
	.long	3018396887              @ 0xb3e914d7
.LCPI0_217:
	.long	3211669247              @ 0xbf6e2eff
.section bb0_172
.LBB0_172:                              @ %sw.bb102
	mov	r3, r1
	mov	r0, r9
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_173
.section bb0_173
.LBB0_173:                              @ %sw.bb102
	ldr	r2, .LCPI0_218
	ldr	r3, .LCPI0_219
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_174
.LCPI0_218:
	.long	2534078956              @ 0x970af9ec
.LCPI0_219:
	.long	1066559207              @ 0x3f9266e7
.section bb0_174
.LBB0_174:                              @ %sw.bb102
	mov	r3, r1
	mov	r0, r9
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_175
.section bb0_175
.LBB0_175:                              @ %sw.bb102
	ldr	r2, .LCPI0_220
	ldr	r3, .LCPI0_221
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_222
	b	.LBB0_176
.LCPI0_220:
	.long	2378614025              @ 0x8dc6c509
.LCPI0_221:
	.long	3217220647              @ 0xbfc2e427
.LCPI0_222:
	.long	3905082356              @ 0xe8c2d3f4
.section bb0_176
.LBB0_176:                              @ %sw.bb102
	ldr	r3, .LCPI0_223
	mov	r11, r0
	mov	r6, r1
	mov	r0, r9
	b	.LBB0_177
.LCPI0_223:
	.long	1060502846              @ 0x3f35fd3e
.section bb0_177
.LBB0_177:                              @ %sw.bb102
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_224
	ldr	r3, .LCPI0_225
	b	.LBB0_178
.LCPI0_224:
	.long	2624839916              @ 0x9c73e0ec
.LCPI0_225:
	.long	3208750608              @ 0xbf41a610
.section bb0_178
.LBB0_178:                              @ %sw.bb102
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	b	.LBB0_179
.section bb0_179
.LBB0_179:                              @ %sw.bb102
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_226
	ldr	r3, .LCPI0_227
	b	.LBB0_180
.LCPI0_226:
	.long	773179669               @ 0x2e15c915
.LCPI0_227:
	.long	1063420627              @ 0x3f6282d3
.section bb0_180
.LBB0_180:                              @ %sw.bb102
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	b	.LBB0_181
.section bb0_181
.LBB0_181:                              @ %sw.bb102
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_228
	ldr	r3, .LCPI0_229
	b	.LBB0_182
.LCPI0_228:
	.long	3130125418              @ 0xba91ec6a
.LCPI0_229:
	.long	3213172639              @ 0xbf851f9f
.section bb0_182
.LBB0_182:                              @ %sw.bb102
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r9
	b	.LBB0_183
.section bb0_183
.LBB0_183:                              @ %sw.bb102
	mov	r1, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_230
	ldr	r3, .LCPI0_231
	b	.LBB0_184
.LCPI0_230:
	.long	2497003931              @ 0x94d5419b
.LCPI0_231:
	.long	1068534594              @ 0x3fb08b42
.section bb0_184
.LBB0_184:                              @ %sw.bb102
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	b	.LBB0_185
.section bb0_185
.LBB0_185:                              @ %sw.bb102
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_186
.section bb0_186
.LBB0_186:                              @ %sw.bb102
	mov	r0, r11
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_187
.section bb0_187
.LBB0_187:                              @ %sw.bb102
	mov	r3, r1
	mov	r0, r9
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_188
.section bb0_188
.LBB0_188:                              @ %sw.bb102
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .LCPI0_232
	ldr	r1, .LCPI0_233
	b	.LBB0_189
.LCPI0_232:
	.long	2760546079              @ 0xa48a971f
.LCPI0_233:
	.long	3159410634              @ 0xbc50c7ca
.section bb0_189
.LBB0_189:                              @ %sw.bb102
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_234
	ldr	r3, .LCPI0_235
	mov	r5, r0
	b	.LBB0_190
.LCPI0_234:
	.long	1812904951              @ 0x6c0ebbf7
.LCPI0_235:
	.long	1060417389              @ 0x3f34af6d
.section bb0_190
.LBB0_190:                              @ %sw.bb102
	mov	r7, r1
	mov	r0, r9
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_191
.section bb0_191
.LBB0_191:                              @ %sw.bb102
	ldr	r2, .LCPI0_236
	ldr	r3, .LCPI0_237
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_192
.LCPI0_236:
	.long	3207404273              @ 0xbf2d1af1
.LCPI0_237:
	.long	3210149518              @ 0xbf56fe8e
.section bb0_192
.LBB0_192:                              @ %sw.bb102
	mov	r3, r1
	mov	r0, r9
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_193
.section bb0_193
.LBB0_193:                              @ %sw.bb102
	ldr	r2, .LCPI0_238
	ldr	r3, .LCPI0_239
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_194
.LCPI0_238:
	.long	3815826244              @ 0xe370e344
.LCPI0_239:
	.long	1064893664              @ 0x3f78fce0
.section bb0_194
.LBB0_194:                              @ %sw.bb102
	mov	r3, r1
	mov	r0, r9
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_195
.section bb0_195
.LBB0_195:                              @ %sw.bb102
	ldr	r2, .LCPI0_240
	ldr	r3, .LCPI0_241
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_196
.LCPI0_240:
	.long	3744839443              @ 0xdf35b713
.LCPI0_241:
	.long	3214985640              @ 0xbfa0c9a8
.section bb0_196
.LBB0_196:                              @ %sw.bb102
	mov	r0, r9
	ldr	r9, [sp, #20]           @ 4-byte Reload
	mov	r3, r1
	mov	r1, r4
	b	.LBB0_197
.section bb0_197
.LBB0_197:                              @ %sw.bb102
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_242
	ldr	r3, .LCPI0_243
	bl	__aeabi_dadd
	b	.LBB0_198
.LCPI0_242:
	.long	3371055266              @ 0xc8ee38a2
.LCPI0_243:
	.long	1071576875              @ 0x3fdef72b
.section bb0_198
.LBB0_198:                              @ %sw.bb102
	mov	r2, r0
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	r3, r1
	mov	r1, r8
	b	.LBB0_199
.section bb0_199
.LBB0_199:                              @ %sw.bb102
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r7
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_244
	ldr	r3, .LCPI0_245
	b	.LBB0_233
.LCPI0_244:
	.long	3166931522              @ 0xbcc38a42
.LCPI0_245:
	.long	3216972217              @ 0xbfbf19b9
.section bb0_200
.LBB0_200:                              @ %if.else239
	mov	r3, #267386880
	mov	r0, r2
	mov	r2, #0
	orr	r3, r3, #-1342177280
	b	.LBB0_201
.section bb0_201
.LBB0_201:                              @ %if.else239
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB0_202
.section bb0_202
.LBB0_202:                              @ %if.end246
	mov	r7, r0
	mov	r5, r1
	b	.LBB0_203
.section bb0_203
.LBB0_203:                              @ %if.end246
	ldr	r9, [sp, #20]           @ 4-byte Reload
	b	.LBB0_235
.section bb0_204
.LBB0_204:                              @ %if.end75.thread385
	mov	r3, #267386880
	mov	r0, #0
	mov	r1, r8
	mov	r2, #0
	b	.LBB0_205
.section bb0_205
.LBB0_205:                              @ %if.end75.thread385
	str	r4, [sp, #24]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	orr	r3, r3, #-1342177280
	mov	r0, r11
	b	.LBB0_206
.section bb0_206
.LBB0_206:                              @ %if.end75.thread385
	bl	__aeabi_dadd
	mov	r7, r0
	mov	r5, r1
	mov	r0, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB0_207
.section bb0_207
.LBB0_207:                              @ %sw.bb137
	ldr	r2, .LCPI0_192
	ldr	r3, .LCPI0_193
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_208
.LCPI0_192:
	.long	3207310089              @ 0xbf2bab09
.LCPI0_193:
	.long	1066100619              @ 0x3f8b678b
.section bb0_208
.LBB0_208:                              @ %sw.bb137
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_194
	ldr	r3, .LCPI0_195
	bl	__aeabi_dadd
	b	.LBB0_209
.LCPI0_194:
	.long	4127263012              @ 0xf6010924
.LCPI0_195:
	.long	1070419630              @ 0x3fcd4eae
.section bb0_209
.LBB0_209:                              @ %sw.bb137
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_210
.section bb0_210
.LBB0_210:                              @ %sw.bb137
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_196
	ldr	r3, .LCPI0_197
	bl	__aeabi_dadd
	b	.LBB0_211
.LCPI0_196:
	.long	1156219984              @ 0x44ea8450
.LCPI0_197:
	.long	1072646518              @ 0x3fef4976
.section bb0_211
.LBB0_211:                              @ %sw.bb137
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_212
.section bb0_212
.LBB0_212:                              @ %sw.bb137
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_198
	ldr	r3, .LCPI0_199
	bl	__aeabi_dadd
	b	.LBB0_213
.LCPI0_198:
	.long	3508125039              @ 0xd119bd6f
.LCPI0_199:
	.long	1073170268              @ 0x3ff7475c
.section bb0_213
.LBB0_213:                              @ %sw.bb137
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_214
.section bb0_214
.LBB0_214:                              @ %sw.bb137
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_200
	ldr	r3, .LCPI0_201
	bl	__aeabi_dadd
	b	.LBB0_215
.LCPI0_200:
	.long	2332057087              @ 0x8b005dff
.LCPI0_201:
	.long	1071923230              @ 0x3fe4401e
.section bb0_215
.LBB0_215:                              @ %sw.bb137
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_216
.section bb0_216
.LBB0_216:                              @ %sw.bb137
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_168
	ldr	r3, .LCPI0_170
	bl	__aeabi_dadd
	b	.LBB0_217
.LCPI0_168:
	.long	3816665288              @ 0xe37db0c8
.LCPI0_170:
	.long	3216229479              @ 0xbfb3c467
.section bb0_217
.LBB0_217:                              @ %sw.bb137
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	b	.LBB0_218
.section bb0_218
.LBB0_218:                              @ %sw.bb137
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_202
	ldr	r3, .LCPI0_203
	mov	r6, r0
	b	.LBB0_219
.LCPI0_202:
	.long	1473302369              @ 0x57d0cf61
.LCPI0_203:
	.long	1063934651              @ 0x3f6a5abb
.section bb0_219
.LBB0_219:                              @ %sw.bb137
	mov	r8, r1
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_220
.section bb0_220
.LBB0_220:                              @ %sw.bb137
	ldr	r2, .LCPI0_204
	ldr	r3, .LCPI0_205
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_221
.LCPI0_204:
	.long	3595795592              @ 0xd6537c88
.LCPI0_205:
	.long	1069198933              @ 0x3fbaae55
.section bb0_221
.LBB0_221:                              @ %sw.bb137
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_222
.section bb0_222
.LBB0_222:                              @ %sw.bb137
	ldr	r2, .LCPI0_206
	ldr	r3, .LCPI0_207
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_223
.LCPI0_206:
	.long	3830468783              @ 0xe45050af
.LCPI0_207:
	.long	1072209403              @ 0x3fe89dfb
.section bb0_223
.LBB0_223:                              @ %sw.bb137
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_224
.section bb0_224
.LBB0_224:                              @ %sw.bb137
	ldr	r2, .LCPI0_208
	ldr	r3, .LCPI0_209
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_225
.LCPI0_208:
	.long	2754287861              @ 0xa42b18f5
.LCPI0_209:
	.long	1073809189              @ 0x40010725
.section bb0_225
.LBB0_225:                              @ %sw.bb137
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_226
.section bb0_226
.LBB0_226:                              @ %sw.bb137
	ldr	r2, .LCPI0_210
	ldr	r3, .LCPI0_211
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_227
.LCPI0_210:
	.long	3267191196              @ 0xc2bd619c
.LCPI0_211:
	.long	1073980887              @ 0x4003a5d7
.section bb0_227
.LBB0_227:                              @ %sw.bb137
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_228
.section bb0_228
.LBB0_228:                              @ %sw.bb137
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_229
.section bb0_229
.LBB0_229:                              @ %sw.bb137
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r8
	b	.LBB0_230
.section bb0_230
.LBB0_230:                              @ %sw.bb137
	bl	__aeabi_ddiv
	mov	r3, #266338304
	mov	r4, r0
	mov	r6, r1
	b	.LBB0_231
.section bb0_231
.LBB0_231:                              @ %sw.bb137
	mov	r0, r7
	mov	r1, r5
	mov	r2, #0
	orr	r3, r3, #-1342177280
	b	.LBB0_232
.section bb0_232
.LBB0_232:                              @ %sw.bb137
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r6
	b	.LBB0_233
.section bb0_233
.LBB0_233:                              @ %if.end246
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	b	.LBB0_234
.section bb0_234
.LBB0_234:                              @ %if.end246
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	__aeabi_dadd
	mov	r7, r0
	mov	r5, r1
	b	.LBB0_235
.section bb0_235
.LBB0_235:                              @ %if.end246
	ldr	r4, [sp, #24]           @ 4-byte Reload
	b	.LBB0_236
.section bb0_236
.LBB0_236:                              @ %if.end246
	mov	r0, r9
	mov	r1, r4
	mov	r2, r7
	mov	r3, r5
	b	.LBB0_237
.section bb0_237
.LBB0_237:                              @ %if.end246
	bl	__aeabi_dsub
	cmp	r10, #0
	movge	r1, r5
	movge	r0, r7
	b	.LBB0_238
.section bb0_238
.LBB0_238:                              @ %return
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__lgamma_r, .Ltmp0-__lgamma_r
	.cantunwind
	.fnend


	.weak	lgamma_r
lgamma_r = __lgamma_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
