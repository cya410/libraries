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
	.file	"src/locale/langinfo.bc"
	.globl	__nl_langinfo_l
	.align	2
	.type	__nl_langinfo_l,%function
__nl_langinfo_l:                        @ @__nl_langinfo_l
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	mov	r2, r0
	cmp	r2, #14
	bne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	r0, .LCPI0_5
	b	.LBB0_18
.LCPI0_5:
	.long	.L.str
.LBB0_2:                                @ %if.end
	asr	r12, r2, #16
	mov	r0, #0
	sub	lr, r12, #1
	cmp	lr, #4
	bhi	.LBB0_18
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	mov	r3, #255
	lsl	lr, lr, #2
	orr	r3, r3, #65280
	and	r2, r2, r3
	adr	r3, .LJTI0_0_0
	ldr	pc, [lr, r3]
.LJTI0_0_0:
	.long	.LBB0_4
	.long	.LBB0_6
	.long	.LBB0_18
	.long	.LBB0_8
	.long	.LBB0_10
.LBB0_4:                                @ %sw.bb
	cmp	r2, #1
	bhi	.LBB0_18
	b	.LBB0_5
.LBB0_5:
	ldr	r0, .LCPI0_9
	b	.LBB0_12
.LCPI0_9:
	.long	c_numeric
.LBB0_6:                                @ %sw.bb4
	cmp	r2, #49
	bhi	.LBB0_18
	b	.LBB0_7
.LBB0_7:
	ldr	r0, .LCPI0_8
	b	.LBB0_12
.LCPI0_8:
	.long	c_time
.LBB0_8:                                @ %sw.bb8
	cmp	r2, #0
	bne	.LBB0_18
	b	.LBB0_9
.LBB0_9:
	ldr	r0, .LCPI0_7
	b	.LBB0_16
.LCPI0_7:
	.long	.L.str1
.LBB0_10:                               @ %sw.bb12
	cmp	r2, #3
	bhi	.LBB0_18
	b	.LBB0_11
.LBB0_11:
	ldr	r0, .LCPI0_6
	b	.LBB0_12
.LCPI0_6:
	.long	c_messages
.LBB0_12:                               @ %for.cond.preheader
	cmp	r2, #0
	beq	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               @ %for.cond16
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r0], #1
	cmp	r3, #0
	bne	.LBB0_13
	b	.LBB0_14
.LBB0_14:                               @ %for.inc19
                                        @   in Loop: Header=BB0_13 Depth=1
	subs	r2, r2, #1
	bne	.LBB0_13
	b	.LBB0_15
.LBB0_15:                               @ %for.end21
	cmp	r12, #1
	beq	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               @ %land.lhs.true
	ldrb	r2, [r0]
	cmp	r2, #0
	beq	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               @ %if.then24
	lsl	r2, r12, #2
	ldr	r1, [r2, r1]
	pop	{r11, lr}
	b	__lctrans
.LBB0_18:                               @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__nl_langinfo_l, .Ltmp0-__nl_langinfo_l
	.cantunwind
	.fnend

	.globl	__nl_langinfo
	.align	2
	.type	__nl_langinfo,%function
__nl_langinfo:                          @ @__nl_langinfo
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r2, r0
	ldr	r0, .LCPI1_0
	ldr	r1, [r0, #44]
	cmp	r1, #0
	beq	.LBB1_3
	b	.LBB1_2
.LCPI1_0:
	.long	__libc
.LBB1_2:                                @ %cond.true
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	ldr	r1, [r1, #-32]
	b	.LBB1_4
.LBB1_3:
	add	r1, r0, #52
	b	.LBB1_4
.LBB1_4:                                @ %cond.end
	mov	r0, r2
	pop	{r11, lr}
	b	__nl_langinfo_l
.Ltmp1:
	.size	__nl_langinfo, .Ltmp1-__nl_langinfo
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"UTF-8"
	.size	.L.str, 6

	.type	c_numeric,%object       @ @c_numeric
	.section	.rodata,"a",%progbits
c_numeric:
	.asciz	".\000"
	.size	c_numeric, 3

	.type	c_time,%object          @ @c_time
c_time:
	.asciz	"Sun\000Mon\000Tue\000Wed\000Thu\000Fri\000Sat\000Sunday\000Monday\000Tuesday\000Wednesday\000Thursday\000Friday\000Saturday\000Jan\000Feb\000Mar\000Apr\000May\000Jun\000Jul\000Aug\000Sep\000Oct\000Nov\000Dec\000January\000February\000March\000April\000May\000June\000July\000August\000September\000October\000November\000December\000AM\000PM\000%a %b %e %T %Y\000%m/%d/%y\000%H:%M:%S\000%I:%M:%S %p\000\000\000%m/%d/%y\0000123456789\000%a %b %e %T %Y\000%H:%M:%S"
	.size	c_time, 316

	.type	.L.str1,%object         @ @.str1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str1:
	.zero	1
	.size	.L.str1, 1

	.type	c_messages,%object      @ @c_messages
	.section	.rodata,"a",%progbits
c_messages:
	.asciz	"^[yY]\000^[nN]\000yes\000no"
	.size	c_messages, 19

	.hidden	__libc

	.weak	nl_langinfo
nl_langinfo = __nl_langinfo
	.weak	nl_langinfo_l
nl_langinfo_l = __nl_langinfo_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
