.section sysconf_text
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
	.file	"src/conf/sysconf.bc"
	.globl	sysconf
	.align	2
	.type	sysconf,%function
.section bb0_0
sysconf:                                @ @sysconf
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
	.pad	#456
	sub	sp, sp, #456
	mov	r4, r0
	cmp	r4, #248
	bhi	.LBB0_9
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %lor.lhs.false
	ldr	r0, .LCPI0_0
	add	r0, r0, r4, lsl #1
	ldrh	r1, [r0]
	cmp	r1, #0
	beq	.LBB0_9
	b	.LBB0_4
.LCPI0_0:
	.long	sysconf.values
.section bb0_4
.LBB0_4:                                @ %if.else
	lsl	r0, r1, #16
	asr	r0, r0, #16
	cmn	r0, #2
	bgt	.LBB0_10
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.else7
	cmp	r4, #1
	cmpne	r4, #4
	bne	.LBB0_11
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then12
	mov	r1, #255
	orr	r1, r1, #16128
	and	r0, r0, r1
	add	r1, sp, #440
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then12
	bl	getrlimit
	ldr	r0, [sp, #440]
	ldr	r1, [sp, #444]
	lsr	r2, r0, #31
	orr	r2, r2, r1, lsl #1
	orr	r1, r2, r1, lsr #31
	cmp	r1, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %return
	mvnne	r0, #-2147483648
	b	.LBB0_10
.section bb0_9
.LBB0_9:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	add	sp, sp, #456
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb0_11
.LBB0_11:                               @ %if.end21
	and	r1, r1, #255
	sub	r1, r1, #1
	cmp	r1, #9
	bhi	.LBB0_10
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end21
	mov	r0, #105
	lsl	r1, r1, #2
	adr	r2, .LJTI0_0_0
	orr	r0, r0, #200704
	ldr	pc, [r1, r2]
.LJTI0_0_0:
	.long	.LBB0_10
	.long	.LBB0_23
	.long	.LBB0_24
	.long	.LBB0_25
	.long	.LBB0_26
	.long	.LBB0_13
	.long	.LBB0_13
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_27
.section bb0_13
.LBB0_13:                               @ %sw.bb29
	add	r4, sp, #312
	mov	r1, #128
	mov	r2, #0
	mov	r5, #0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %sw.bb29
	mov	r0, r4
	bl	__aeabi_memset
	mov	r0, #1
	mov	r7, #242
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %sw.bb29
	mov	r1, #128
	mov	r2, r4
	strb	r0, [sp, #312]
	mov	r0, #0
	@APP
	svc	#0
	@NO_APP
	mov	r1, #0
	mov	r0, #0
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %for.cond33.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_17 Depth 2
	ldrb	r2, [r4, r1]
	cmp	r2, #0
	beq	.LBB0_19
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %for.inc
                                        @   Parent Loop BB0_16 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	and	r2, r2, #255
	add	r0, r0, #1
	add	r3, r2, #255
	ands	r2, r3, r2
	bne	.LBB0_17
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %for.cond33.for.inc43_crit_edge
                                        @   in Loop: Header=BB0_16 Depth=1
	strb	r5, [r4, r1]
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %for.inc43
                                        @   in Loop: Header=BB0_16 Depth=1
	add	r1, r1, #1
	cmp	r1, #128
	bne	.LBB0_16
	b	.LBB0_10
.section bb0_20
.LBB0_20:                               @ %sw.bb46
	mov	r0, sp
	bl	__lsysinfo
	ldr	r0, [sp, #52]
	cmp	r0, #0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %sw.bb46
	moveq	r0, #1
	streq	r0, [sp, #52]
	cmp	r4, #85
	bne	.LBB0_28
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.then54
	ldr	r1, [sp, #16]
	b	.LBB0_29
.section bb0_23
.LBB0_23:                               @ %sw.bb25
	mov	r0, #131072
	b	.LBB0_10
.section bb0_24
.LBB0_24:                               @ %sw.bb26
	mov	r0, #32768
	b	.LBB0_10
.section bb0_25
.LBB0_25:                               @ %sw.bb27
	mov	r0, #4096
	b	.LBB0_10
.section bb0_26
.LBB0_26:                               @ %sw.bb28
	mvn	r0, #-2147483648
	b	.LBB0_10
.section bb0_27
.LBB0_27:                               @ %if.end21.cleanup_crit_edge
	mov	r0, #0
	b	.LBB0_10
.section bb0_28
.LBB0_28:                               @ %if.else56
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #28]
	add	r1, r2, r1
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end58
	umull	r2, r3, r0, r1
	mov	r1, #0
	lsr	r0, r2, #12
	cmp	r1, r3, lsr #11
	orr	r0, r0, r3, lsl #20
	b	.LBB0_8
.Ltmp0:
	.size	sysconf, .Ltmp0-sysconf
	.cantunwind
	.fnend

	.type	sysconf.values,%object  @ @sysconf.values
	.section	.rodata,"a",%progbits
	.align	1
sysconf.values:
	.short	65282                   @ 0xff02
	.short	32774                   @ 0x8006
	.short	100                     @ 0x64
	.short	32                      @ 0x20
	.short	32775                   @ 0x8007
	.short	65535                   @ 0xffff
	.short	6                       @ 0x6
	.short	1                       @ 0x1
	.short	1                       @ 0x1
	.short	1                       @ 0x1
	.short	65535                   @ 0xffff
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65290                   @ 0xff0a
	.short	32                      @ 0x20
	.short	65535                   @ 0xffff
	.short	65283                   @ 0xff03
	.short	65281                   @ 0xff01
	.short	65284                   @ 0xff04
	.short	30                      @ 0x1e
	.short	256                     @ 0x100
	.short	65285                   @ 0xff05
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	99                      @ 0x63
	.short	2048                    @ 0x800
	.short	99                      @ 0x63
	.short	1000                    @ 0x3e8
	.short	2                       @ 0x2
	.short	0                       @ 0x0
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	255                     @ 0xff
	.short	0                       @ 0x0
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	1024                    @ 0x400
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	256                     @ 0x100
	.short	32                      @ 0x20
	.short	4                       @ 0x4
	.short	128                     @ 0x80
	.short	2048                    @ 0x800
	.short	65535                   @ 0xffff
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65281                   @ 0xff01
	.short	65286                   @ 0xff06
	.short	65287                   @ 0xff07
	.short	65288                   @ 0xff08
	.short	65289                   @ 0xff09
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	700                     @ 0x2bc
	.short	700                     @ 0x2bc
	.short	1                       @ 0x1
	.short	65535                   @ 0xffff
	.short	1                       @ 0x1
	.short	1                       @ 0x1
	.short	65535                   @ 0xffff
	.short	0                       @ 0x0
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	20                      @ 0x14
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	65535                   @ 0xffff
	.short	1                       @ 0x1
	.short	65290                   @ 0xff0a
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	65281                   @ 0xff01
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	1                       @ 0x1
	.short	0                       @ 0x0
	.short	1                       @ 0x1
	.short	0                       @ 0x0
	.short	65281                   @ 0xff01
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	65281                   @ 0xff01
	.short	65535                   @ 0xffff
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	40                      @ 0x28
	.short	65290                   @ 0xff0a
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	1                       @ 0x1
	.short	65290                   @ 0xff0a
	.short	65535                   @ 0xffff
	.short	255                     @ 0xff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	65281                   @ 0xff01
	.short	65281                   @ 0xff01
	.short	65535                   @ 0xffff
	.short	1                       @ 0x1
	.short	65290                   @ 0xff0a
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65290                   @ 0xff0a
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.size	sysconf.values, 498


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
