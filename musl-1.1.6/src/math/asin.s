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
	.file	"src/math/asin.bc"
	.globl	asin
	.align	2
	.type	asin,%function
asin:                                   @ @asin
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
	mov	r4, r1
	mov	r5, r0
	mov	r0, #267386880
	b	.LBB0_4
.LBB0_4:                                @ %entry
	bic	r6, r4, #-2147483648
	orr	r0, r0, #805306368
	cmp	r6, r0
	blo	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %do.body2
	add	r0, r6, #1048576
	add	r0, r0, #-1073741824
	orrs	r0, r0, r5
	beq	.LBB0_24
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, #0
	bl	__aeabi_ddiv
	b	.LBB0_27
.LBB0_8:                                @ %if.end12
	ldr	r0, .LCPI0_8
	cmp	r6, r0
	bhi	.LBB0_12
	b	.LBB0_9
.LCPI0_8:
	.long	1071644671              @ 0x3fdfffff
.LBB0_9:                                @ %if.then15
	sub	r0, r6, #1048576
	cmp	r0, #1044381696
	blo	.LBB0_28
	b	.LBB0_10
.LBB0_10:                               @ %if.end21
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_11
.LBB0_11:                               @ %if.end21
	bl	__aeabi_dmul
	bl	R
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_26
.LBB0_12:                               @ %if.end25
	mov	r0, r5
	mov	r1, r4
	bl	fabs
	mov	r3, r1
	b	.LBB0_13
.LBB0_13:                               @ %if.end25
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #805306368
	b	.LBB0_14
.LBB0_14:                               @ %if.end25
	bl	__aeabi_dsub
	mov	r3, #266338304
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_15
.LBB0_15:                               @ %if.end25
	bl	__aeabi_dmul
	mov	r7, r0
	mov	r5, r1
                                        @ kill: R0<def> R7<kill>
	b	.LBB0_16
.LBB0_16:                               @ %if.end25
                                        @ kill: R1<def> R5<kill>
	bl	sqrt
	mov	r10, r0
	mov	r11, r1
	b	.LBB0_17
.LBB0_17:                               @ %if.end25
	mov	r0, r7
	mov	r1, r5
	bl	R
	mov	r9, r0
	b	.LBB0_18
.LBB0_18:                               @ %if.end25
	ldr	r0, .LCPI0_9
	mov	r8, r1
	cmp	r6, r0
	blo	.LBB0_29
	b	.LBB0_19
.LCPI0_9:
	.long	1072640819              @ 0x3fef3333
.LBB0_19:                               @ %if.then33
	mov	r0, r10
	mov	r1, r11
	mov	r2, r9
	mov	r3, r8
	b	.LBB0_20
.LBB0_20:                               @ %if.then33
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	b	.LBB0_21
.LBB0_21:                               @ %if.then33
	mov	r1, r11
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_22
.LBB0_22:                               @ %if.then33
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_10
	ldr	r3, .LCPI0_17
	bl	__aeabi_dadd
	b	.LBB0_23
.LCPI0_10:
	.long	856972295               @ 0x33145c07
.LCPI0_17:
	.long	3163661862              @ 0xbc91a626
.LBB0_23:                               @ %if.then33
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .LCPI0_13
	ldr	r1, .LCPI0_18
	b	.LBB0_47
.LCPI0_13:
	.long	1413754136              @ 0x54442d18
.LCPI0_18:
	.long	1073291771              @ 0x3ff921fb
.LBB0_24:                               @ %if.then10
	ldr	r2, .LCPI0_14
	ldr	r3, .LCPI0_19
	mov	r0, r5
	mov	r1, r4
	b	.LBB0_25
.LCPI0_14:
	.long	1413754136              @ 0x54442d18
.LCPI0_19:
	.long	1073291771              @ 0x3ff921fb
.LBB0_25:                               @ %if.then10
	bl	__aeabi_dmul
	mov	r3, #141557760
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_26
.LBB0_26:                               @ %return
	bl	__aeabi_dadd
	b	.LBB0_27
.LBB0_27:                               @ %return
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_28
.LBB0_28:                               @ %return
	mov	r0, r5
	mov	r1, r4
	b	.LBB0_49
.LBB0_29:                               @ %if.else
	mov	r0, #0
	mov	r1, r11
	mov	r2, #0
	mov	r3, r11
	b	.LBB0_30
.LBB0_30:                               @ %if.else
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	b	.LBB0_31
.LBB0_31:                               @ %if.else
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_32
.LBB0_32:                               @ %if.else
	mov	r0, r10
	mov	r1, r11
	mov	r2, #0
	mov	r3, r11
	b	.LBB0_33
.LBB0_33:                               @ %if.else
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	b	.LBB0_34
.LBB0_34:                               @ %if.else
	mov	r1, r7
	bl	__aeabi_ddiv
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_35
.LBB0_35:                               @ %if.else
	mov	r0, r10
	mov	r1, r11
	mov	r2, r10
	mov	r3, r11
	b	.LBB0_36
.LBB0_36:                               @ %if.else
	bl	__aeabi_dadd
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_dmul
	b	.LBB0_37
.LBB0_37:                               @ %if.else
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_38
.LBB0_38:                               @ %if.else
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_39
.LBB0_39:                               @ %if.else
	mov	r3, r1
	ldr	r0, .LCPI0_11
	ldr	r1, .LCPI0_12
	bl	__aeabi_dsub
	b	.LBB0_40
.LCPI0_11:
	.long	856972295               @ 0x33145c07
.LCPI0_12:
	.long	1016178214              @ 0x3c91a626
.LBB0_40:                               @ %if.else
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	b	.LBB0_41
.LBB0_41:                               @ %if.else
	bl	__aeabi_dsub
	mov	r8, r0
	mov	r7, r1
	mov	r0, #0
	b	.LBB0_42
.LBB0_42:                               @ %if.else
	mov	r1, r11
	mov	r2, #0
	mov	r3, r11
	bl	__aeabi_dadd
	b	.LBB0_43
.LBB0_43:                               @ %if.else
	ldr	r5, .LCPI0_15
	ldr	r6, .LCPI0_16
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_44
.LCPI0_15:
	.long	1413754136              @ 0x54442d18
.LCPI0_16:
	.long	1072243195              @ 0x3fe921fb
.LBB0_44:                               @ %if.else
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dsub
	mov	r2, r0
	b	.LBB0_45
.LBB0_45:                               @ %if.else
	mov	r3, r1
	mov	r0, r8
	mov	r1, r7
	bl	__aeabi_dsub
	b	.LBB0_46
.LBB0_46:                               @ %if.else
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_47
.LBB0_47:                               @ %if.end61
	bl	__aeabi_dsub
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0
	b	.LBB0_48
.LBB0_48:                               @ %if.end61
	mov	r1, #-2147483648
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dsub
	cmp	r4, #0
	movge	r0, r5
	movge	r1, r6
	b	.LBB0_49
.LBB0_49:                               @ %return
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	asin, .Ltmp0-asin
	.cantunwind
	.fnend

	.align	2
	.type	R,%function
R:                                      @ @R
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
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
.LBB1_3:                                @ %entry
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_21
	b	.LBB1_4
.LCPI1_21:
	.long	1963045512              @ 0x7501b288
.LBB1_4:                                @ %entry
	ldr	r3, .LCPI1_22
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	b	.LBB1_5
.LCPI1_22:
	.long	1061810144              @ 0x3f49efe0
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
.LBB1_6:                                @ %entry
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_25
	b	.LBB1_7
.LCPI1_25:
	.long	243811413               @ 0xe884455
.LBB1_7:                                @ %entry
	ldr	r3, .LCPI1_26
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	b	.LBB1_8
.LCPI1_26:
	.long	1070186837              @ 0x3fc9c155
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
.LBB1_9:                                @ %entry
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	ldr	r2, .LCPI1_29
	b	.LBB1_10
.LCPI1_29:
	.long	1431655765              @ 0x55555555
.LBB1_10:                               @ %entry
	ldr	r3, .LCPI1_30
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	b	.LBB1_11
.LCPI1_30:
	.long	1069897045              @ 0x3fc55555
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
.LBB1_12:                               @ %entry
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB1_13
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
.LBB1_15:                               @ %entry
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB1_16
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
.LBB1_17:                               @ %entry
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, #267386880
	mov	r2, #0
	b	.LBB1_18
.LBB1_18:                               @ %entry
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB1_19
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
