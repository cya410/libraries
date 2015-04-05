.section getopt_text
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
	.file	"src/misc/getopt.bc"
	.globl	__getopt_msg
	.align	2
	.type	__getopt_msg,%function
.section bb0_0
__getopt_msg:                           @ @__getopt_msg
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
	mov	r0, r1
	mov	r8, r3
	mov	r6, r2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	bl	__lctrans_cur
	mov	r7, r0
	ldr	r0, .LCPI0_0
	ldr	r4, [r0]
	b	.LBB0_4
.LCPI0_0:
	.long	stderr
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, r4
	bl	flockfile
	mov	r0, r5
	bl	strlen
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r1, r0
	mov	r0, r5
	mov	r2, #1
	mov	r3, r4
	bl	fwrite
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.lhs.true
	mov	r0, r7
	bl	strlen
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.lhs.true
	mov	r2, #1
	mov	r3, r4
	bl	fwrite
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %land.lhs.true6
	mov	r0, r6
	mov	r1, r8
	mov	r2, #1
	mov	r3, r4
	bl	fwrite
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %land.rhs
	mov	r0, #10
	mov	r1, r4
	bl	putc
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %land.end
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, lr}
	b	funlockfile
.Ltmp0:
	.size	__getopt_msg, .Ltmp0-__getopt_msg
	.cantunwind
	.fnend

	.globl	getopt
	.align	2
	.type	getopt,%function
.section bb1_0
getopt:                                 @ @getopt
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
	.pad	#20
	sub	sp, sp, #20
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	ldr	r11, .LCPI1_9
	mov	r10, r1
	mov	r6, r0
	b	.LBB1_4
.LCPI1_9:
	.long	optind
.section bb1_4
.LBB1_4:                                @ %entry
	ldr	r1, .LCPI1_8
	mov	r5, r2
	ldr	r0, [r11]
	cmp	r0, #0
	beq	.LBB1_6
	b	.LBB1_5
.LCPI1_8:
	.long	__optreset
.section bb1_5
.LBB1_5:                                @ %entry
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.LBB1_7
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.then
	mov	r0, #0
	str	r0, [r1]
	ldr	r1, .LCPI1_10
	str	r0, [r1]
	mov	r0, #1
	str	r0, [r11]
	b	.LBB1_7
.LCPI1_10:
	.long	__optpos
.section bb1_7
.LBB1_7:                                @ %if.end
	mvn	r7, #0
	cmp	r0, r6
	bge	.LBB1_15
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %lor.lhs.false2
	ldr	r1, [r10, r0, lsl #2]
	cmp	r1, #0
	beq	.LBB1_15
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %if.end5
	ldrb	r2, [r1]
	cmp	r2, #45
	bne	.LBB1_13
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.end18
	ldrb	r2, [r1, #1]
	cmp	r2, #0
	beq	.LBB1_15
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.end18
	cmp	r2, #45
	ldrbeq	r2, [r1, #2]
	cmpeq	r2, #0
	bne	.LBB1_16
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then32
	add	r0, r0, #1
	str	r0, [r11]
	b	.LBB1_15
.section bb1_13
.LBB1_13:                               @ %if.then10
	ldrb	r2, [r5]
	cmp	r2, #45
	bne	.LBB1_15
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %if.then15
	add	r0, r0, #1
	mov	r7, #1
	str	r0, [r11]
	ldr	r0, .LCPI1_14
	str	r1, [r0]
	b	.LBB1_15
.LCPI1_14:
	.long	optarg
.section bb1_15
.LBB1_15:                               @ %return
	mov	r0, r7
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb1_16
.LBB1_16:                               @ %if.end34
	ldr	r4, .LCPI1_11
	mov	r2, #4
	ldr	r0, [r4]
	cmp	r0, #0
	b	.LBB1_17
.LCPI1_11:
	.long	__optpos
.section bb1_17
.LBB1_17:                               @ %if.end34
	moveq	r0, #1
	streq	r0, [r4]
	add	r1, r1, r0
	add	r0, sp, #16
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %if.end34
	bl	mbtowc
	mov	r8, r0
	cmp	r8, #0
	blt	.LBB1_20
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %if.end38.if.end43_crit_edge
	ldr	r2, [sp, #16]
	b	.LBB1_21
.section bb1_20
.LBB1_20:                               @ %if.then42
	mov	r2, #253
	mov	r8, #1
	orr	r2, r2, #65280
	str	r2, [sp, #16]
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %if.end43
	ldr	r3, [r11]
	ldr	r1, [r4]
	ldr	r7, .LCPI1_17
	ldr	r0, [r10, r3, lsl #2]
	b	.LBB1_22
.LCPI1_17:
	.long	optopt
.section bb1_22
.LBB1_22:                               @ %if.end43
	str	r2, [r7]
	add	r2, r1, r8
	str	r2, [r4]
	ldrb	r2, [r0, r2]
	cmp	r2, #0
	bne	.LBB1_24
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %if.then49
	add	r2, r3, #1
	str	r2, [r11]
	mov	r2, #0
	str	r2, [r4]
	b	.LBB1_24
.section bb1_24
.LBB1_24:                               @ %if.end51
	ldrb	r2, [r5]
	cmp	r2, #43
	cmpne	r2, #45
	bne	.LBB1_26
	b	.LBB1_25
.section bb1_25
.LBB1_25:                               @ %if.then61
	add	r5, r5, #1
	b	.LBB1_26
.section bb1_26
.LBB1_26:                               @ %if.end62
	add	r0, r0, r1
	mov	r9, #0
	add	r4, sp, #12
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r9, [sp, #12]
	b	.LBB1_27
.section bb1_27
.LBB1_27:                               @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r5, r9
	mov	r0, r4
	mov	r2, #4
	bl	mbtowc
	b	.LBB1_28
.section bb1_28
.LBB1_28:                               @ %do.body
                                        @   in Loop: Header=BB1_27 Depth=1
	cmp	r0, #1
	mov	r1, r0
	ldr	r7, [sp, #12]
	movlt	r1, #1
	b	.LBB1_29
.section bb1_29
.LBB1_29:                               @ %do.body
                                        @   in Loop: Header=BB1_27 Depth=1
	cmp	r0, #0
	add	r9, r1, r9
	ldr	r1, [sp, #16]
	beq	.LBB1_31
	b	.LBB1_30
.section bb1_30
.LBB1_30:                               @ %land.rhs
                                        @   in Loop: Header=BB1_27 Depth=1
	cmp	r7, r1
	bne	.LBB1_27
	b	.LBB1_32
.section bb1_31
.LBB1_31:                               @ %do.end
	cmp	r7, r1
	mov	r7, r1
	bne	.LBB1_36
	b	.LBB1_32
.section bb1_32
.LBB1_32:                               @ %if.end86
	ldrb	r0, [r5, r9]
	cmp	r0, #58
	bne	.LBB1_15
	b	.LBB1_33
.section bb1_33
.LBB1_33:                               @ %if.then91
	add	r0, r9, #1
	ldrb	r1, [r5, r0]
	cmp	r1, #58
	bne	.LBB1_39
	b	.LBB1_34
.section bb1_34
.LBB1_34:                               @ %if.end113
	ldr	r1, .LCPI1_15
	ldr	r3, .LCPI1_12
	mov	r2, #0
	str	r2, [r1]
	b	.LBB1_35
.LCPI1_12:
	.long	__optpos
.LCPI1_15:
	.long	optarg
.section bb1_35
.LBB1_35:                               @ %if.end113
	ldrb	r1, [r5, r0]
	ldr	r0, [r3]
	cmp	r1, #58
	cmpeq	r0, #0
	beq	.LBB1_15
	b	.LBB1_41
.section bb1_36
.LBB1_36:                               @ %if.then76
	ldrb	r0, [r5]
	mov	r7, #63
	cmp	r0, #58
	ldrne	r0, .LCPI1_18
	ldrne	r0, [r0]
	cmpne	r0, #0
	beq	.LBB1_15
	b	.LBB1_37
.LCPI1_18:
	.long	opterr
.section bb1_37
.LBB1_37:                               @ %if.then83
	ldr	r0, [r10]
	ldr	r1, .LCPI1_20
	b	.LBB1_38
.LCPI1_20:
	.long	.L.str
.section bb1_38
.LBB1_38:                               @ %return
	ldr	r2, [sp, #8]            @ 4-byte Reload
	mov	r3, r8
	bl	__getopt_msg
	b	.LBB1_15
.section bb1_39
.LBB1_39:                               @ %if.else98
	ldr	r0, [r11]
	ldr	r3, .LCPI1_13
	cmp	r0, r6
	bge	.LBB1_43
	b	.LBB1_40
.LCPI1_13:
	.long	__optpos
.section bb1_40
.LBB1_40:                               @ %if.end113.thread
	ldr	r0, [r3]
	b	.LBB1_41
.section bb1_41
.LBB1_41:                               @ %if.then121
	ldr	r1, [r11]
	add	r2, r1, #1
	str	r2, [r11]
	ldr	r1, [r10, r1, lsl #2]
	b	.LBB1_42
.section bb1_42
.LBB1_42:                               @ %if.then121
	add	r0, r1, r0
	ldr	r1, .LCPI1_16
	str	r0, [r1]
	mov	r0, #0
	str	r0, [r3]
	b	.LBB1_15
.LCPI1_16:
	.long	optarg
.section bb1_43
.LBB1_43:                               @ %if.then101
	ldrb	r0, [r5]
	mov	r7, #58
	cmp	r0, #58
	beq	.LBB1_15
	b	.LBB1_44
.section bb1_44
.LBB1_44:                               @ %if.end107
	ldr	r0, .LCPI1_19
	mov	r7, #63
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB1_15
	b	.LBB1_45
.LCPI1_19:
	.long	opterr
.section bb1_45
.LBB1_45:                               @ %if.then109
	ldr	r0, [r10]
	ldr	r1, .LCPI1_21
	b	.LBB1_38
.LCPI1_21:
	.long	.L.str1
.Ltmp1:
	.size	getopt, .Ltmp1-getopt
	.cantunwind
	.fnend

	.type	optind,%object          @ @optind
	.data
	.globl	optind
	.align	2
optind:
	.long	1                       @ 0x1
	.size	optind, 4

	.type	opterr,%object          @ @opterr
	.globl	opterr
	.align	2
opterr:
	.long	1                       @ 0x1
	.size	opterr, 4

	.type	__optreset,%object      @ @__optreset
	.bss
	.globl	__optreset
	.align	2
__optreset:
	.long	0                       @ 0x0
	.size	__optreset, 4

	.type	__optpos,%object        @ @__optpos
	.comm	__optpos,4,4
	.type	optarg,%object          @ @optarg
	.comm	optarg,4,4
	.type	optopt,%object          @ @optopt
	.comm	optopt,4,4
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	": unrecognized option: "
	.size	.L.str, 24

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	": option requires an argument: "
	.size	.L.str1, 32


	.weak	optreset
optreset = __optreset
	.weak	__posix_getopt
__posix_getopt = getopt
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
