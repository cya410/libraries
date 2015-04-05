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
	.file	"src/math/exp10.bc"
	.globl	exp10
	.align	2
	.type	exp10,%function
exp10:                                  @ @exp10
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r1
	mov	r7, r0
	mov	r2, sp
                                        @ kill: R0<def> R7<kill>
	b	.LBB0_4
.LBB0_4:                                @ %entry
                                        @ kill: R1<def> R6<kill>
	bl	modf
	ldr	r4, [sp, #4]
	mov	r5, r1
	b	.LBB0_5
.LBB0_5:                                @ %entry
	ldr	r8, [sp]
	ldr	r1, .LCPI0_4
	mov	r9, r0
	mov	r0, #267386880
	b	.LBB0_6
.LCPI0_4:
	.long	1076887551              @ 0x402fffff
.LBB0_6:                                @ %entry
	orr	r0, r0, #1879048192
	and	r0, r4, r0
	cmp	r0, r1
	bhi	.LBB0_12
	b	.LBB0_7
.LBB0_7:                                @ %if.then
	mov	r0, r9
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	ldr	r2, .LCPI0_7
	ldr	r3, .LCPI0_8
	mov	r0, r9
	mov	r1, r5
	b	.LBB0_9
.LCPI0_7:
	.long	158966641               @ 0x979a371
.LCPI0_8:
	.long	1074434895              @ 0x400a934f
.LBB0_9:                                @ %if.end
	bl	__aeabi_dmul
	bl	exp2
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	ldm	sp, {r0, r1}
	bl	__aeabi_d2iz
	ldr	r1, .LCPI0_5
	add	r0, r1, r0, lsl #3
	b	.LBB0_11
.LCPI0_5:
	.long	exp10.p10
.LBB0_11:                               @ %if.end
	mov	r1, r5
	ldr	r2, [r0, #120]
	ldr	r3, [r0, #124]
	mov	r0, r4
	bl	__aeabi_dmul
	b	.LBB0_14
.LBB0_12:                               @ %if.end7
	mov	r1, #2359296
	mov	r0, #0
	mov	r2, r7
	mov	r3, r6
	orr	r1, r1, #1073741824
	bl	pow
	b	.LBB0_14
.LBB0_13:                               @ %if.then1
	mov	r0, r8
	mov	r1, r4
	bl	__aeabi_d2iz
	ldr	r1, .LCPI0_6
	add	r1, r1, r0, lsl #3
	ldr	r0, [r1, #120]
	ldr	r1, [r1, #124]
	b	.LBB0_14
.LCPI0_6:
	.long	exp10.p10
.LBB0_14:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	exp10, .Ltmp0-exp10
	.cantunwind
	.fnend

	.type	exp10.p10,%object       @ @exp10.p10
	.section	.rodata,"a",%progbits
	.align	3
exp10.p10:
	.long	2665960982              @ double 1.000000e-15
	.long	1020396463
	.long	2258709403              @ double 1.000000e-14
	.long	1023837339
	.long	1749644930              @ double 1.000000e-13
	.long	1027352002
	.long	2167269905              @ double 1.000000e-12
	.long	1030854553
	.long	3782829205              @ double 1.000000e-11
	.long	1034288511
	.long	3654794683              @ double 1.000000e-10
	.long	1037794527
	.long	3894859413              @ double 1.000000e-09
	.long	1041313291
	.long	3794832442              @ double 1.000000e-08
	.long	1044740494
	.long	2596056904              @ double 1.000000e-07
	.long	1048238066
	.long	2696277389              @ double 1.000000e-06
	.long	1051772663
	.long	2296604913              @ double 1.000000e-05
	.long	1055193269
	.long	3944497965              @ double 1.000000e-04
	.long	1058682594
	.long	3539053052              @ double 1.000000e-03
	.long	1062232653
	.long	1202590843              @ double 1.000000e-02
	.long	1065646817
	.long	2576980378              @ double 1.000000e-01
	.long	1069128089
	.long	0                       @ double 1.000000e+00
	.long	1072693248
	.long	0                       @ double 1.000000e+01
	.long	1076101120
	.long	0                       @ double 1.000000e+02
	.long	1079574528
	.long	0                       @ double 1.000000e+03
	.long	1083129856
	.long	0                       @ double 1.000000e+04
	.long	1086556160
	.long	0                       @ double 1.000000e+05
	.long	1090021888
	.long	0                       @ double 1.000000e+06
	.long	1093567616
	.long	0                       @ double 1.000000e+07
	.long	1097011920
	.long	0                       @ double 1.000000e+08
	.long	1100470148
	.long	0                       @ double 1.000000e+09
	.long	1104006501
	.long	536870912               @ double 1.000000e+10
	.long	1107468383
	.long	3892314112              @ double 1.000000e+11
	.long	1110919286
	.long	2717908992              @ double 1.000000e+12
	.long	1114446484
	.long	3846176768              @ double 1.000000e+13
	.long	1117925532
	.long	512753664               @ double 1.000000e+14
	.long	1121369284
	.long	640942080               @ double 1.000000e+15
	.long	1124887541
	.size	exp10.p10, 248


	.weak	pow10
pow10 = exp10
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
