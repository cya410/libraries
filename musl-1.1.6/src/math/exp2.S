.section exp2_text
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
	.file	"src/math/exp2.bc"
	.globl	exp2
	.align	2
	.type	exp2,%function
.section bb0_0
exp2:                                   @ @exp2
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	ldr	r1, .LCPI0_14
	mov	r5, r0
	bic	r0, r4, #-2147483648
	cmp	r0, r1
	blo	.LBB0_7
	b	.LBB0_4
.LCPI0_14:
	.long	1083174912              @ 0x408ff000
.section bb0_4
.LBB0_4:                                @ %if.then
	cmp	r4, #0
	blt	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	mov	r1, #9437184
	orr	r1, r1, #1073741824
	cmp	r0, r1
	blo	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then8
	mov	r3, #266338304
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	orr	r3, r3, #1879048192
	bl	__aeabi_dmul
	b	.LBB0_11
.section bb0_7
.LBB0_7:                                @ %if.else
	ldr	r1, .LCPI0_15
	cmp	r0, r1
	bhi	.LBB0_22
	b	.LBB0_8
.LCPI0_15:
	.long	1016070143              @ 0x3c8fffff
.section bb0_8
.LBB0_8:                                @ %if.then31
	mov	r3, #267386880
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_11
.section bb0_9
.LBB0_9:                                @ %if.end
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	cmp	r0, r1
	blo	.LBB0_13
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then11
	mov	r1, #267386880
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	orr	r1, r1, #-1342177280
	bl	__aeabi_ddiv
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	mov	r6, r0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %return
	mov	r0, r6
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.section bb0_13
.LBB0_13:                               @ %if.end12
	cmp	r4, #0
	bge	.LBB0_22
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then15
	ldr	r7, .LCPI0_16
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_15
.LCPI0_16:
	.long	3230714880              @ 0xc090cc00
.section bb0_15
.LBB0_15:                               @ %if.then15
	mov	r6, #0
	mov	r3, r7
	bl	__aeabi_dcmpgt
	mov	r8, r0
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then15
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	mov	r3, r7
	bl	__aeabi_dcmpun
	orrs	r0, r0, r8
	beq	.LBB0_41
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %lor.lhs.false
	mov	r3, #53477376
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %lor.lhs.false
	orr	r3, r3, #-1073741824
	bl	__aeabi_dadd
	mov	r3, #53477376
	mov	r2, #0
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %lor.lhs.false
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_22
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end23.thread98
	mov	r1, #111149056
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end23.thread98
	orr	r1, r1, #-1342177280
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	str	r0, [sp, #4]
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end34
	mov	r3, #45613056
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end34
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	mov	r3, #45613056
	mov	r2, #0
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end34
	add	r10, r0, #128
	orr	r3, r3, #-1073741824
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end34
	mov	r3, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dsub
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end34
	ldr	r7, .LCPI0_17
	mov	r2, #254
	orr	r2, r2, #256
	and	r6, r2, r10, lsl #1
	b	.LBB0_27
.LCPI0_17:
	.long	tbl
.section bb0_27
.LBB0_27:                               @ %if.end34
	orr	r2, r6, #1
	mov	r3, r7
	ldr	r2, [r3, r2, lsl #3]!
	ldr	r3, [r3, #4]
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end34
	bl	__aeabi_dsub
	ldr	r2, .LCPI0_18
	ldr	r3, .LCPI0_19
	mov	r4, r0
	b	.LBB0_29
.LCPI0_18:
	.long	59202676                @ 0x3875c74
.LCPI0_19:
	.long	1062590592              @ 0x3f55d880
.section bb0_29
.LBB0_29:                               @ %if.end34
	mov	r5, r1
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dmul
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end34
	ldr	r2, .LCPI0_20
	ldr	r3, .LCPI0_21
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_31
.LCPI0_20:
	.long	2297889792              @ 0x88f70400
.LCPI0_21:
	.long	1065595563              @ 0x3f83b2ab
.section bb0_31
.LBB0_31:                               @ %if.end34
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end34
	ldr	r2, .LCPI0_22
	ldr	r3, .LCPI0_23
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_33
.LCPI0_22:
	.long	3607404710              @ 0xd704a0a6
.LCPI0_23:
	.long	1068264200              @ 0x3fac6b08
.section bb0_33
.LBB0_33:                               @ %if.end34
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.end34
	ldr	r2, .LCPI0_24
	ldr	r3, .LCPI0_25
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_35
.LCPI0_24:
	.long	4286760309              @ 0xff82c575
.LCPI0_25:
	.long	1070514109              @ 0x3fcebfbd
.section bb0_35
.LBB0_35:                               @ %if.end34
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %if.end34
	ldr	r2, .LCPI0_26
	ldr	r3, .LCPI0_27
	bl	__aeabi_dadd
	ldr	r6, [r7, r6, lsl #3]!
	b	.LBB0_37
.LCPI0_26:
	.long	4277811695              @ 0xfefa39ef
.LCPI0_27:
	.long	1072049730              @ 0x3fe62e42
.section bb0_37
.LBB0_37:                               @ %if.end34
	mov	r8, r0
	mov	r9, r1
	mov	r2, r4
	mov	r3, r5
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %if.end34
	ldr	r7, [r7, #4]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %if.end34
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %if.end34
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	asr	r2, r10, #8
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	scalbn
.section bb0_41
.LBB0_41:                               @ %if.end23.thread95
	mov	r1, #111149056
	mov	r0, #0
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %if.end23.thread95
	orr	r1, r1, #-1342177280
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	str	r0, [sp, #4]
	mov	r1, #0
	b	.LBB0_12
.Ltmp0:
	.size	exp2, .Ltmp0-exp2
	.cantunwind
	.fnend

	.type	tbl,%object             @ @tbl
	.section	.rodata,"a",%progbits
	.align	3
tbl:
	.long	1719614813              @ double 7.071068e-01
	.long	1072079006
	.long	0                       @ double 9.070522e-14
	.long	1027180544
	.long	4201977668              @ double 7.090239e-01
	.long	1072083026
	.long	0                       @ double 1.332268e-15
	.long	1020788736
	.long	1963710974              @ double 7.109463e-01
	.long	1072087058
	.long	0                       @ double -4.346523e-14
	.long	3173545984
	.long	3721688767              @ double 7.128739e-01
	.long	1072091100
	.long	0                       @ double 2.731149e-14
	.long	1025425408
	.long	1013258793              @ double 7.148067e-01
	.long	1072095154
	.long	0                       @ double -1.332268e-15
	.long	3168272384
	.long	2555984611              @ double 7.167447e-01
	.long	1072099218
	.long	0                       @ double -3.885781e-16
	.long	3166437376
	.long	4182872966              @ double 7.186880e-01
	.long	1072103293
	.long	0                       @ double -5.656586e-14
	.long	3174029312
	.long	1727278499              @ double 7.206366e-01
	.long	1072107380
	.long	0                       @ double -5.068168e-14
	.long	3173812224
	.long	3907805123              @ double 7.225904e-01
	.long	1072111477
	.long	0                       @ double 1.754152e-14
	.long	1024704512
	.long	2263535365              @ double 7.245495e-01
	.long	1072115586
	.long	0                       @ double -8.593126e-14
	.long	3174576128
	.long	1218806098              @ double 7.265140e-01
	.long	1072119706
	.long	0                       @ double -7.438494e-15
	.long	3170942976
	.long	903335164               @ double 7.284838e-01
	.long	1072123837
	.long	0                       @ double 5.601075e-14
	.long	1026525184
	.long	1447192561              @ double 7.304589e-01
	.long	1072127979
	.long	0                       @ double 8.826273e-15
	.long	1023664128
	.long	2980801864              @ double 7.324394e-01
	.long	1072132132
	.long	0                       @ double -4.229950e-14
	.long	3173502976
	.long	1339972920              @ double 7.344252e-01
	.long	1072136297
	.long	0                       @ double -1.609823e-15
	.long	3168600064
	.long	950803712               @ double 7.364164e-01
	.long	1072140473
	.long	0                       @ double 2.109424e-15
	.long	1021509632
	.long	1944781176              @ double 7.384131e-01
	.long	1072144660
	.long	0                       @ double -3.219647e-15
	.long	3169648640
	.long	158781536               @ double 7.404151e-01
	.long	1072148859
	.long	0                       @ double 2.886580e-14
	.long	1025523712
	.long	19972403                @ double 7.424226e-01
	.long	1072153069
	.long	0                       @ double 1.110223e-16
	.long	1017118720
	.long	1660913206              @ double 7.444355e-01
	.long	1072157290
	.long	0                       @ double -4.007905e-14
	.long	3173421056
	.long	919555643               @ double 7.464539e-01
	.long	1072161523
	.long	0                       @ double -8.382184e-15
	.long	3171082240
	.long	2224145384              @ double 7.484777e-01
	.long	1072165767
	.long	0                       @ double -3.613776e-14
	.long	3173275648
	.long	1413356366              @ double 7.505070e-01
	.long	1072170023
	.long	0                       @ double 6.750156e-14
	.long	1026752512
	.long	2916157210              @ double 7.525419e-01
	.long	1072174290
	.long	0                       @ double 1.376677e-14
	.long	1024393216
	.long	2571947390              @ double 7.545822e-01
	.long	1072178569
	.long	0                       @ double -3.153033e-14
	.long	3173105664
	.long	515457744               @ double 7.566281e-01
	.long	1072182860
	.long	0                       @ double 4.585221e-14
	.long	1026150400
	.long	1176750773              @ double 7.586795e-01
	.long	1072187162
	.long	0                       @ double 1.638689e-13
	.long	1028067328
	.long	396319676               @ double 7.607365e-01
	.long	1072191476
	.long	0                       @ double 3.264056e-14
	.long	1025662976
	.long	2604962223              @ double 7.627991e-01
	.long	1072195801
	.long	0                       @ double -6.666889e-14
	.long	3174220800
	.long	3643909013              @ double 7.648672e-01
	.long	1072200138
	.long	0                       @ double -3.375078e-14
	.long	3173187584
	.long	3649725880              @ double 7.669410e-01
	.long	1072204487
	.long	0                       @ double -4.707346e-14
	.long	3173679104
	.long	2759350272              @ double 7.690204e-01
	.long	1072208848
	.long	0                       @ double -3.219647e-15
	.long	3169648640
	.long	1110090275              @ double 7.711054e-01
	.long	1072213221
	.long	0                       @ double 6.805667e-14
	.long	1026762752
	.long	3134593530              @ double 7.731961e-01
	.long	1072217605
	.long	0                       @ double 1.328937e-13
	.long	1027781632
	.long	380978051               @ double 7.752924e-01
	.long	1072222002
	.long	0                       @ double -5.473400e-14
	.long	3173961728
	.long	1577608780              @ double 7.773945e-01
	.long	1072226410
	.long	0                       @ double -2.897682e-14
	.long	3173011456
	.long	2568321031              @ double 7.795022e-01
	.long	1072230830
	.long	0                       @ double 4.291012e-14
	.long	1026041856
	.long	3492293646              @ double 7.816156e-01
	.long	1072235262
	.long	0                       @ double -2.547962e-14
	.long	3172773888
	.long	194117526               @ double 7.837348e-01
	.long	1072239707
	.long	0                       @ double -9.714451e-15
	.long	3171278848
	.long	1403662329              @ double 7.858597e-01
	.long	1072244163
	.long	0                       @ double 4.718448e-15
	.long	1022705664
	.long	2966275658              @ double 7.879904e-01
	.long	1072248631
	.long	0                       @ double 2.053913e-14
	.long	1024925696
	.long	727685294               @ double 7.901269e-01
	.long	1072253112
	.long	0                       @ double -1.110223e-14
	.long	3171483648
	.long	3418903243              @ double 7.922691e-01
	.long	1072257604
	.long	0                       @ double 3.802514e-14
	.long	1025861632
	.long	2591452961              @ double 7.944172e-01
	.long	1072262109
	.long	0                       @ double -8.104628e-14
	.long	3174486016
	.long	2682146346              @ double 7.965711e-01
	.long	1072266626
	.long	0                       @ double -7.549517e-15
	.long	3170959360
	.long	3833209763              @ double 7.987308e-01
	.long	1072271155
	.long	0                       @ double 5.151435e-14
	.long	1026359296
	.long	1892288004              @ double 8.008964e-01
	.long	1072275697
	.long	0                       @ double -8.754109e-14
	.long	3174605824
	.long	1297350537              @ double 8.030678e-01
	.long	1072280251
	.long	0                       @ double 7.588374e-14
	.long	1026907136
	.long	2191782235              @ double 8.052452e-01
	.long	1072284817
	.long	0                       @ double 4.035661e-14
	.long	1025947648
	.long	424392901               @ double 8.074284e-01
	.long	1072289396
	.long	0                       @ double -3.108624e-15
	.long	3169583104
	.long	434316174               @ double 8.096176e-01
	.long	1072293987
	.long	0                       @ double 2.114975e-14
	.long	1024970752
	.long	2366108418              @ double 8.118127e-01
	.long	1072298590
	.long	0                       @ double 1.976197e-14
	.long	1024868352
	.long	2069751117              @ double 8.140137e-01
	.long	1072303206
	.long	0                       @ double -4.662937e-15
	.long	3170172928
	.long	3985553654              @ double 8.162207e-01
	.long	1072307834
	.long	0                       @ double 1.149081e-14
	.long	1024057344
	.long	3964284455              @ double 8.184337e-01
	.long	1072312475
	.long	0                       @ double 4.768408e-14
	.long	1026217984
	.long	2152073821              @ double 8.206527e-01
	.long	1072317129
	.long	0                       @ double -2.392531e-14
	.long	3172659200
	.long	2990417307              @ double 8.228777e-01
	.long	1072321795
	.long	0                       @ double 1.215694e-14
	.long	1024155648
	.long	2331271699              @ double 8.251088e-01
	.long	1072326474
	.long	0                       @ double 8.715251e-14
	.long	1027115008
	.long	321958823               @ double 8.273459e-01
	.long	1072331166
	.long	0                       @ double 1.521006e-14
	.long	1024532480
	.long	1405169293              @ double 8.295890e-01
	.long	1072335870
	.long	0                       @ double 1.010303e-14
	.long	1023852544
	.long	1434057938              @ double 8.318383e-01
	.long	1072340587
	.long	0                       @ double -4.568568e-14
	.long	3173627904
	.long	557150136               @ double 8.340936e-01
	.long	1072345317
	.long	0                       @ double 4.873879e-14
	.long	1026256896
	.long	3218338689              @ double 8.363551e-01
	.long	1072350059
	.long	0                       @ double 1.387779e-15
	.long	1020854272
	.long	977020800               @ double 8.386227e-01
	.long	1072354815
	.long	0                       @ double 2.220446e-15
	.long	1021575168
	.long	2572866211              @ double 8.408964e-01
	.long	1072359583
	.long	0                       @ double -5.073719e-14
	.long	3173814272
	.long	3861050215              @ double 8.431763e-01
	.long	1072364364
	.long	0                       @ double 1.981748e-14
	.long	1024872448
	.long	697153424               @ double 8.454624e-01
	.long	1072369159
	.long	0                       @ double 5.653811e-14
	.long	1026544640
	.long	1822067113              @ double 8.477547e-01
	.long	1072373966
	.long	0                       @ double 1.637579e-14
	.long	1024618496
	.long	3092191819              @ double 8.500532e-01
	.long	1072378786
	.long	0                       @ double 2.080280e-13
	.long	1028474624
	.long	364333031               @ double 8.523579e-01
	.long	1072383620
	.long	0                       @ double -8.604228e-14
	.long	3174578176
	.long	2380618042              @ double 8.546689e-01
	.long	1072388466
	.long	0                       @ double 8.326673e-17
	.long	1016594432
	.long	703710570               @ double 8.569861e-01
	.long	1072393326
	.long	0                       @ double 1.190714e-14
	.long	1024118784
	.long	4076559952              @ double 8.593096e-01
	.long	1072398198
	.long	0                       @ double 1.693090e-15
	.long	1021214720
	.long	4062661042              @ double 8.616395e-01
	.long	1072403084
	.long	0                       @ double -9.214851e-15
	.long	3171205120
	.long	815859203               @ double 8.639756e-01
	.long	1072407984
	.long	0                       @ double -1.307288e-14
	.long	3171774464
	.long	3080351590              @ double 8.663181e-01
	.long	1072412896
	.long	0                       @ double 1.312839e-14
	.long	1024299008
	.long	2420883967              @ double 8.686669e-01
	.long	1072417822
	.long	0                       @ double 8.271162e-15
	.long	1023582208
	.long	3287523695              @ double 8.710221e-01
	.long	1072422761
	.long	0                       @ double -2.794986e-14
	.long	3172956160
	.long	1540824504              @ double 8.733837e-01
	.long	1072427714
	.long	0                       @ double -1.476597e-14
	.long	3171983360
	.long	1631695593              @ double 8.757517e-01
	.long	1072432680
	.long	0                       @ double -1.532108e-14
	.long	3172024320
	.long	3716502240              @ double 8.781261e-01
	.long	1072437659
	.long	0                       @ double 1.237899e-14
	.long	1024188416
	.long	3657065710              @ double 8.805069e-01
	.long	1072442652
	.long	0                       @ double -1.121325e-14
	.long	3171500032
	.long	1610600495              @ double 8.828942e-01
	.long	1072447659
	.long	0                       @ double -1.368350e-14
	.long	3171864576
	.long	2029714709              @ double 8.852880e-01
	.long	1072452679
	.long	0                       @ double 9.023338e-14
	.long	1027171840
	.long	777507019               @ double 8.876882e-01
	.long	1072457713
	.long	0                       @ double -2.314815e-14
	.long	3172601856
	.long	2307441078              @ double 8.900950e-01
	.long	1072462760
	.long	0                       @ double -3.449185e-13
	.long	3176678784
	.long	2483480371              @ double 8.925083e-01
	.long	1072467821
	.long	0                       @ double -2.334244e-14
	.long	3172616192
	.long	1464976607              @ double 8.949281e-01
	.long	1072472896
	.long	0                       @ double 7.494005e-16
	.long	1019936768
	.long	3706687636              @ double 8.973545e-01
	.long	1072477984
	.long	0                       @ double 7.660539e-15
	.long	1023492096
	.long	778901129               @ double 8.997875e-01
	.long	1072483087
	.long	0                       @ double 3.580469e-15
	.long	1022369792
	.long	1432208402              @ double 9.022271e-01
	.long	1072488203
	.long	0                       @ double 4.302114e-15
	.long	1022582784
	.long	1532734267              @ double 9.046733e-01
	.long	1072493333
	.long	0                       @ double -1.001976e-14
	.long	3171323904
	.long	1242007996              @ double 9.071261e-01
	.long	1072498477
	.long	0                       @ double 1.137979e-14
	.long	1024040960
	.long	721996026               @ double 9.095856e-01
	.long	1072503635
	.long	0                       @ double -1.942890e-14
	.long	3172327424
	.long	135105157               @ double 9.120517e-01
	.long	1072508807
	.long	0                       @ double 2.589595e-14
	.long	1025320960
	.long	3939148291              @ double 9.145245e-01
	.long	1072513992
	.long	0                       @ double 7.827072e-15
	.long	1023516672
	.long	3707479185              @ double 9.170040e-01
	.long	1072519192
	.long	0                       @ double 1.720846e-15
	.long	1021247488
	.long	3898795681              @ double 9.194903e-01
	.long	1072524406
	.long	0                       @ double -8.715251e-15
	.long	3171131392
	.long	382305102               @ double 9.219833e-01
	.long	1072529635
	.long	0                       @ double -1.280920e-14
	.long	3171735552
	.long	1912561808              @ double 9.244830e-01
	.long	1072534877
	.long	0                       @ double 4.607426e-15
	.long	1022672896
	.long	64697006                @ double 9.269896e-01
	.long	1072540134
	.long	0                       @ double 7.008283e-15
	.long	1023381504
	.long	3594158885              @ double 9.295029e-01
	.long	1072545404
	.long	0                       @ double 2.831069e-15
	.long	1021935616
	.long	4076975173              @ double 9.320230e-01
	.long	1072550689
	.long	0                       @ double -4.690692e-15
	.long	3170181120
	.long	1679558079              @ double 9.345500e-01
	.long	1072555989
	.long	0                       @ double -2.614575e-14
	.long	3172823040
	.long	863738604               @ double 9.370838e-01
	.long	1072561303
	.long	0                       @ double -1.960931e-14
	.long	3172340736
	.long	1796832606              @ double 9.396245e-01
	.long	1072566631
	.long	0                       @ double 1.211531e-14
	.long	1024149504
	.long	351642599               @ double 9.421721e-01
	.long	1072571974
	.long	0                       @ double 1.194045e-13
	.long	1027657216
	.long	991358556               @ double 9.447266e-01
	.long	1072577331
	.long	0                       @ double 1.261491e-14
	.long	1024223232
	.long	3884662708              @ double 9.472880e-01
	.long	1072582702
	.long	0                       @ double -1.118550e-14
	.long	3171495936
	.long	610757992               @ double 9.498563e-01
	.long	1072588089
	.long	0                       @ double -2.331468e-15
	.long	3169124352
	.long	4224142404              @ double 9.524317e-01
	.long	1072593489
	.long	0                       @ double -1.064426e-14
	.long	3171416064
	.long	2009970470              @ double 9.550140e-01
	.long	1072598905
	.long	0                       @ double -4.315992e-15
	.long	3170070528
	.long	2728693992              @ double 9.576033e-01
	.long	1072604335
	.long	0                       @ double 2.421674e-15
	.long	1021693952
	.long	2256325348              @ double 9.601996e-01
	.long	1072609780
	.long	0                       @ double 1.963013e-14
	.long	1024858624
	.long	764307469               @ double 9.628030e-01
	.long	1072615240
	.long	0                       @ double 4.732326e-15
	.long	1022709760
	.long	2719515924              @ double 9.654134e-01
	.long	1072620714
	.long	0                       @ double 6.175616e-16
	.long	1019625472
	.long	3999357459              @ double 9.680309e-01
	.long	1072626203
	.long	0                       @ double -3.386180e-15
	.long	3169746944
	.long	481706246               @ double 9.706555e-01
	.long	1072631708
	.long	0                       @ double -5.891121e-15
	.long	3170535424
	.long	929806691               @ double 9.732872e-01
	.long	1072637227
	.long	0                       @ double -5.073719e-14
	.long	3173814272
	.long	1222472309              @ double 9.759261e-01
	.long	1072642761
	.long	0                       @ double 1.804112e-16
	.long	1017774080
	.long	1533953316              @ double 9.785721e-01
	.long	1072648310
	.long	0                       @ double -4.649059e-15
	.long	3170168832
	.long	2038973693              @ double 9.812252e-01
	.long	1072653874
	.long	0                       @ double 7.355228e-16
	.long	1019904000
	.long	2912730680              @ double 9.838856e-01
	.long	1072659453
	.long	0                       @ double 5.936224e-15
	.long	1023065088
	.long	35929218                @ double 9.865532e-01
	.long	1072665048
	.long	0                       @ double -1.131040e-15
	.long	3168034816
	.long	2174652558              @ double 9.892280e-01
	.long	1072670657
	.long	0                       @ double -1.201123e-14
	.long	3171617792
	.long	915592465               @ double 9.919101e-01
	.long	1072676282
	.long	0                       @ double -4.683753e-16
	.long	3166756864
	.long	730821012               @ double 9.945994e-01
	.long	1072681922
	.long	0                       @ double -1.498281e-14
	.long	3171999360
	.long	1797923822              @ double 9.972961e-01
	.long	1072687577
	.long	0                       @ double 3.359726e-15
	.long	1022247680
	.long	0                       @ double 1.000000e+00
	.long	1072693248
	.long	0                       @ double 0.000000e+00
	.long	0
	.long	4200250558              @ double 1.002711e+00
	.long	1072696090
	.long	0                       @ double -2.671474e-16
	.long	3165863936
	.long	2851812099              @ double 1.005430e+00
	.long	1072698941
	.long	0                       @ double -1.606701e-14
	.long	3172079360
	.long	339411586               @ double 1.008156e+00
	.long	1072701800
	.long	0                       @ double 3.642919e-16
	.long	1018839040
	.long	1048019052              @ double 1.010889e+00
	.long	1072704666
	.long	0                       @ double 3.507611e-15
	.long	1022334976
	.long	772914122               @ double 1.013630e+00
	.long	1072707540
	.long	0                       @ double -6.453171e-16
	.long	3167174656
	.long	3899555721              @ double 1.016378e+00
	.long	1072710421
	.long	0                       @ double 1.342676e-15
	.long	1020801024
	.long	1928746087              @ double 1.019134e+00
	.long	1072713311
	.long	0                       @ double -2.331121e-14
	.long	3172613888
	.long	3541402970              @ double 1.021897e+00
	.long	1072716208
	.long	0                       @ double -8.222589e-15
	.long	3171058688
	.long	238821269               @ double 1.024668e+00
	.long	1072719114
	.long	0                       @ double 3.858025e-15
	.long	1022451712
	.long	702412570               @ double 1.027446e+00
	.long	1072722027
	.long	0                       @ double 1.877665e-14
	.long	1024795648
	.long	728934445               @ double 1.030232e+00
	.long	1072724948
	.long	0                       @ double -2.844947e-15
	.long	3169427456
	.long	410360784               @ double 1.033025e+00
	.long	1072727877
	.long	0                       @ double 2.470246e-15
	.long	1021722624
	.long	4133881800              @ double 1.035826e+00
	.long	1072730813
	.long	0                       @ double -7.313594e-15
	.long	3170924544
	.long	3402036099              @ double 1.038634e+00
	.long	1072733758
	.long	0                       @ double -8.326673e-17
	.long	3164078080
	.long	2602514736              @ double 1.041450e+00
	.long	1072736711
	.long	0                       @ double 7.022161e-15
	.long	1023385600
	.long	1828292860              @ double 1.044274e+00
	.long	1072739672
	.long	0                       @ double -5.946632e-15
	.long	3170551808
	.long	1172597898              @ double 1.047105e+00
	.long	1072742641
	.long	0                       @ double 1.429412e-15
	.long	1020903424
	.long	728909846               @ double 1.049944e+00
	.long	1072745618
	.long	0                       @ double 9.381385e-15
	.long	1023746048
	.long	590962136               @ double 1.052791e+00
	.long	1072748603
	.long	0                       @ double -5.953571e-15
	.long	3170553856
	.long	852742643               @ double 1.055645e+00
	.long	1072751596
	.long	0                       @ double 2.457756e-14
	.long	1025223680
	.long	1608493478              @ double 1.058507e+00
	.long	1072754597
	.long	0                       @ double -9.284240e-15
	.long	3171215360
	.long	2952712944              @ double 1.061377e+00
	.long	1072757606
	.long	0                       @ double -1.296185e-14
	.long	3171758080
	.long	685187915               @ double 1.064255e+00
	.long	1072760624
	.long	0                       @ double 3.844147e-15
	.long	1022447616
	.long	3490863963              @ double 1.067140e+00
	.long	1072763649
	.long	0                       @ double 3.108624e-15
	.long	1022099456
	.long	2875075321              @ double 1.070034e+00
	.long	1072766683
	.long	0                       @ double 2.019218e-14
	.long	1024900096
	.long	3228316117              @ double 1.072935e+00
	.long	1072769725
	.long	0                       @ double 2.692291e-15
	.long	1021853696
	.long	351405181               @ double 1.075844e+00
	.long	1072772776
	.long	0                       @ double -1.368350e-14
	.long	3171864576
	.long	2930322921              @ double 1.078761e+00
	.long	1072775834
	.long	0                       @ double 2.761680e-15
	.long	1021894656
	.long	2471440696              @ double 1.081686e+00
	.long	1072778901
	.long	0                       @ double 3.025358e-15
	.long	1022050304
	.long	3366293105              @ double 1.084618e+00
	.long	1072781976
	.long	0                       @ double 9.409140e-15
	.long	1023750144
	.long	1416741855              @ double 1.087559e+00
	.long	1072785060
	.long	0                       @ double 8.534840e-15
	.long	1023621120
	.long	1014845969              @ double 1.090508e+00
	.long	1072788152
	.long	0                       @ double 4.410361e-14
	.long	1026085888
	.long	2257959839              @ double 1.093464e+00
	.long	1072791252
	.long	0                       @ double -9.686696e-15
	.long	3171274752
	.long	948735379               @ double 1.096429e+00
	.long	1072794361
	.long	0                       @ double -2.534084e-14
	.long	3172763648
	.long	1480023398              @ double 1.099402e+00
	.long	1072797478
	.long	0                       @ double 1.593170e-14
	.long	1024585728
	.long	3949972391              @ double 1.102383e+00
	.long	1072800603
	.long	0                       @ double 1.446065e-14
	.long	1024477184
	.long	4162029539              @ double 1.105371e+00
	.long	1072803737
	.long	0                       @ double -1.650069e-13
	.long	3175561472
	.long	2214878548              @ double 1.108368e+00
	.long	1072806880
	.long	0                       @ double 3.710920e-14
	.long	1025827840
	.long	2502433859              @ double 1.111374e+00
	.long	1072810031
	.long	0                       @ double -1.160183e-14
	.long	3171557376
	.long	828946866               @ double 1.114387e+00
	.long	1072813191
	.long	0                       @ double 2.164935e-15
	.long	1021542400
	.long	1588871217              @ double 1.117408e+00
	.long	1072816359
	.long	0                       @ double 2.969847e-15
	.long	1022017536
	.long	586996024               @ double 1.120438e+00
	.long	1072819536
	.long	0                       @ double 7.799317e-15
	.long	1023512576
	.long	2218315255              @ double 1.123476e+00
	.long	1072822721
	.long	0                       @ double -2.439715e-14
	.long	3172694016
	.long	2288160143              @ double 1.126522e+00
	.long	1072825915
	.long	0                       @ double 5.254130e-14
	.long	1026397184
	.long	897099806               @ double 1.129576e+00
	.long	1072829118
	.long	0                       @ double 1.332268e-15
	.long	1020788736
	.long	2440944961              @ double 1.132639e+00
	.long	1072832329
	.long	0                       @ double 4.832246e-14
	.long	1026241536
	.long	2725843747              @ double 1.135709e+00
	.long	1072835549
	.long	0                       @ double 2.306488e-14
	.long	1025112064
	.long	1853186535              @ double 1.138789e+00
	.long	1072838778
	.long	0                       @ double -2.289835e-14
	.long	3172583424
	.long	4219606055              @ double 1.141876e+00
	.long	1072842015
	.long	0                       @ double 8.076873e-15
	.long	1023553536
	.long	1337107970              @ double 1.144972e+00
	.long	1072845262
	.long	0                       @ double -1.712519e-14
	.long	3172157440
	.long	1897844400              @ double 1.148076e+00
	.long	1072848517
	.long	0                       @ double 1.637579e-14
	.long	1024618496
	.long	1709341974              @ double 1.151189e+00
	.long	1072851781
	.long	0                       @ double 1.582068e-14
	.long	1024577536
	.long	874373135               @ double 1.154310e+00
	.long	1072855054
	.long	0                       @ double 6.369905e-14
	.long	1026682368
	.long	3790955326              @ double 1.157440e+00
	.long	1072858335
	.long	0                       @ double -1.842970e-14
	.long	3172253696
	.long	1972484912              @ double 1.160578e+00
	.long	1072861626
	.long	0                       @ double -1.762479e-14
	.long	3172194304
	.long	4112506633              @ double 1.163725e+00
	.long	1072864925
	.long	0                       @ double 1.096345e-14
	.long	1023979520
	.long	1724976795              @ double 1.166880e+00
	.long	1072868234
	.long	0                       @ double -3.283485e-14
	.long	3173153792
	.long	3504003642              @ double 1.170044e+00
	.long	1072871551
	.long	0                       @ double 4.654610e-14
	.long	1026176000
	.long	964107001               @ double 1.173216e+00
	.long	1072874878
	.long	0                       @ double -1.465494e-14
	.long	3171975168
	.long	2799960793              @ double 1.176397e+00
	.long	1072878213
	.long	0                       @ double -1.368350e-14
	.long	3171864576
	.long	526652793               @ double 1.179587e+00
	.long	1072881558
	.long	0                       @ double -4.468648e-15
	.long	3170115584
	.long	2839424719              @ double 1.182785e+00
	.long	1072884911
	.long	0                       @ double -3.658185e-14
	.long	3173292032
	.long	1253935138              @ double 1.185992e+00
	.long	1072888274
	.long	0                       @ double -1.970646e-14
	.long	3172347904
	.long	171030053               @ double 1.189207e+00
	.long	1072891646
	.long	0                       @ double -6.469825e-14
	.long	3174184448
	.long	3991840011              @ double 1.192431e+00
	.long	1072895026
	.long	0                       @ double -9.591217e-13
	.long	3178291072
	.long	4232894392              @ double 1.195664e+00
	.long	1072898416
	.long	0                       @ double -3.247402e-14
	.long	3173140480
	.long	1000925602              @ double 1.198906e+00
	.long	1072901816
	.long	0                       @ double -3.835821e-14
	.long	3173357568
	.long	2992904038              @ double 1.202157e+00
	.long	1072905224
	.long	0                       @ double 2.736700e-14
	.long	1025429504
	.long	1726216743              @ double 1.205416e+00
	.long	1072908642
	.long	0                       @ double -1.554312e-15
	.long	3168534528
	.long	1603444495              @ double 1.208684e+00
	.long	1072912069
	.long	0                       @ double -5.984102e-14
	.long	3174094848
	.long	2732492985              @ double 1.211961e+00
	.long	1072915505
	.long	0                       @ double 3.336220e-14
	.long	1025689600
	.long	926591545               @ double 1.215247e+00
	.long	1072918951
	.long	0                       @ double 2.908784e-14
	.long	1025531904
	.long	589198590               @ double 1.218542e+00
	.long	1072922406
	.long	0                       @ double -1.987299e-14
	.long	3172360192
	.long	1829099576              @ double 1.221846e+00
	.long	1072925870
	.long	0                       @ double -1.193490e-14
	.long	3171606528
	.long	460406467               @ double 1.225159e+00
	.long	1072929344
	.long	0                       @ double -1.452727e-13
	.long	3175379456
	.long	887463968               @ double 1.228481e+00
	.long	1072932827
	.long	0                       @ double 1.071365e-14
	.long	1023942656
	.long	3219943061              @ double 1.231811e+00
	.long	1072936319
	.long	0                       @ double 1.083578e-13
	.long	1027506176
	.long	3272845554              @ double 1.235151e+00
	.long	1072939821
	.long	0                       @ double 3.497203e-15
	.long	1022328832
	.long	1156440354              @ double 1.238500e+00
	.long	1072943333
	.long	0                       @ double -2.098322e-14
	.long	3172442112
	.long	1276261563              @ double 1.241858e+00
	.long	1072946854
	.long	0                       @ double 3.941292e-14
	.long	1025912832
	.long	3743174348              @ double 1.245225e+00
	.long	1072950384
	.long	0                       @ double -1.751377e-13
	.long	3175654912
	.long	78413452                @ double 1.248601e+00
	.long	1072953925
	.long	0                       @ double -1.025291e-13
	.long	3174882304
	.long	3278348475              @ double 1.251986e+00
	.long	1072957474
	.long	0                       @ double 3.858025e-14
	.long	1025882112
	.long	569847445               @ double 1.255381e+00
	.long	1072961034
	.long	0                       @ double 2.731149e-14
	.long	1025425408
	.long	654919238               @ double 1.258784e+00
	.long	1072964603
	.long	0                       @ double -1.720846e-14
	.long	3172163584
	.long	3645942048              @ double 1.262197e+00
	.long	1072968181
	.long	0                       @ double 3.480549e-14
	.long	1025742848
	.long	1065662955              @ double 1.265620e+00
	.long	1072971770
	.long	0                       @ double 5.773160e-15
	.long	1023016960
	.long	1617004825              @ double 1.269051e+00
	.long	1072975368
	.long	0                       @ double -5.051515e-15
	.long	3170287616
	.long	1118294529              @ double 1.272492e+00
	.long	1072978976
	.long	0                       @ double -1.232348e-14
	.long	3171663872
	.long	3978100758              @ double 1.275942e+00
	.long	1072982593
	.long	0                       @ double -1.643130e-14
	.long	3172106240
	.long	1720398630              @ double 1.279401e+00
	.long	1072986221
	.long	0                       @ double 5.995204e-14
	.long	1026613248
	.long	3049339904              @ double 1.282870e+00
	.long	1072989858
	.long	0                       @ double -5.195844e-14
	.long	3173859328
	.long	3784486660              @ double 1.286348e+00
	.long	1072993505
	.long	0                       @ double 1.249001e-14
	.long	1024204800
	.long	4040676210              @ double 1.289836e+00
	.long	1072997162
	.long	0                       @ double -2.692291e-14
	.long	3172880384
	.long	3933059073              @ double 1.293333e+00
	.long	1073000829
	.long	0                       @ double 1.043610e-14
	.long	1023901696
	.long	3577096673              @ double 1.296840e+00
	.long	1073004506
	.long	0                       @ double -1.731948e-14
	.long	3172171776
	.long	3088564530              @ double 1.300356e+00
	.long	1073008193
	.long	0                       @ double 7.327472e-15
	.long	1023442944
	.long	2583551451              @ double 1.303881e+00
	.long	1073011890
	.long	0                       @ double 5.051515e-14
	.long	1026322432
	.long	2178460566              @ double 1.307416e+00
	.long	1073015597
	.long	0                       @ double -2.564615e-14
	.long	3172786176
	.long	1990012162              @ double 1.310961e+00
	.long	1073019314
	.long	0                       @ double 2.231548e-14
	.long	1025056768
	.long	2135241153              @ double 1.314516e+00
	.long	1073023041
	.long	0                       @ double -1.099121e-14
	.long	3171467264
	.long	2731501098              @ double 1.318080e+00
	.long	1073026778
	.long	0                       @ double -5.773160e-15
	.long	3170500608
	.long	3896463850              @ double 1.321653e+00
	.long	1073030525
	.long	0                       @ double 1.849632e-13
	.long	1028261888
	.long	1453149914              @ double 1.325237e+00
	.long	1073034283
	.long	0                       @ double -4.057865e-14
	.long	3173439488
	.long	4109806618              @ double 1.328830e+00
	.long	1073038050
	.long	0                       @ double -6.489254e-14
	.long	3174188032
	.long	3395130587              @ double 1.332433e+00
	.long	1073041828
	.long	0                       @ double 1.721956e-13
	.long	1028144128
	.long	3723039083              @ double 1.336045e+00
	.long	1073045616
	.long	0                       @ double 3.674838e-14
	.long	1025814528
	.long	917842398               @ double 1.339668e+00
	.long	1073049415
	.long	0                       @ double 1.232903e-13
	.long	1027693056
	.long	3689071630              @ double 1.343300e+00
	.long	1073053223
	.long	0                       @ double -4.596323e-14
	.long	3173638144
	.long	3566716783              @ double 1.346942e+00
	.long	1073057042
	.long	0                       @ double -3.380629e-14
	.long	3173189632
	.long	671025996               @ double 1.350594e+00
	.long	1073060872
	.long	0                       @ double 2.126077e-13
	.long	1028516864
	.long	3712504871              @ double 1.354256e+00
	.long	1073064711
	.long	0                       @ double -5.551115e-16
	.long	3166961664
	.long	4222122740              @ double 1.357927e+00
	.long	1073068561
	.long	0                       @ double 5.695444e-14
	.long	1026557952
	.long	2321106443              @ double 1.361609e+00
	.long	1073072422
	.long	0                       @ double -4.046763e-14
	.long	3173435392
	.long	2425982527              @ double 1.365301e+00
	.long	1073076293
	.long	0                       @ double 1.605938e-13
	.long	1028037120
	.long	363667681               @ double 1.369002e+00
	.long	1073080175
	.long	0                       @ double -2.420286e-14
	.long	3172679680
	.long	551349194               @ double 1.372714e+00
	.long	1073084067
	.long	0                       @ double 2.081668e-14
	.long	1024946176
	.long	3111574712              @ double 1.376436e+00
	.long	1073087969
	.long	0                       @ double 4.080070e-14
	.long	1025964032
	.long	3872257813              @ double 1.380168e+00
	.long	1073091882
	.long	0                       @ double 7.549517e-15
	.long	1023475712
	.long	2956612913              @ double 1.383910e+00
	.long	1073095806
	.long	0                       @ double -1.937339e-14
	.long	3172323328
	.long	488188341               @ double 1.387662e+00
	.long	1073099741
	.long	0                       @ double -1.670886e-14
	.long	3172126720
	.long	885834515               @ double 1.391424e+00
	.long	1073103686
	.long	0                       @ double -2.942091e-15
	.long	3169484800
	.long	4273770234              @ double 1.395197e+00
	.long	1073107641
	.long	0                       @ double -4.329870e-14
	.long	3173539840
	.long	2186621847              @ double 1.398980e+00
	.long	1073111608
	.long	0                       @ double 1.022737e-12
	.long	1030880768
	.long	3339203214              @ double 1.402773e+00
	.long	1073115585
	.long	0                       @ double -8.215650e-14
	.long	3174506496
	.long	3561793918              @ double 1.406576e+00
	.long	1073119573
	.long	0                       @ double 2.498002e-15
	.long	1021739008
	.long	2979959921              @ double 1.410390e+00
	.long	1073123572
	.long	0                       @ double -4.524159e-14
	.long	3173611520
	.size	tbl, 4096


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
