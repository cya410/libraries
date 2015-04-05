.section acos_text
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
	.file	"src/math/acos.bc"
	.globl	acos
	.align	2
	.type	acos,%function
.section bb0_0
acos:                                   @ @acos
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
	mov	r5, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r0, #267386880
	bic	r2, r4, #-2147483648
	orr	r0, r0, #805306368
	cmp	r2, r0
	blo	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %do.body2
	add	r0, r2, #1048576
	add	r0, r0, #-1073741824
	orrs	r0, r0, r5
	beq	.LBB0_30
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end13
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end13
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #0
	bl	__aeabi_ddiv
	b	.LBB0_41
.section bb0_7
.LBB0_7:                                @ %if.end15
	ldr	r0, .LCPI0_8
	cmp	r2, r0
	bhi	.LBB0_15
	b	.LBB0_8
.LCPI0_8:
	.long	1071644671              @ 0x3fdfffff
.section bb0_8
.LBB0_8:                                @ %if.then18
	ldr	r1, .LCPI0_16
	ldr	r0, .LCPI0_12
	ldr	r3, .LCPI0_19
	cmp	r2, r3
	blo	.LBB0_41
	b	.LBB0_9
.LCPI0_12:
	.long	1413754136              @ 0x54442d18
.LCPI0_16:
	.long	1073291771              @ 0x3ff921fb
.LCPI0_19:
	.long	1012924417              @ 0x3c600001
.section bb0_9
.LBB0_9:                                @ %if.end22
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end22
	bl	__aeabi_dmul
	bl	R
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end22
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .LCPI0_9
	b	.LBB0_12
.LCPI0_9:
	.long	856972295               @ 0x33145c07
.section bb0_12
.LBB0_12:                               @ %if.end22
	ldr	r1, .LCPI0_20
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_13
.LCPI0_20:
	.long	1016178214              @ 0x3c91a626
.section bb0_13
.LBB0_13:                               @ %if.end22
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end22
	mov	r3, r1
	ldr	r0, .LCPI0_13
	ldr	r1, .LCPI0_17
	bl	__aeabi_dsub
	b	.LBB0_41
.LCPI0_13:
	.long	1413754136              @ 0x54442d18
.LCPI0_17:
	.long	1073291771              @ 0x3ff921fb
.section bb0_15
.LBB0_15:                               @ %if.end27
	cmp	r4, #0
	blt	.LBB0_31
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end39
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end39
	orr	r1, r1, #805306368
	bl	__aeabi_dsub
	mov	r3, #266338304
	mov	r2, #0
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end39
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end39
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R6<kill>
	bl	sqrt
	mov	r4, r1
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end39
	mov	r8, r0
	mov	r0, #0
	mov	r2, #0
	mov	r3, r4
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end39
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end39
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dsub
	mov	r7, r0
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end39
	mov	r9, r1
	mov	r0, r8
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end39
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end39
	mov	r0, r7
	mov	r1, r9
	bl	__aeabi_ddiv
	mov	r7, r0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end39
	mov	r9, r1
	mov	r0, r5
	mov	r1, r6
	bl	R
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end39
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r4
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end39
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end39
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, r4
	bl	__aeabi_dadd
	b	.LBB0_40
.section bb0_30
.LBB0_30:                               @ %if.then10
	ldr	r0, .LCPI0_21
	and	r1, r0, r4, asr #31
	ldr	r0, .LCPI0_14
	and	r0, r0, r4, asr #31
	b	.LBB0_41
.LCPI0_14:
	.long	1413754136              @ 0x54442d18
.LCPI0_21:
	.long	1074340347              @ 0x400921fb
.section bb0_31
.LBB0_31:                               @ %if.then30
	mov	r3, #267386880
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.then30
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r2, #0
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.then30
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.then30
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	sqrt
	mov	r6, r0
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.then30
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	bl	R
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.then30
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.then30
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_10
	ldr	r3, .LCPI0_11
	bl	__aeabi_dadd
	b	.LBB0_38
.LCPI0_10:
	.long	856972295               @ 0x33145c07
.LCPI0_11:
	.long	3163661862              @ 0xbc91a626
.section bb0_38
.LBB0_38:                               @ %if.then30
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.then30
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .LCPI0_15
	ldr	r1, .LCPI0_18
	bl	__aeabi_dsub
	b	.LBB0_40
.LCPI0_15:
	.long	1413754136              @ 0x54442d18
.LCPI0_18:
	.long	1073291771              @ 0x3ff921fb
.section bb0_40
.LBB0_40:                               @ %return
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	acos, .Ltmp0-acos
	.cantunwind
	.fnend

	.align	2
	.type	R,%function
.section bb1_0
R:                                      @ @R
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	ldr	r2, .LCPI1_0
	ldr	r3, .LCPI1_20
	mov	r4, r1
	mov	r5, r0
	b	.LBB1_3
.LCPI1_0:
	.long	234747657               @ 0xdfdf709
.LCPI1_20:
	.long	1057111521              @ 0x3f023de1
.section bb1_3
.LBB1_3:                                @ %entry
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_21
	b	.LBB1_4
.LCPI1_21:
	.long	1963045512              @ 0x7501b288
.section bb1_4
.LBB1_4:                                @ %entry
	ldr	r3, .LCPI1_22
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	b	.LBB1_5
.LCPI1_22:
	.long	1061810144              @ 0x3f49efe0
.section bb1_5
.LBB1_5:                                @ %entry
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_23
	ldr	r3, .LCPI1_24
	bl	__aeabi_dadd
	b	.LBB1_6
.LCPI1_23:
	.long	3043528507              @ 0xb5688f3b
.LCPI1_24:
	.long	3215229480              @ 0xbfa48228
.section bb1_6
.LBB1_6:                                @ %entry
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_25
	b	.LBB1_7
.LCPI1_25:
	.long	243811413               @ 0xe884455
.section bb1_7
.LBB1_7:                                @ %entry
	ldr	r3, .LCPI1_26
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	b	.LBB1_8
.LCPI1_26:
	.long	1070186837              @ 0x3fc9c155
.section bb1_8
.LBB1_8:                                @ %entry
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_27
	ldr	r3, .LCPI1_28
	bl	__aeabi_dadd
	b	.LBB1_9
.LCPI1_27:
	.long	65761149                @ 0x3eb6f7d
.LCPI1_28:
	.long	3218396690              @ 0xbfd4d612
.section bb1_9
.LBB1_9:                                @ %entry
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_29
	b	.LBB1_10
.LCPI1_29:
	.long	1431655765              @ 0x55555555
.section bb1_10
.LBB1_10:                               @ %entry
	ldr	r3, .LCPI1_30
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	b	.LBB1_11
.LCPI1_30:
	.long	1069897045              @ 0x3fc55555
.section bb1_11
.LBB1_11:                               @ %entry
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_31
	ldr	r3, .LCPI1_32
	mov	r6, r0
	b	.LBB1_12
.LCPI1_31:
	.long	2972619394              @ 0xb12e9282
.LCPI1_32:
	.long	1068742853              @ 0x3fb3b8c5
.section bb1_12
.LBB1_12:                               @ %entry
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @ %entry
	ldr	r2, .LCPI1_33
	ldr	r3, .LCPI1_34
	bl	__aeabi_dadd
	mov	r2, r5
	b	.LBB1_14
.LCPI1_33:
	.long	462225753               @ 0x1b8d0159
.LCPI1_34:
	.long	3219523180              @ 0xbfe6066c
.section bb1_14
.LBB1_14:                               @ %entry
	mov	r3, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_35
	ldr	r3, .LCPI1_36
	b	.LBB1_15
.LCPI1_35:
	.long	2623113928              @ 0x9c598ac8
.LCPI1_36:
	.long	1073752805              @ 0x40002ae5
.section bb1_15
.LBB1_15:                               @ %entry
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %entry
	ldr	r2, .LCPI1_37
	ldr	r3, .LCPI1_38
	bl	__aeabi_dadd
	mov	r2, r5
	b	.LBB1_17
.LCPI1_37:
	.long	478817611               @ 0x1c8a2d4b
.LCPI1_38:
	.long	3221436967              @ 0xc0033a27
.section bb1_17
.LBB1_17:                               @ %entry
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %entry
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %entry
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	R, .Ltmp1-R
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
