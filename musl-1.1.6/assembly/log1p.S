.section log1p_text
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
	.file	"src/math/log1p.bc"
	.globl	log1p
	.align	2
	.type	log1p,%function
.section bb0_0
log1p:                                  @ @log1p
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
	mov	r4, r1
	mov	r8, r0
	cmp	r4, #0
	blt	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r0, .LCPI0_25
	cmp	r4, r0
	bls	.LBB0_6
	b	.LBB0_5
.LCPI0_25:
	.long	1071284857              @ 0x3fda8279
.section bb0_5
.LBB0_5:                                @ %if.else
	ldr	r0, .LCPI0_26
	cmp	r4, r0
	bls	.LBB0_17
	b	.LBB0_13
.LCPI0_26:
	.long	2146435071              @ 0x7fefffff
.section bb0_6
.LBB0_6:                                @ %if.then
	mov	r0, #267386880
	orr	r0, r0, #-1342177280
	cmp	r4, r0
	blo	.LBB0_10
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then6
	mov	r3, #267386880
	mov	r0, r8
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then6
	mov	r6, #0
	orr	r3, r3, #-1342177280
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_67
	b	.LBB0_9
.section bb0_9
.LBB0_9:
	mov	r4, #267386880
	orr	r4, r4, #-268435456
	b	.LBB0_70
.section bb0_10
.LBB0_10:                               @ %if.end11
	ldr	r1, .LCPI0_27
	add	r0, r4, r4
	cmp	r0, r1
	bhi	.LBB0_14
	b	.LBB0_11
.LCPI0_27:
	.long	2034237439              @ 0x793fffff
.section bb0_11
.LBB0_11:                               @ %if.then14
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	tst	r4, r0
	bne	.LBB0_13
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %do.body
	mov	r0, r8
	mov	r1, r4
	bl	__aeabi_d2f
	str	r0, [sp, #24]
	b	.LBB0_13
.section bb0_13
.LBB0_13:
	mov	r6, r8
	b	.LBB0_70
.section bb0_14
.LBB0_14:                               @ %if.end20
	ldr	r0, .LCPI0_28
	cmp	r4, r0
	bhs	.LBB0_17
	b	.LBB0_15
.LCPI0_28:
	.long	3218259653              @ 0xbfd2bec5
.section bb0_15
.LBB0_15:
	mov	r0, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_16
.section bb0_16
.LBB0_16:
	mov	r0, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB0_32
.section bb0_17
.LBB0_17:                               @ %if.then31
	mov	r3, #267386880
	mov	r0, r8
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then31
	mov	r5, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r7, r0
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then31
	ldr	r0, .LCPI0_29
	mov	r6, r1
	mov	r1, #0
	add	r11, r6, r0
	b	.LBB0_20
.LCPI0_29:
	.long	614242                  @ 0x95f62
.section bb0_20
.LBB0_20:                               @ %if.then31
	ldr	r0, .LCPI0_30
	add	r10, r0, r11, lsr #20
	cmp	r10, #53
	bgt	.LBB0_28
	b	.LBB0_21
.LCPI0_30:
	.long	4294966273              @ 0xfffffc01
.section bb0_21
.LBB0_21:                               @ %if.then41
	mov	r0, r7
	mov	r1, r6
	mov	r2, r8
	mov	r3, r4
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then41
	bl	__aeabi_dsub
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then41
	mov	r0, #0
	orr	r1, r1, #805306368
	bl	__aeabi_dsub
	mov	r3, #267386880
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.then41
	mov	r9, r0
	mov	r5, r1
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.then41
	mov	r2, #0
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.then41
	mov	r3, r1
	mov	r0, r8
	mov	r1, r4
	bl	__aeabi_dsub
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.then41
	cmp	r10, #1
	mov	r2, r7
	mov	r3, r6
	movgt	r0, r9
	movgt	r1, r5
	bl	__aeabi_ddiv
	mov	r5, r0
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end53
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r5, [sp, #20]           @ 4-byte Spill
	ldr	r0, .LCPI0_31
	ldr	r1, .LCPI0_32
	b	.LBB0_29
.LCPI0_31:
	.long	1048575                 @ 0xfffff
.LCPI0_32:
	.long	1072079006              @ 0x3fe6a09e
.section bb0_29
.LBB0_29:                               @ %if.end53
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #-1342177280
	and	r0, r11, r0
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end53
	add	r1, r0, r1
	mov	r0, r7
	bl	__aeabi_dadd
	mov	r8, r0
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end53
	mov	r0, r10
	mov	r4, r1
	bl	__aeabi_i2d
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end63
	mov	r0, r8
	mov	r1, r4
	mov	r2, #0
	mov	r3, #1073741824
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end63
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end63
	mov	r1, r4
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end63
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	bl	__aeabi_dmul
	mov	r5, r0
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end63
	mov	r9, r1
	mov	r2, r5
	mov	r3, r9
                                        @ kill: R0<def> R5<kill>
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.end63
                                        @ kill: R1<def> R9<kill>
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_33
	ldr	r3, .LCPI0_34
	b	.LBB0_38
.LCPI0_33:
	.long	3497576095              @ 0xd078c69f
.LCPI0_34:
	.long	1069783561              @ 0x3fc39a09
.section bb0_38
.LBB0_38:                               @ %if.end63
	mov	r10, r0
	mov	r11, r1
                                        @ kill: R0<def> R10<kill>
                                        @ kill: R1<def> R11<kill>
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end63
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_35
	ldr	r3, .LCPI0_36
	bl	__aeabi_dadd
	b	.LBB0_40
.LCPI0_35:
	.long	495876271               @ 0x1d8e78af
.LCPI0_36:
	.long	1070363077              @ 0x3fcc71c5
.section bb0_40
.LBB0_40:                               @ %if.end63
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %if.end63
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_37
	ldr	r3, .LCPI0_38
	bl	__aeabi_dadd
	b	.LBB0_42
.LCPI0_37:
	.long	2576873988              @ 0x9997fa04
.LCPI0_38:
	.long	1071225241              @ 0x3fd99999
.section bb0_42
.LBB0_42:                               @ %if.end63
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %if.end63
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_39
	ldr	r3, .LCPI0_40
	mov	r6, r0
	b	.LBB0_44
.LCPI0_39:
	.long	3745403460              @ 0xdf3e5244
.LCPI0_40:
	.long	1069740306              @ 0x3fc2f112
.section bb0_44
.LBB0_44:                               @ %if.end63
	mov	r7, r1
	mov	r0, r10
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %if.end63
	ldr	r2, .LCPI0_41
	ldr	r3, .LCPI0_42
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_46
.LCPI0_41:
	.long	2529887198              @ 0x96cb03de
.LCPI0_42:
	.long	1070024292              @ 0x3fc74664
.section bb0_46
.LBB0_46:                               @ %if.end63
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_47
.section bb0_47
.LBB0_47:                               @ %if.end63
	ldr	r2, .LCPI0_43
	ldr	r3, .LCPI0_44
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_48
.LCPI0_43:
	.long	2485293913              @ 0x94229359
.LCPI0_44:
	.long	1070745892              @ 0x3fd24924
.section bb0_48
.LBB0_48:                               @ %if.end63
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_49
.section bb0_49
.LBB0_49:                               @ %if.end63
	ldr	r2, .LCPI0_45
	ldr	r3, .LCPI0_46
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_50
.LCPI0_45:
	.long	1431655827              @ 0x55555593
.LCPI0_46:
	.long	1071994197              @ 0x3fe55555
.section bb0_50
.LBB0_50:                               @ %if.end63
	mov	r3, r1
	mov	r0, r5
	mov	r1, r9
	bl	__aeabi_dmul
	b	.LBB0_51
.section bb0_51
.LBB0_51:                               @ %if.end63
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	b	.LBB0_52
.section bb0_52
.LBB0_52:                               @ %if.end63
	bl	__aeabi_dadd
	mov	r3, #266338304
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_53
.section bb0_53
.LBB0_53:                               @ %if.end63
	mov	r0, r8
	mov	r1, r4
	mov	r2, #0
	orr	r3, r3, #805306368
	b	.LBB0_54
.section bb0_54
.LBB0_54:                               @ %if.end63
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	b	.LBB0_55
.section bb0_55
.LBB0_55:                               @ %if.end63
	mov	r1, r4
	bl	__aeabi_dmul
	mov	r9, r0
	mov	r10, r1
	b	.LBB0_56
.section bb0_56
.LBB0_56:                               @ %if.end63
	mov	r2, r5
	mov	r3, r6
                                        @ kill: R0<def> R9<kill>
                                        @ kill: R1<def> R10<kill>
	b	.LBB0_57
.section bb0_57
.LBB0_57:                               @ %if.end63
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	b	.LBB0_58
.section bb0_58
.LBB0_58:                               @ %if.end63
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__aeabi_dmul
	ldr	r2, .LCPI0_47
	ldr	r3, .LCPI0_48
	b	.LBB0_59
.LCPI0_47:
	.long	897137782               @ 0x35793c76
.LCPI0_48:
	.long	1038760431              @ 0x3dea39ef
.section bb0_59
.LBB0_59:                               @ %if.end63
	ldr	r7, [sp, #16]           @ 4-byte Reload
	ldr	r6, [sp, #12]           @ 4-byte Reload
	mov	r5, r0
	mov	r11, r1
	b	.LBB0_60
.section bb0_60
.LBB0_60:                               @ %if.end63
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_61
.section bb0_61
.LBB0_61:                               @ %if.end63
	mov	r3, r1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__aeabi_dadd
	b	.LBB0_62
.section bb0_62
.LBB0_62:                               @ %if.end63
	mov	r2, r5
	mov	r3, r11
	bl	__aeabi_dadd
	mov	r2, r9
	b	.LBB0_63
.section bb0_63
.LBB0_63:                               @ %if.end63
	mov	r3, r10
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_64
.section bb0_64
.LBB0_64:                               @ %if.end63
	mov	r0, r8
	mov	r1, r4
	bl	__aeabi_dadd
	ldr	r3, .LCPI0_49
	b	.LBB0_65
.LCPI0_49:
	.long	1072049730              @ 0x3fe62e42
.section bb0_65
.LBB0_65:                               @ %if.end63
	mov	r2, #249561088
	mov	r4, r0
	mov	r5, r1
	mov	r0, r7
	b	.LBB0_66
.section bb0_66
.LBB0_66:                               @ %if.end63
	mov	r1, r6
	orr	r2, r2, #-268435456
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	b	.LBB0_69
.section bb0_67
.LBB0_67:                               @ %if.end
	mov	r0, r8
	mov	r1, r4
	mov	r2, r8
	mov	r3, r4
	b	.LBB0_68
.section bb0_68
.LBB0_68:                               @ %if.end
	bl	__aeabi_dsub
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_ddiv
	b	.LBB0_69
.section bb0_69
.LBB0_69:                               @ %return
	mov	r6, r0
	mov	r4, r1
	b	.LBB0_70
.section bb0_70
.LBB0_70:                               @ %return
	mov	r0, r6
	mov	r1, r4
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	log1p, .Ltmp0-log1p
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
