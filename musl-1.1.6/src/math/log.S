.section log_text
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
	.file	"src/math/log.bc"
	.globl	log
	.align	2
	.type	log,%function
.section bb0_0
log:                                    @ @log
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
	.pad	#20
	sub	sp, sp, #20
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r3, r1
	mov	r2, r0
                                        @ kill: R1<def> R3<kill>
                                        @ kill: R0<def> R2<kill>
	cmp	r3, #0
	blt	.LBB0_8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r7, #0
	cmp	r7, r3, lsr #20
	beq	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.else
	ldr	r7, .LCPI0_23
	cmp	r3, r7
	bhi	.LBB0_53
	b	.LBB0_6
.LCPI0_23:
	.long	2146435071              @ 0x7fefffff
.section bb0_6
.LBB0_6:                                @ %if.else22
	ldr	r7, .LCPI0_24
	cmp	r2, #0
	bne	.LBB0_11
	b	.LBB0_7
.LCPI0_24:
	.long	4294966273              @ 0xfffffc01
.section bb0_7
.LBB0_7:                                @ %if.else22
	mov	r1, #267386880
	mov	r0, #0
	orr	r1, r1, #805306368
	cmp	r3, r1
	mov	r1, #0
	beq	.LBB0_53
	b	.LBB0_11
.section bb0_8
.LBB0_8:                                @ %if.then
	bic	r7, r3, #-2147483648
	orrs	r2, r2, r7
	beq	.LBB0_50
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end
	cmp	r3, #0
	blt	.LBB0_52
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end12
	mov	r3, #55574528
	mov	r2, #0
	orr	r3, r3, #1073741824
	bl	__aeabi_dmul
	ldr	r7, .LCPI0_25
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_11
.LCPI0_25:
	.long	4294966219              @ 0xfffffbcb
.section bb0_11
.LBB0_11:                               @ %if.end32
	str	r7, [sp, #12]           @ 4-byte Spill
	ldr	r0, .LCPI0_26
	add	r1, r3, r0
	mov	r3, #267386880
	b	.LBB0_12
.LCPI0_26:
	.long	614242                  @ 0x95f62
.section bb0_12
.LBB0_12:                               @ %if.end32
	str	r1, [sp, #16]           @ 4-byte Spill
	ldr	r0, .LCPI0_27
	orr	r3, r3, #-1342177280
	and	r0, r1, r0
	b	.LBB0_13
.LCPI0_27:
	.long	1048575                 @ 0xfffff
.section bb0_13
.LBB0_13:                               @ %if.end32
	ldr	r1, .LCPI0_28
	add	r1, r0, r1
	mov	r0, r2
	mov	r2, #0
	b	.LBB0_14
.LCPI0_28:
	.long	1072079006              @ 0x3fe6a09e
.section bb0_14
.LBB0_14:                               @ %if.end32
	bl	__aeabi_dadd
	mov	r10, r0
	mov	r11, r1
	mov	r2, #0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end32
	mov	r3, #1073741824
                                        @ kill: R0<def> R10<kill>
                                        @ kill: R1<def> R11<kill>
	bl	__aeabi_dadd
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end32
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end32
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end32
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	__aeabi_dmul
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end32
	mov	r2, r6
	mov	r3, r7
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end32
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_29
	ldr	r3, .LCPI0_30
	mov	r4, r0
	b	.LBB0_21
.LCPI0_29:
	.long	3497576095              @ 0xd078c69f
.LCPI0_30:
	.long	1069783561              @ 0x3fc39a09
.section bb0_21
.LBB0_21:                               @ %if.end32
	mov	r5, r1
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dmul
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end32
	ldr	r2, .LCPI0_31
	ldr	r3, .LCPI0_32
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_23
.LCPI0_31:
	.long	495876271               @ 0x1d8e78af
.LCPI0_32:
	.long	1070363077              @ 0x3fcc71c5
.section bb0_23
.LBB0_23:                               @ %if.end32
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end32
	ldr	r2, .LCPI0_33
	ldr	r3, .LCPI0_34
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_25
.LCPI0_33:
	.long	2576873988              @ 0x9997fa04
.LCPI0_34:
	.long	1071225241              @ 0x3fd99999
.section bb0_25
.LBB0_25:                               @ %if.end32
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end32
	ldr	r2, .LCPI0_35
	ldr	r3, .LCPI0_36
	mov	r8, r0
	mov	r9, r1
	b	.LBB0_27
.LCPI0_35:
	.long	3745403460              @ 0xdf3e5244
.LCPI0_36:
	.long	1069740306              @ 0x3fc2f112
.section bb0_27
.LBB0_27:                               @ %if.end32
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_37
	b	.LBB0_28
.LCPI0_37:
	.long	2529887198              @ 0x96cb03de
.section bb0_28
.LBB0_28:                               @ %if.end32
	ldr	r3, .LCPI0_38
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_29
.LCPI0_38:
	.long	1070024292              @ 0x3fc74664
.section bb0_29
.LBB0_29:                               @ %if.end32
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_39
	b	.LBB0_30
.LCPI0_39:
	.long	2485293913              @ 0x94229359
.section bb0_30
.LBB0_30:                               @ %if.end32
	ldr	r3, .LCPI0_40
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_31
.LCPI0_40:
	.long	1070745892              @ 0x3fd24924
.section bb0_31
.LBB0_31:                               @ %if.end32
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_41
	b	.LBB0_32
.LCPI0_41:
	.long	1431655827              @ 0x55555593
.section bb0_32
.LBB0_32:                               @ %if.end32
	ldr	r3, .LCPI0_42
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_33
.LCPI0_42:
	.long	1071994197              @ 0x3fe55555
.section bb0_33
.LBB0_33:                               @ %if.end32
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end32
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end32
	mov	r3, #266338304
	mov	r6, r0
	mov	r7, r1
	mov	r0, r10
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end32
	mov	r1, r11
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end32
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end32
	bl	__aeabi_dmul
	mov	r8, r0
	mov	r9, r1
	mov	r2, r6
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end32
	mov	r3, r7
                                        @ kill: R0<def> R8<kill>
                                        @ kill: R1<def> R9<kill>
	bl	__aeabi_dadd
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.end32
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end32
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end32
	ldr	r1, [sp, #12]           @ 4-byte Reload
	add	r0, r1, r0, lsr #20
	bl	__aeabi_i2d
	ldr	r2, .LCPI0_43
	b	.LBB0_43
.LCPI0_43:
	.long	897137782               @ 0x35793c76
.section bb0_43
.LBB0_43:                               @ %if.end32
	ldr	r3, .LCPI0_44
	mov	r6, r0
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
	b	.LBB0_44
.LCPI0_44:
	.long	1038760431              @ 0x3dea39ef
.section bb0_44
.LBB0_44:                               @ %if.end32
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.end32
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	b	.LBB0_46
.section bb0_46
.LBB0_46:                               @ %if.end32
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.end32
	bl	__aeabi_dadd
	ldr	r3, .LCPI0_45
	mov	r2, #249561088
	mov	r4, r0
	b	.LBB0_48
.LCPI0_45:
	.long	1072049730              @ 0x3fe62e42
.section bb0_48
.LBB0_48:                               @ %if.end32
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	orr	r2, r2, #-268435456
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.end32
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_53
.section bb0_50
.LBB0_50:                               @ %if.then7
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	mov	r3, r1
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %if.then7
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #-1342177280
	bl	__aeabi_ddiv
	b	.LBB0_53
.section bb0_52
.LBB0_52:                               @ %if.then10
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dsub
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_ddiv
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %return
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	log, .Ltmp0-log
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
