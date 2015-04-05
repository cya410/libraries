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
	.file	"src/env/__libc_start_main.bc"
	.align	2
	.type	dummy1,%function
dummy1:                                 @ @dummy1
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy1, .Ltmp0-dummy1
	.cantunwind
	.fnend

	.globl	__init_libc
	.align	2
	.type	__init_libc,%function
__init_libc:                            @ @__init_libc
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#176
	sub	sp, sp, #176
	add	r5, sp, #24
	mov	r4, r1
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r6, r0
	mov	r1, #152
	mov	r2, #0
	mov	r0, r5
	bl	__aeabi_memset
	ldr	r0, .LCPI1_8
	str	r6, [r0]
	b	.LBB1_4
.LCPI1_8:
	.long	__environ
.LBB1_4:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6], #4
	cmp	r0, #0
	bne	.LBB1_4
	b	.LBB1_5
.LBB1_5:                                @ %for.end
	ldr	r8, .LCPI1_9
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	b	.LBB1_6
.LCPI1_9:
	.long	__libc
.LBB1_6:                                @ %for.end
	str	r6, [r8, #16]
	ldr	r0, [r6], #4
	cmp	r0, #0
	beq	.LBB1_10
	b	.LBB1_7
.LBB1_7:                                @ %for.body5
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, #37
	ldrls	r1, [r6]
	strls	r1, [r5, r0, lsl #2]
	add	r1, r6, #8
	b	.LBB1_8
.LBB1_8:                                @ %for.body5
                                        @   in Loop: Header=BB1_7 Depth=1
	ldr	r0, [r6, #4]
	mov	r6, r1
	cmp	r0, #0
	bne	.LBB1_7
	b	.LBB1_9
.LBB1_9:                                @ %for.cond2.for.end12_crit_edge
	ldr	r1, [sp, #48]
	ldr	r3, [sp, #88]
	ldr	r2, [sp, #152]
	b	.LBB1_10
.LBB1_10:                               @ %for.end12
	ldr	r0, .LCPI1_10
	str	r1, [r8, #40]
	cmp	r4, #0
	str	r3, [r0]
	ldr	r0, .LCPI1_11
	str	r2, [r0]
	beq	.LBB1_16
	b	.LBB1_11
.LCPI1_10:
	.long	__hwcap
.LCPI1_11:
	.long	__sysinfo
.LBB1_11:                               @ %if.then17
	ldr	r0, .LCPI1_12
	mov	r1, #0
	str	r4, [r0]
	ldr	r0, .LCPI1_13
	str	r4, [r0]
	b	.LBB1_13
.LCPI1_12:
	.long	__progname_full
.LCPI1_13:
	.long	__progname
.LBB1_12:                               @ %if.then25
                                        @   in Loop: Header=BB1_13 Depth=1
	add	r1, r1, #1
	add	r2, r4, r1
	str	r2, [r0]
	b	.LBB1_13
.LBB1_13:                               @ %for.cond18
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r4, r1]
	cmp	r2, #47
	beq	.LBB1_12
	b	.LBB1_14
.LBB1_14:                               @ %for.cond18
                                        @   in Loop: Header=BB1_13 Depth=1
	cmp	r2, #0
	beq	.LBB1_16
	b	.LBB1_15
.LBB1_15:                               @ %for.cond18.for.inc29_crit_edge
                                        @   in Loop: Header=BB1_13 Depth=1
	add	r1, r1, #1
	b	.LBB1_13
.LBB1_16:                               @ %if.end32
	add	r0, sp, #24
	bl	__init_tls
	ldr	r0, [sp, #124]
	bl	__init_ssp
	b	.LBB1_17
.LBB1_17:                               @ %if.end32
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #72]
	cmp	r0, r1
	bne	.LBB1_19
	b	.LBB1_18
.LBB1_18:                               @ %land.lhs.true
	ldr	r0, [sp, #76]
	ldr	r1, [sp, #80]
	cmp	r0, r1
	ldreq	r0, [sp, #116]
	cmpeq	r0, #0
	beq	.LBB1_27
	b	.LBB1_19
.LBB1_19:                               @ %if.end46
	ldr	r0, .LCPI1_14
	mov	r7, #168
	ldm	r0, {r1, r2, r3, r6}
	ldr	r5, [r0, #16]
	b	.LBB1_20
.LCPI1_14:
	.long	.L__init_libc.pfd
.LBB1_20:                               @ %if.end46
	ldr	r0, [r0, #20]
	str	r0, [sp, #20]
	str	r5, [sp, #16]
	stm	sp, {r1, r2, r3, r6}
	b	.LBB1_21
.LBB1_21:                               @ %if.end46
	mov	r3, sp
	mov	r1, #3
	mov	r2, #0
	mov	r6, #0
	b	.LBB1_22
.LBB1_22:                               @ %if.end46
	mvn	r5, #5
	mov	r0, r3
	@APP
	svc	#0
	@NO_APP
	ldr	r2, .LCPI1_15
	mov	r1, #2
	mov	r7, #5
	orr	r1, r1, #131072
	b	.LBB1_23
.LCPI1_15:
	.long	.L.str
.LBB1_23:                               @ %for.body51
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r3, -r5]
	tst	r0, #32
	beq	.LBB1_25
	b	.LBB1_24
.LBB1_24:                               @ %if.then55
                                        @   in Loop: Header=BB1_23 Depth=1
	mov	r0, r2
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	strblt	r6, [r6]
	b	.LBB1_25
.LBB1_25:                               @ %for.inc62
                                        @   in Loop: Header=BB1_23 Depth=1
	sub	r5, r5, #8
	cmn	r5, #30
	bne	.LBB1_23
	b	.LBB1_26
.LBB1_26:                               @ %for.end64
	mov	r0, #1
	str	r0, [r8, #12]
	b	.LBB1_27
.LBB1_27:                               @ %cleanup
	add	sp, sp, #176
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	__init_libc, .Ltmp1-__init_libc
	.cantunwind
	.fnend

	.globl	__libc_start_main
	.align	2
	.type	__libc_start_main,%function
__libc_start_main:                      @ @__libc_start_main
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	mov	r4, r0
	add	r0, r2, r1, lsl #2
	add	r3, r0, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	bl	exit
.Ltmp2:
	.size	__libc_start_main, .Ltmp2-__libc_start_main
	.cantunwind
	.fnend

	.hidden	__libc
	.type	.L__init_libc.pfd,%object @ @__init_libc.pfd
	.section	.rodata,"a",%progbits
	.align	2
.L__init_libc.pfd:
	.zero	8
	.long	1                       @ 0x1
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.long	2                       @ 0x2
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.size	.L__init_libc.pfd, 24

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/dev/null"
	.size	.L.str, 10


	.weak	__init_ssp
__init_ssp = dummy1
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
