.section cbrt_text
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
	.file	"src/math/cbrt.bc"
	.globl	cbrt
	.align	2
	.type	cbrt,%function
.section bb0_0
cbrt:                                   @ @cbrt
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
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r1, #267386880
	mov	r5, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	bic	r0, r4, #-2147483648
	orr	r1, r1, #1879048192
	cmp	r0, r1
	blo	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_39
.section bb0_6
.LBB0_6:                                @ %if.end
	mov	r1, #0
	cmp	r1, r0, lsr #20
	bne	.LBB0_10
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then4
	mov	r3, #55574528
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then4
	orr	r3, r3, #1073741824
	bl	__aeabi_dmul
	bic	r0, r1, #-2147483648
	cmp	r0, #0
	beq	.LBB0_40
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end13
	ldr	r2, .LCPI0_12
	umull	r3, r7, r0, r2
	ldr	r0, .LCPI0_15
	add	r0, r0, r7, lsr #1
	b	.LBB0_11
.LCPI0_12:
	.long	2863311531              @ 0xaaaaaaab
.LCPI0_15:
	.long	696219795               @ 0x297f7893
.section bb0_10
.LBB0_10:                               @ %if.else
	ldr	r1, .LCPI0_13
	umull	r2, r3, r0, r1
	ldr	r0, .LCPI0_14
	mov	r1, r4
	add	r0, r0, r3, lsr #1
	b	.LBB0_11
.LCPI0_13:
	.long	2863311531              @ 0xaaaaaaab
.LCPI0_14:
	.long	715094163               @ 0x2a9f7893
.section bb0_11
.LBB0_11:                               @ %if.end17
	and	r1, r1, #-2147483648
	mov	r2, #0
	orr	r8, r0, r1
	mov	r0, #0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end17
	mov	r1, r8
	mov	r3, r8
	bl	__aeabi_dmul
	mov	r6, r0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end17
	mov	r7, r1
	mov	r0, #0
	mov	r1, r8
	mov	r2, r5
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end17
	mov	r3, r4
	bl	__aeabi_ddiv
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end17
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_16
	ldr	r3, .LCPI0_17
	mov	r7, r0
	b	.LBB0_16
.LCPI0_16:
	.long	1246353090              @ 0x4a49d6c2
.LCPI0_17:
	.long	1073344864              @ 0x3ff9f160
.section bb0_16
.LBB0_16:                               @ %if.end17
	mov	r6, r1
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dmul
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end17
	ldr	r2, .LCPI0_18
	ldr	r3, .LCPI0_19
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_18
.LCPI0_18:
	.long	2465211424              @ 0x92f02420
.LCPI0_19:
	.long	3221104864              @ 0xbffe28e0
.section bb0_18
.LBB0_18:                               @ %if.end17
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dmul
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end17
	ldr	r2, .LCPI0_20
	ldr	r3, .LCPI0_21
	bl	__aeabi_dadd
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB0_20
.LCPI0_20:
	.long	258074258               @ 0xf61e692
.LCPI0_21:
	.long	1073611750              @ 0x3ffe03e6
.section bb0_20
.LBB0_20:                               @ %if.end17
	mov	r10, r1
	mov	r0, r7
	mov	r1, r6
	mov	r2, r7
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end17
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end17
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_22
	b	.LBB0_23
.LCPI0_22:
	.long	3571772887              @ 0xd4e4edd7
.section bb0_23
.LBB0_23:                               @ %if.end17
	mov	r3, #176128
	mov	r11, r0
	mov	r9, r1
	mov	r0, r7
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end17
	mov	r1, r6
	orr	r3, r3, #1069547520
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_23
	b	.LBB0_25
.LCPI0_23:
	.long	3202830809              @ 0xbee751d9
.section bb0_25
.LBB0_25:                               @ %if.end17
	ldr	r3, .LCPI0_24
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_26
.LCPI0_24:
	.long	3219670219              @ 0xbfe844cb
.section bb0_26
.LBB0_26:                               @ %if.end17
	mov	r0, r11
	mov	r1, r9
	bl	__aeabi_dmul
	ldr	r2, [sp]                @ 4-byte Reload
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end17
	mov	r3, r10
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end17
	mov	r0, #0
	mov	r1, r8
	bl	__aeabi_dmul
	adds	r0, r0, #-2147483648
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end17
	adc	r6, r1, #0
	and	r7, r0, #-1073741824
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end17
	mov	r2, r7
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end17
	mov	r3, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_ddiv
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end17
	mov	r4, r0
	mov	r5, r1
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end17
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dsub
	mov	r8, r0
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end17
	mov	r9, r1
	mov	r0, r7
	mov	r1, r6
	mov	r2, r7
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end17
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end17
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end17
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_ddiv
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end17
	mov	r2, r7
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %return
	bl	__aeabi_dadd
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %return
	mov	r0, r5
	mov	r1, r4
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	cbrt, .Ltmp0-cbrt
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
