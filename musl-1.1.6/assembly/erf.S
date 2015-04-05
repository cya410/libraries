.section erf_text
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
	.file	"src/math/erf.bc"
	.globl	erf
	.align	2
	.type	erf,%function
.section bb0_0
erf:                                    @ @erf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r1
	mov	r1, #267386880
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	lsr	r6, r4, #31
	bic	r0, r4, #-2147483648
	orr	r1, r1, #1879048192
	cmp	r0, r1
	blo	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	mov	r4, r0
	add	r0, r6, r6
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then
	mov	r5, r1
	rsb	r0, r0, #1
	bl	__aeabi_i2d
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_43
.section bb0_7
.LBB0_7:                                @ %if.end
	ldr	r1, .LCPI0_25
	cmp	r0, r1
	bhi	.LBB0_14
	b	.LBB0_8
.LCPI0_25:
	.long	1072365567              @ 0x3feaffff
.section bb0_8
.LBB0_8:                                @ %if.then6
	ldr	r1, .LCPI0_27
	cmp	r0, r1
	bhi	.LBB0_17
	b	.LBB0_9
.LCPI0_27:
	.long	1043333119              @ 0x3e2fffff
.section bb0_9
.LBB0_9:                                @ %if.then9
	mov	r3, #2097152
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then9
	orr	r3, r3, #1073741824
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_48
	ldr	r3, .LCPI0_49
	b	.LBB0_11
.LCPI0_48:
	.long	2182404969              @ 0x8214db69
.LCPI0_49:
	.long	1072721594              @ 0x3ff06eba
.section bb0_11
.LBB0_11:                               @ %if.then9
	mov	r6, r0
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then9
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, #0
	mov	r3, #1069547520
	bl	__aeabi_dmul
	b	.LBB0_43
.section bb0_14
.LBB0_14:                               @ %if.end37
	ldr	r1, .LCPI0_26
	cmp	r0, r1
	bhi	.LBB0_40
	b	.LBB0_15
.LCPI0_26:
	.long	1075314687              @ 0x4017ffff
.section bb0_15
.LBB0_15:                               @ %if.then40
	mov	r2, r5
	mov	r3, r4
	bl	erfc2
	mov	r3, r1
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then40
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #805306368
	bl	__aeabi_dsub
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_41
.section bb0_17
.LBB0_17:                               @ %if.end14
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end14
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_28
	ldr	r3, .LCPI0_29
	mov	r6, r0
	b	.LBB0_19
.LCPI0_28:
	.long	301995692               @ 0x120016ac
.LCPI0_29:
	.long	3203984086              @ 0xbef8ead6
.section bb0_19
.LBB0_19:                               @ %if.end14
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end14
	ldr	r2, .LCPI0_30
	ldr	r3, .LCPI0_31
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_21
.LCPI0_30:
	.long	593914084               @ 0x236668e4
.LCPI0_31:
	.long	3212288657              @ 0xbf77a291
.section bb0_21
.LBB0_21:                               @ %if.end14
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end14
	ldr	r2, .LCPI0_32
	ldr	r3, .LCPI0_33
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_23
.LCPI0_32:
	.long	3688307023              @ 0xdbd7194f
.LCPI0_33:
	.long	3214748241              @ 0xbf9d2a51
.section bb0_23
.LBB0_23:                               @ %if.end14
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end14
	ldr	r2, .LCPI0_34
	ldr	r3, .LCPI0_35
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_25
.LCPI0_34:
	.long	1763490067              @ 0x691cb913
.LCPI0_35:
	.long	3218394493              @ 0xbfd4cd7d
.section bb0_25
.LBB0_25:                               @ %if.end14
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end14
	ldr	r2, .LCPI0_36
	ldr	r3, .LCPI0_37
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_38
	b	.LBB0_27
.LCPI0_36:
	.long	2182404968              @ 0x8214db68
.LCPI0_37:
	.long	1069575866              @ 0x3fc06eba
.LCPI0_38:
	.long	1117937952              @ 0x42a26120
.section bb0_27
.LBB0_27:                               @ %if.end14
	ldr	r3, .LCPI0_39
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	b	.LBB0_28
.LCPI0_39:
	.long	3201342531              @ 0xbed09c43
.section bb0_28
.LBB0_28:                               @ %if.end14
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_40
	ldr	r3, .LCPI0_41
	b	.LBB0_29
.LCPI0_40:
	.long	572267024               @ 0x221c1a10
.LCPI0_41:
	.long	1059151305              @ 0x3f215dc9
.section bb0_29
.LBB0_29:                               @ %if.end14
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end14
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_42
	ldr	r3, .LCPI0_43
	b	.LBB0_31
.LCPI0_42:
	.long	3302189839              @ 0xc4d36b0f
.LCPI0_43:
	.long	1064620066              @ 0x3f74d022
.section bb0_31
.LBB0_31:                               @ %if.end14
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end14
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_44
	ldr	r3, .LCPI0_45
	b	.LBB0_33
.LCPI0_44:
	.long	1429655226              @ 0x5536ceba
.LCPI0_45:
	.long	1068541260              @ 0x3fb0a54c
.section bb0_33
.LBB0_33:                               @ %if.end14
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end14
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_46
	ldr	r3, .LCPI0_47
	b	.LBB0_35
.LCPI0_46:
	.long	3453672457              @ 0xcddadc09
.LCPI0_47:
	.long	1071216505              @ 0x3fd97779
.section bb0_35
.LBB0_35:                               @ %if.end14
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end14
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end14
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end14
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_ddiv
	mov	r2, r5
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end14
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dadd
	b	.LBB0_43
.section bb0_40
.LBB0_40:
	mov	r5, #267386880
	mov	r4, #0
	orr	r5, r5, #805306368
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end42
	mov	r0, #0
	mov	r1, #-2147483648
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end42
	bl	__aeabi_dsub
	cmp	r6, #0
	moveq	r1, r5
	moveq	r0, r4
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	erf, .Ltmp0-erf
	.cantunwind
	.fnend

	.align	2
	.type	erfc2,%function
.section bb1_0
erfc2:                                  @ @erfc2
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r5, r0
	mov	r0, r2
	mov	r1, r3
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	bl	fabs
	mov	r10, r0
	ldr	r0, .LCPI1_88
	mov	r11, r1
	cmp	r5, r0
	bhi	.LBB1_34
	b	.LBB1_5
.LCPI1_88:
	.long	1072955391              @ 0x3ff3ffff
.section bb1_5
.LBB1_5:                                @ %if.then
	mov	r3, #267386880
	mov	r0, r10
	mov	r1, r11
	mov	r2, #0
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.then
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	ldr	r2, .LCPI1_150
	ldr	r3, .LCPI1_151
	b	.LBB1_7
.LCPI1_150:
	.long	177604415               @ 0xa96073f
.LCPI1_151:
	.long	3210854200              @ 0xbf61bf38
.section bb1_7
.LBB1_7:                                @ %if.then
	mov	r4, r0
	mov	r5, r1
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %if.then
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_152
	ldr	r3, .LCPI1_153
	bl	__aeabi_dadd
	b	.LBB1_9
.LCPI1_152:
	.long	1503106539              @ 0x599795eb
.LCPI1_153:
	.long	1067592246              @ 0x3fa22a36
.section bb1_9
.LBB1_9:                                @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.then
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_154
	ldr	r3, .LCPI1_155
	bl	__aeabi_dadd
	b	.LBB1_11
.LCPI1_154:
	.long	1027483884              @ 0x3d3e28ec
.LCPI1_155:
	.long	3216794520              @ 0xbfbc6398
.section bb1_11
.LBB1_11:                               @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_156
	ldr	r3, .LCPI1_157
	bl	__aeabi_dadd
	b	.LBB1_13
.LCPI1_156:
	.long	2152800484              @ 0x805120e4
.LCPI1_157:
	.long	1070882762              @ 0x3fd45fca
.section bb1_13
.LBB1_13:                               @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %if.then
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_158
	ldr	r3, .LCPI1_159
	bl	__aeabi_dadd
	b	.LBB1_15
.LCPI1_158:
	.long	4223190001              @ 0xfbb8c3f1
.LCPI1_159:
	.long	3218592320              @ 0xbfd7d240
.section bb1_15
.LBB1_15:                               @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.then
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_160
	ldr	r3, .LCPI1_161
	bl	__aeabi_dadd
	b	.LBB1_17
.LCPI1_160:
	.long	2912072525              @ 0xad92b34d
.LCPI1_161:
	.long	1071287552              @ 0x3fda8d00
.section bb1_17
.LBB1_17:                               @ %if.then
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %if.then
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_162
	ldr	r3, .LCPI1_163
	bl	__aeabi_dadd
	b	.LBB1_19
.LCPI1_162:
	.long	3203888440              @ 0xbef77538
.LCPI1_163:
	.long	3210959288              @ 0xbf6359b8
.section bb1_19
.LBB1_19:                               @ %if.then
	ldr	r2, .LCPI1_164
	ldr	r3, .LCPI1_165
	mov	r6, r0
	mov	r7, r1
	b	.LBB1_20
.LCPI1_164:
	.long	1463096605              @ 0x5735151d
.LCPI1_165:
	.long	1065913172              @ 0x3f888b54
.section bb1_20
.LBB1_20:                               @ %if.then
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_166
	b	.LBB1_21
.LCPI1_166:
	.long	1800527132              @ 0x6b51dd1c
.section bb1_21
.LBB1_21:                               @ %if.then
	ldr	r3, .LCPI1_167
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_22
.LCPI1_167:
	.long	1066134978              @ 0x3f8bedc2
.section bb1_22
.LBB1_22:                               @ %if.then
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_168
	b	.LBB1_23
.LCPI1_168:
	.long	3882038559              @ 0xe763351f
.section bb1_23
.LBB1_23:                               @ %if.then
	ldr	r3, .LCPI1_169
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_24
.LCPI1_169:
	.long	1069557344              @ 0x3fc02660
.section bb1_24
.LBB1_24:                               @ %if.then
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_170
	b	.LBB1_25
.LCPI1_170:
	.long	3651135911              @ 0xd99fe9a7
.section bb1_25
.LBB1_25:                               @ %if.then
	ldr	r3, .LCPI1_171
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_26
.LCPI1_171:
	.long	1068655452              @ 0x3fb2635c
.section bb1_26
.LBB1_26:                               @ %if.then
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_172
	b	.LBB1_27
.LCPI1_172:
	.long	2464902963              @ 0x92eb6f33
.section bb1_27
.LBB1_27:                               @ %if.then
	ldr	r3, .LCPI1_173
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_28
.LCPI1_173:
	.long	1071729392              @ 0x3fe14af0
.section bb1_28
.LBB1_28:                               @ %if.then
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_174
	b	.LBB1_29
.LCPI1_174:
	.long	418308899               @ 0x18eee323
.section bb1_29
.LBB1_29:                               @ %if.then
	ldr	r3, .LCPI1_175
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_30
.LCPI1_175:
	.long	1069235814              @ 0x3fbb3e66
.section bb1_30
.LBB1_30:                               @ %if.then
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r3, #267386880
	b	.LBB1_31
.section bb1_31
.LBB1_31:                               @ %if.then
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB1_32
.section bb1_32
.LBB1_32:                               @ %if.then
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
	b	.LBB1_33
.section bb1_33
.LBB1_33:                               @ %if.then
	mov	r3, r1
	ldr	r1, .LCPI1_176
	mov	r2, r0
	mov	r0, #-2147483648
	bl	__aeabi_dsub
	b	.LBB1_107
.LCPI1_176:
	.long	1069798650              @ 0x3fc3d4fa
.section bb1_34
.LBB1_34:                               @ %if.end
	mov	r0, r10
	mov	r1, r11
	mov	r2, r10
	mov	r3, r11
	b	.LBB1_35
.section bb1_35
.LBB1_35:                               @ %if.end
	bl	__aeabi_dmul
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	b	.LBB1_36
.section bb1_36
.LBB1_36:                               @ %if.end
	mov	r0, #0
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	mov	r6, r0
	b	.LBB1_37
.section bb1_37
.LBB1_37:                               @ %if.end
	ldr	r0, .LCPI1_89
	mov	r7, r1
	cmp	r5, r0
	bhi	.LBB1_66
	b	.LBB1_38
.LCPI1_89:
	.long	1074191212              @ 0x4006db6c
.section bb1_38
.LBB1_38:                               @ %if.then3
	ldr	r2, .LCPI1_119
	ldr	r3, .LCPI1_120
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_39
.LCPI1_119:
	.long	3332031068              @ 0xc69ac25c
.LCPI1_120:
	.long	3223560431              @ 0xc023a0ef
.section bb1_39
.LBB1_39:                               @ %if.then3
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_121
	ldr	r3, .LCPI1_122
	bl	__aeabi_dadd
	b	.LBB1_40
.LCPI1_121:
	.long	1474614002              @ 0x57e4d2f2
.LCPI1_122:
	.long	3226751589              @ 0xc0545265
.section bb1_40
.LBB1_40:                               @ %if.then3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_41
.section bb1_41
.LBB1_41:                               @ %if.then3
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_123
	ldr	r3, .LCPI1_124
	bl	__aeabi_dadd
	b	.LBB1_42
.LCPI1_123:
	.long	3956059058              @ 0xebccabb2
.LCPI1_124:
	.long	3227980636              @ 0xc067135c
.section bb1_42
.LBB1_42:                               @ %if.then3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_43
.section bb1_43
.LBB1_43:                               @ %if.then3
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_125
	ldr	r3, .LCPI1_126
	bl	__aeabi_dadd
	b	.LBB1_44
.LCPI1_125:
	.long	2217222758              @ 0x84282266
.LCPI1_126:
	.long	3227798705              @ 0xc0644cb1
.section bb1_44
.LBB1_44:                               @ %if.then3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_45
.section bb1_45
.LBB1_45:                               @ %if.then3
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_127
	ldr	r3, .LCPI1_128
	bl	__aeabi_dadd
	b	.LBB1_46
.LCPI1_127:
	.long	3838550925              @ 0xe4cba38d
.LCPI1_128:
	.long	3226415114              @ 0xc04f300a
.section bb1_46
.LBB1_46:                               @ %if.then3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_47
.section bb1_47
.LBB1_47:                               @ %if.then3
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_129
	ldr	r3, .LCPI1_130
	bl	__aeabi_dadd
	b	.LBB1_48
.LCPI1_129:
	.long	1102112550              @ 0x41b0e726
.LCPI1_130:
	.long	3223657988              @ 0xc0251e04
.section bb1_48
.LBB1_48:                               @ %if.then3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_49
.section bb1_49
.LBB1_49:                               @ %if.then3
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_131
	ldr	r3, .LCPI1_132
	bl	__aeabi_dadd
	b	.LBB1_50
.LCPI1_131:
	.long	3837424480              @ 0xe4ba7360
.LCPI1_132:
	.long	3219534870              @ 0xbfe63416
.section bb1_50
.LBB1_50:                               @ %if.then3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_51
.section bb1_51
.LBB1_51:                               @ %if.then3
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_133
	ldr	r3, .LCPI1_103
	bl	__aeabi_dadd
	b	.LBB1_52
.LCPI1_103:
	.long	3213112338              @ 0xbf843412
.LCPI1_133:
	.long	1611490357              @ 0x600d6435
.section bb1_52
.LBB1_52:                               @ %if.then3
	ldr	r2, .LCPI1_134
	ldr	r3, .LCPI1_135
	mov	r8, r0
	mov	r9, r1
	b	.LBB1_53
.LCPI1_134:
	.long	4000619106              @ 0xee749a62
.LCPI1_135:
	.long	3215912946              @ 0xbfaeeff2
.section bb1_53
.LBB1_53:                               @ %if.then3
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_136
	b	.LBB1_54
.LCPI1_136:
	.long	2387102355              @ 0x8e484a93
.section bb1_54
.LBB1_54:                               @ %if.then3
	ldr	r3, .LCPI1_137
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_55
.LCPI1_137:
	.long	1075464175              @ 0x401a47ef
.section bb1_55
.LBB1_55:                               @ %if.then3
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_138
	b	.LBB1_56
.LCPI1_138:
	.long	3997740588              @ 0xee48ae2c
.section bb1_56
.LBB1_56:                               @ %if.then3
	ldr	r3, .LCPI1_139
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_57
.LCPI1_139:
	.long	1079716003              @ 0x405b28a3
.section bb1_57
.LBB1_57:                               @ %if.then3
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_140
	b	.LBB1_58
.LCPI1_140:
	.long	1466958612              @ 0x57700314
.section bb1_58
.LBB1_58:                               @ %if.then3
	ldr	r3, .LCPI1_141
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_59
.LCPI1_141:
	.long	1081790497              @ 0x407ad021
.section bb1_59
.LBB1_59:                               @ %if.then3
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_142
	b	.LBB1_60
.LCPI1_142:
	.long	569124968               @ 0x21ec2868
.section bb1_60
.LBB1_60:                               @ %if.then3
	ldr	r3, .LCPI1_143
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_61
.LCPI1_143:
	.long	1082403609              @ 0x40842b19
.section bb1_61
.LBB1_61:                               @ %if.then3
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_144
	b	.LBB1_62
.LCPI1_144:
	.long	3582597745              @ 0xd58a1a71
.section bb1_62
.LBB1_62:                               @ %if.then3
	ldr	r3, .LCPI1_145
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_63
.LCPI1_145:
	.long	1081813261              @ 0x407b290d
.section bb1_63
.LBB1_63:                               @ %if.then3
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_146
	b	.LBB1_64
.LCPI1_146:
	.long	1382737697              @ 0x526ae721
.section bb1_64
.LBB1_64:                               @ %if.then3
	ldr	r3, .LCPI1_147
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_65
.LCPI1_147:
	.long	1080112396              @ 0x4061350c
.section bb1_65
.LBB1_65:                               @ %if.then3
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_148
	ldr	r3, .LCPI1_149
	b	.LBB1_90
.LCPI1_148:
	.long	3178264199              @ 0xbd707687
.LCPI1_149:
	.long	1077126841              @ 0x4033a6b9
.section bb1_66
.LBB1_66:                               @ %if.else
	ldr	r2, .LCPI1_90
	ldr	r3, .LCPI1_91
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_67
.LCPI1_90:
	.long	2614900799              @ 0x9bdc383f
.LCPI1_91:
	.long	3229497422              @ 0xc07e384e
.section bb1_67
.LBB1_67:                               @ %if.else
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_92
	ldr	r3, .LCPI1_93
	bl	__aeabi_dadd
	b	.LBB1_68
.LCPI1_92:
	.long	1781422482              @ 0x6a2e5992
.LCPI1_93:
	.long	3230663777              @ 0xc0900461
.section bb1_68
.LBB1_68:                               @ %if.else
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_69
.section bb1_69
.LBB1_69:                               @ %if.else
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_94
	ldr	r3, .LCPI1_95
	bl	__aeabi_dadd
	b	.LBB1_70
.LCPI1_94:
	.long	326496808               @ 0x1375f228
.LCPI1_95:
	.long	3229871240              @ 0xc083ec88
.section bb1_70
.LBB1_70:                               @ %if.else
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_71
.section bb1_71
.LBB1_71:                               @ %if.else
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_96
	ldr	r3, .LCPI1_97
	bl	__aeabi_dadd
	b	.LBB1_72
.LCPI1_96:
	.long	1137044888              @ 0x43c5ed98
.LCPI1_97:
	.long	3227784285              @ 0xc064145d
.section bb1_72
.LBB1_72:                               @ %if.else
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_73
.section bb1_73
.LBB1_73:                               @ %if.else
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_98
	ldr	r3, .LCPI1_99
	bl	__aeabi_dadd
	b	.LBB1_74
.LCPI1_98:
	.long	1432328538              @ 0x555f995a
.LCPI1_99:
	.long	3224486409              @ 0xc031c209
.section bb1_74
.LBB1_74:                               @ %if.else
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_75
.section bb1_75
.LBB1_75:                               @ %if.else
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_100
	ldr	r3, .LCPI1_101
	bl	__aeabi_dadd
	b	.LBB1_76
.LCPI1_100:
	.long	1891796446              @ 0x70c285de
.LCPI1_101:
	.long	3219755962              @ 0xbfe993ba
.section bb1_76
.LBB1_76:                               @ %if.else
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_77
.section bb1_77
.LBB1_77:                               @ %if.else
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_102
	ldr	r3, .LCPI1_104
	bl	__aeabi_dadd
	b	.LBB1_78
.LCPI1_102:
	.long	971534154               @ 0x39e86f4a
.LCPI1_104:
	.long	3213112338              @ 0xbf843412
.section bb1_78
.LBB1_78:                               @ %if.else
	ldr	r2, .LCPI1_105
	ldr	r3, .LCPI1_106
	mov	r8, r0
	mov	r9, r1
	b	.LBB1_79
.LCPI1_105:
	.long	1114713442              @ 0x42712d62
.LCPI1_106:
	.long	3224793314              @ 0xc03670e2
.section bb1_79
.LBB1_79:                               @ %if.else
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_107
	b	.LBB1_80
.LCPI1_107:
	.long	3886016355              @ 0xe79fe763
.section bb1_80
.LBB1_80:                               @ %if.else
	ldr	r3, .LCPI1_108
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_81
.LCPI1_108:
	.long	1081976948              @ 0x407da874
.section bb1_81
.LBB1_81:                               @ %if.else
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_109
	b	.LBB1_82
.LCPI1_109:
	.long	3470736358              @ 0xcedf3be6
.section bb1_82
.LBB1_82:                               @ %if.else
	ldr	r3, .LCPI1_110
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_83
.LCPI1_110:
	.long	1084486169              @ 0x40a3f219
.section bb1_83
.LBB1_83:                               @ %if.else
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_111
	b	.LBB1_84
.LCPI1_111:
	.long	1754014826              @ 0x688c246a
.section bb1_84
.LBB1_84:                               @ %if.else
	ldr	r3, .LCPI1_112
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_85
.LCPI1_112:
	.long	1084817335              @ 0x40a8ffb7
.section bb1_85
.LBB1_85:                               @ %if.else
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_113
	b	.LBB1_86
.LCPI1_113:
	.long	412963096               @ 0x189d5118
.section bb1_86
.LBB1_86:                               @ %if.else
	ldr	r3, .LCPI1_114
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_87
.LCPI1_114:
	.long	1083704043              @ 0x409802eb
.section bb1_87
.LBB1_87:                               @ %if.else
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_115
	b	.LBB1_88
.LCPI1_115:
	.long	572235530               @ 0x221b9f0a
.section bb1_88
.LBB1_88:                               @ %if.else
	ldr	r3, .LCPI1_116
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_89
.LCPI1_116:
	.long	1081367726              @ 0x40745cae
.section bb1_89
.LBB1_89:                               @ %if.else
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_117
	ldr	r3, .LCPI1_118
	b	.LBB1_90
.LCPI1_117:
	.long	639455632               @ 0x261d5190
.LCPI1_118:
	.long	1077827211              @ 0x403e568b
.section bb1_90
.LBB1_90:                               @ %if.end59
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB1_91
.section bb1_91
.LBB1_91:                               @ %if.end59
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB1_92
.section bb1_92
.LBB1_92:                               @ %if.end59
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r5, r0
	mov	r6, r1
	b	.LBB1_93
.section bb1_93
.LBB1_93:                               @ %if.end59
	mov	r0, #0
	mov	r1, r11
	mov	r2, r10
	mov	r3, r11
	b	.LBB1_94
.section bb1_94
.LBB1_94:                               @ %if.end59
	bl	__aeabi_dsub
	mov	r7, r0
	mov	r4, r1
	mov	r0, r10
	b	.LBB1_95
.section bb1_95
.LBB1_95:                               @ %if.end59
	mov	r1, r11
	mov	r2, #0
	mov	r3, r11
	bl	__aeabi_dadd
	b	.LBB1_96
.section bb1_96
.LBB1_96:                               @ %if.end59
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r4
	b	.LBB1_97
.section bb1_97
.LBB1_97:                               @ %if.end59
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r7, r1
	mov	r0, r8
	b	.LBB1_98
.section bb1_98
.LBB1_98:                               @ %if.end59
	mov	r1, r9
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	b	.LBB1_99
.section bb1_99
.LBB1_99:                               @ %if.end59
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r7
	b	.LBB1_100
.section bb1_100
.LBB1_100:                              @ %if.end59
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r5, r1
	mov	r0, #0
	b	.LBB1_101
.section bb1_101
.LBB1_101:                              @ %if.end59
	mov	r1, r11
	mov	r2, #0
	mov	r3, r11
	bl	__aeabi_dmul
	b	.LBB1_102
.section bb1_102
.LBB1_102:                              @ %if.end59
	mov	r3, r1
	mov	r1, #14811136
	mov	r2, r0
	mov	r0, #0
	b	.LBB1_103
.section bb1_103
.LBB1_103:                              @ %if.end59
	orr	r1, r1, #-1090519040
	bl	__aeabi_dsub
	bl	exp
	mov	r6, r0
	b	.LBB1_104
.section bb1_104
.LBB1_104:                              @ %if.end59
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	bl	exp
	b	.LBB1_105
.section bb1_105
.LBB1_105:                              @ %if.end59
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB1_106
.section bb1_106
.LBB1_106:                              @ %if.end59
	bl	__aeabi_dmul
	mov	r2, r10
	mov	r3, r11
	bl	__aeabi_ddiv
	b	.LBB1_107
.section bb1_107
.LBB1_107:                              @ %return
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	erfc2, .Ltmp1-erfc2
	.cantunwind
	.fnend

	.globl	erfc
	.align	2
	.type	erfc,%function
.section bb2_0
erfc:                                   @ @erfc
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	mov	r0, #267386880
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	lsr	r7, r4, #31
	bic	r6, r4, #-2147483648
	orr	r0, r0, #1879048192
	cmp	r6, r0
	blo	.LBB2_8
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %if.then
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %if.then
	orr	r1, r1, #805306368
	bl	__aeabi_ddiv
	mov	r4, r0
	add	r0, r7, r7
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %if.then
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB2_47
.section bb2_8
.LBB2_8:                                @ %if.end
	ldr	r0, .LCPI2_0
	cmp	r6, r0
	bhi	.LBB2_11
	b	.LBB2_9
.LCPI2_0:
	.long	1072365567              @ 0x3feaffff
.section bb2_9
.LBB2_9:                                @ %if.then6
	ldr	r0, .LCPI2_25
	cmp	r6, r0
	bhi	.LBB2_15
	b	.LBB2_10
.LCPI2_25:
	.long	1013972991              @ 0x3c6fffff
.section bb2_10
.LBB2_10:                               @ %if.then9
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	orr	r1, r1, #805306368
	bl	__aeabi_dsub
	b	.LBB2_47
.section bb2_11
.LBB2_11:                               @ %if.end42
	ldr	r0, .LCPI2_24
	cmp	r6, r0
	bhi	.LBB2_43
	b	.LBB2_12
.LCPI2_24:
	.long	1077673983              @ 0x403bffff
.section bb2_12
.LBB2_12:                               @ %if.then45
	mov	r0, r6
	mov	r2, r5
	mov	r3, r4
	bl	erfc2
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.then45
	mov	r4, r0
	mov	r5, r1
	mov	r0, #0
	mov	r1, #1073741824
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.then45
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	cmp	r7, #0
	moveq	r1, r5
	moveq	r0, r4
	b	.LBB2_47
.section bb2_15
.LBB2_15:                               @ %if.end10
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB2_16
.section bb2_16
.LBB2_16:                               @ %if.end10
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_26
	ldr	r3, .LCPI2_27
	mov	r11, r0
	b	.LBB2_17
.LCPI2_26:
	.long	301995692               @ 0x120016ac
.LCPI2_27:
	.long	3203984086              @ 0xbef8ead6
.section bb2_17
.LBB2_17:                               @ %if.end10
	mov	r8, r1
                                        @ kill: R0<def> R11<kill>
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dmul
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %if.end10
	ldr	r2, .LCPI2_28
	ldr	r3, .LCPI2_29
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_19
.LCPI2_28:
	.long	593914084               @ 0x236668e4
.LCPI2_29:
	.long	3212288657              @ 0xbf77a291
.section bb2_19
.LBB2_19:                               @ %if.end10
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB2_20
.section bb2_20
.LBB2_20:                               @ %if.end10
	ldr	r2, .LCPI2_30
	ldr	r3, .LCPI2_31
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_21
.LCPI2_30:
	.long	3688307023              @ 0xdbd7194f
.LCPI2_31:
	.long	3214748241              @ 0xbf9d2a51
.section bb2_21
.LBB2_21:                               @ %if.end10
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB2_22
.section bb2_22
.LBB2_22:                               @ %if.end10
	ldr	r2, .LCPI2_32
	ldr	r3, .LCPI2_33
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB2_23
.LCPI2_32:
	.long	1763490067              @ 0x691cb913
.LCPI2_33:
	.long	3218394493              @ 0xbfd4cd7d
.section bb2_23
.LBB2_23:                               @ %if.end10
	mov	r3, r1
	mov	r0, r11
	mov	r1, r8
	bl	__aeabi_dmul
	b	.LBB2_24
.section bb2_24
.LBB2_24:                               @ %if.end10
	ldr	r2, .LCPI2_34
	ldr	r3, .LCPI2_35
	bl	__aeabi_dadd
	ldr	r2, .LCPI2_36
	b	.LBB2_25
.LCPI2_34:
	.long	2182404968              @ 0x8214db68
.LCPI2_35:
	.long	1069575866              @ 0x3fc06eba
.LCPI2_36:
	.long	1117937952              @ 0x42a26120
.section bb2_25
.LBB2_25:                               @ %if.end10
	ldr	r3, .LCPI2_37
	mov	r9, r0
	mov	r10, r1
	mov	r0, r11
	b	.LBB2_26
.LCPI2_37:
	.long	3201342531              @ 0xbed09c43
.section bb2_26
.LBB2_26:                               @ %if.end10
	mov	r1, r8
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_38
	ldr	r3, .LCPI2_39
	b	.LBB2_27
.LCPI2_38:
	.long	572267024               @ 0x221c1a10
.LCPI2_39:
	.long	1059151305              @ 0x3f215dc9
.section bb2_27
.LBB2_27:                               @ %if.end10
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	b	.LBB2_28
.section bb2_28
.LBB2_28:                               @ %if.end10
	mov	r1, r8
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_40
	ldr	r3, .LCPI2_41
	b	.LBB2_29
.LCPI2_40:
	.long	3302189839              @ 0xc4d36b0f
.LCPI2_41:
	.long	1064620066              @ 0x3f74d022
.section bb2_29
.LBB2_29:                               @ %if.end10
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	b	.LBB2_30
.section bb2_30
.LBB2_30:                               @ %if.end10
	mov	r1, r8
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_42
	ldr	r3, .LCPI2_43
	b	.LBB2_31
.LCPI2_42:
	.long	1429655226              @ 0x5536ceba
.LCPI2_43:
	.long	1068541260              @ 0x3fb0a54c
.section bb2_31
.LBB2_31:                               @ %if.end10
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	b	.LBB2_32
.section bb2_32
.LBB2_32:                               @ %if.end10
	mov	r1, r8
	bl	__aeabi_dmul
	ldr	r2, .LCPI2_44
	ldr	r3, .LCPI2_45
	b	.LBB2_33
.LCPI2_44:
	.long	3453672457              @ 0xcddadc09
.LCPI2_45:
	.long	1071216505              @ 0x3fd97779
.section bb2_33
.LBB2_33:                               @ %if.end10
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	b	.LBB2_34
.section bb2_34
.LBB2_34:                               @ %if.end10
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB2_35
.section bb2_35
.LBB2_35:                               @ %if.end10
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB2_36
.section bb2_36
.LBB2_36:                               @ %if.end10
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_ddiv
	mov	r10, r0
	mov	r8, r1
	cmp	r7, #0
	bne	.LBB2_44
	b	.LBB2_37
.section bb2_37
.LBB2_37:                               @ %if.end10
	ldr	r0, .LCPI2_46
	cmp	r6, r0
	bls	.LBB2_44
	b	.LBB2_38
.LCPI2_46:
	.long	1070596095              @ 0x3fcfffff
.section bb2_38
.LBB2_38:                               @ %if.end37
	mov	r3, #266338304
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB2_39
.section bb2_39
.LBB2_39:                               @ %if.end37
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	mov	r6, r0
	mov	r9, r1
	b	.LBB2_40
.section bb2_40
.LBB2_40:                               @ %if.end37
	mov	r0, r10
	mov	r1, r8
	mov	r2, r5
	mov	r3, r4
	b	.LBB2_41
.section bb2_41
.LBB2_41:                               @ %if.end37
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB2_42
.section bb2_42
.LBB2_42:                               @ %if.end37
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r3, r1
	mov	r2, r0
	mov	r1, #266338304
	b	.LBB2_46
.section bb2_43
.LBB2_43:                               @ %if.end49
	cmp	r7, #0
	mov	r0, #0
	movne	r7, #1073741824
	mov	r1, r7
	b	.LBB2_47
.section bb2_44
.LBB2_44:                               @ %if.then33
	mov	r0, r10
	mov	r1, r8
	mov	r2, r5
	mov	r3, r4
	b	.LBB2_45
.section bb2_45
.LBB2_45:                               @ %if.then33
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r1
	mov	r2, r0
	mov	r1, #267386880
	b	.LBB2_46
.section bb2_46
.LBB2_46:                               @ %return
	orr	r1, r1, #805306368
	mov	r0, #0
	bl	__aeabi_dsub
	b	.LBB2_47
.section bb2_47
.LBB2_47:                               @ %return
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	erfc, .Ltmp2-erfc
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
