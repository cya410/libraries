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
	.file	"src/misc/syslog.bc"
	.globl	setlogmask
	.align	2
	.type	setlogmask,%function
setlogmask:                             @ @setlogmask
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	r6, .LCPI0_0
	b	.LBB0_3
.LCPI0_0:
	.long	_MergedGlobals
.LBB0_3:                                @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r6]
	mov	r1, r4
	mov	r2, r6
	mov	r0, r5
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_5
.LBB0_4:                                @ %if.else
	ldr	r0, .LCPI0_1
	ldr	r5, [r0]
	b	.LBB0_5
.LCPI0_1:
	.long	_MergedGlobals
.LBB0_5:                                @ %return
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	setlogmask, .Ltmp0-setlogmask
	.cantunwind
	.fnend

	.globl	closelog
	.align	2
	.type	closelog,%function
closelog:                               @ @closelog
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB1_2
.LBB1_2:                                @ %entry
	add	r1, sp, #4
	mov	r0, #1
	bl	pthread_setcancelstate
	ldr	r0, .LCPI1_0
	b	.LBB1_3
.LCPI1_0:
	.long	_MergedGlobals1
.LBB1_3:                                @ %entry
	add	r4, r0, #4
	mov	r0, r4
	bl	__lock
	ldr	r5, .LCPI1_2
	b	.LBB1_4
.LCPI1_2:
	.long	_MergedGlobals
.LBB1_4:                                @ %entry
	ldr	r0, [r5, #4]
	bl	close
	mvn	r0, #0
	str	r0, [r5, #4]
	b	.LBB1_5
.LBB1_5:                                @ %entry
	mov	r0, r4
	bl	__unlock
	ldr	r0, [sp, #4]
	mov	r1, #0
	bl	pthread_setcancelstate
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	closelog, .Ltmp1-closelog
	.cantunwind
	.fnend

	.globl	openlog
	.align	2
	.type	openlog,%function
openlog:                                @ @openlog
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB2_3
.LBB2_3:                                @ %entry
	mov	r5, r1
	mov	r7, r0
	add	r1, sp, #4
	mov	r0, #1
	b	.LBB2_4
.LBB2_4:                                @ %entry
	mov	r8, r2
	bl	pthread_setcancelstate
	ldr	r10, .LCPI2_0
	add	r9, r10, #4
	b	.LBB2_5
.LCPI2_0:
	.long	_MergedGlobals1
.LBB2_5:                                @ %entry
	mov	r0, r9
	bl	__lock
	cmp	r7, #0
	beq	.LBB2_8
	b	.LBB2_6
.LBB2_6:                                @ %if.then
	mov	r0, r7
	mov	r1, #31
	bl	strnlen
	mov	r6, r0
	b	.LBB2_7
.LBB2_7:                                @ %if.then
	add	r4, r10, #12
	mov	r1, r7
	mov	r0, r4
	mov	r2, r6
	bl	memcpy
	mov	r0, #0
	strb	r0, [r4, r6]
	b	.LBB2_9
.LBB2_8:                                @ %if.else
	mov	r0, #0
	strb	r0, [r10, #12]
	b	.LBB2_9
.LBB2_9:                                @ %if.end
	ldr	r0, .LCPI2_2
	str	r5, [r10]
	tst	r5, #8
	str	r8, [r0, #8]
	beq	.LBB2_11
	b	.LBB2_10
.LCPI2_2:
	.long	_MergedGlobals
.LBB2_10:                               @ %if.end
	ldr	r0, [r0, #4]
	cmp	r0, #0
	bllt	__openlog
	b	.LBB2_11
.LBB2_11:                               @ %if.end5
	mov	r0, r9
	bl	__unlock
	ldr	r0, [sp, #4]
	mov	r1, #0
	bl	pthread_setcancelstate
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp2:
	.size	openlog, .Ltmp2-openlog
	.cantunwind
	.fnend

	.globl	__vsyslog
	.align	2
	.type	__vsyslog,%function
__vsyslog:                              @ @__vsyslog
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	b	.LBB3_2
.LBB3_2:                                @ %entry
	.pad	#116
	sub	sp, sp, #116
	b	.LBB3_3
.LBB3_3:                                @ %entry
	.pad	#1024
	sub	sp, sp, #1024
	mov	r7, r0
	mov	r10, r1
	mov	r0, #0
	cmp	r0, r7, lsr #10
	bne	.LBB3_33
	b	.LBB3_4
.LBB3_4:                                @ %entry
	ldr	r5, .LCPI3_9
	and	r0, r7, #7
	mov	r3, #1
	ldr	r1, [r5]
	and	r0, r1, r3, lsl r0
	cmp	r0, #0
	beq	.LBB3_33
	b	.LBB3_5
.LCPI3_9:
	.long	_MergedGlobals
.LBB3_5:                                @ %if.end
	add	r1, sp, #44
	mov	r0, #1
	str	r2, [sp, #36]           @ 4-byte Spill
	bl	pthread_setcancelstate
	b	.LBB3_6
.LBB3_6:                                @ %if.end
	ldr	r9, .LCPI3_11
	add	r0, r9, #4
	str	r0, [sp, #40]           @ 4-byte Spill
	bl	__lock
	b	.LBB3_7
.LCPI3_11:
	.long	_MergedGlobals1
.LBB3_7:                                @ %if.end
	bl	__errno_location
	mov	r4, r0
	ldr	r0, [r4]
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB3_8
.LBB3_8:                                @ %if.end
	ldr	r0, [r5, #4]
	cmp	r0, #0
	bllt	__openlog
	ldr	r8, [r5, #8]
	b	.LBB3_9
.LBB3_9:                                @ %if.end
	mov	r0, #0
	mov	r11, #0
	bl	time
	add	r5, sp, #1024
	b	.LBB3_10
.LBB3_10:                               @ %if.end
	str	r0, [sp, #1120]
	add	r0, sp, #1120
	add	r6, r5, #52
	mov	r1, r6
	b	.LBB3_11
.LBB3_11:                               @ %if.end
	bl	gmtime_r
	ldr	r2, .LCPI3_12
	add	lr, sp, #1024
	mov	r1, #16
	b	.LBB3_12
.LCPI3_12:
	.long	.L.str
.LBB3_12:                               @ %if.end
	mov	r3, r6
	add	r5, lr, #100
	mov	r0, r5
	bl	strftime
	b	.LBB3_13
.LBB3_13:                               @ %if.end
	ldrb	r0, [r9]
	tst	r7, #1016
	orreq	r7, r7, r8
	tst	r0, #1
	mov	r0, #0
	beq	.LBB3_15
	b	.LBB3_14
.LBB3_14:                               @ %cond.true.i
	bl	getpid
	b	.LBB3_15
.LBB3_15:                               @ %cond.end.i
	cmp	r0, #0
	str	r0, [sp, #16]
	ldr	r0, .LCPI3_13
	add	r1, r9, #12
	b	.LBB3_16
.LCPI3_13:
	.long	.L.str3
.LBB3_16:                               @ %cond.end.i
	ldr	r2, .LCPI3_15
	mov	r3, r7
	moveq	r11, #1
	str	r1, [sp, #8]
	b	.LBB3_17
.LCPI3_15:
	.long	.L.str1
.LBB3_17:                               @ %cond.end.i
	add	r1, sp, #48
	str	r1, [sp, #4]
	str	r5, [sp]
	add	r5, sp, #52
	b	.LBB3_18
.LBB3_18:                               @ %cond.end.i
	mov	r1, #1024
	add	r0, r0, r11
	str	r0, [sp, #20]
	ldr	r0, .LCPI3_14
	b	.LBB3_19
.LCPI3_14:
	.long	.L.str2
.LBB3_19:                               @ %cond.end.i
	add	r0, r0, r11
	str	r0, [sp, #12]
	mov	r0, r5
	bl	snprintf
	b	.LBB3_20
.LBB3_20:                               @ %cond.end.i
	mov	r7, r0
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r3, [sp, #36]           @ 4-byte Reload
	mov	r2, r10
	b	.LBB3_21
.LBB3_21:                               @ %cond.end.i
	rsb	r6, r7, #1024
	mov	r1, r6
	str	r0, [r4]
	add	r0, r5, r7
	bl	vsnprintf
	cmp	r0, #0
	blt	.LBB3_32
	b	.LBB3_22
.LBB3_22:                               @ %if.then23.i
	mov	r4, #255
	cmp	r0, r6
	mov	r3, #0
	orr	r4, r4, #768
	b	.LBB3_23
.LBB3_23:                               @ %if.then23.i
	addlo	r4, r0, r7
	add	r0, r4, r5
	ldrb	r0, [r0, #-1]
	cmp	r0, #10
	b	.LBB3_24
.LBB3_24:                               @ %if.then23.i
	movne	r0, #10
	strbne	r0, [r5, r4]
	ldr	r0, .LCPI3_10
	addne	r4, r4, #1
	b	.LBB3_25
.LCPI3_10:
	.long	_MergedGlobals
.LBB3_25:                               @ %if.then23.i
	add	r5, sp, #52
	mov	r1, r5
	mov	r2, r4
	ldr	r0, [r0, #4]
	bl	send
	cmp	r0, #0
	bge	.LBB3_30
	b	.LBB3_26
.LBB3_26:                               @ %land.lhs.true.i
	ldrb	r0, [r9]
	tst	r0, #2
	beq	.LBB3_30
	b	.LBB3_27
.LBB3_27:                               @ %if.then40.i
	ldr	r0, .LCPI3_16
	ldr	r1, .LCPI3_17
	bl	open
	mov	r6, r0
	cmp	r6, #0
	blt	.LBB3_30
	b	.LBB3_28
.LCPI3_16:
	.long	.L.str4
.LCPI3_17:
	.long	524545                  @ 0x80101
.LBB3_28:                               @ %if.then44.i
	ldr	r0, [sp, #48]
	ldr	r1, .LCPI3_18
	sub	r2, r4, r0
	add	r3, r5, r0
	b	.LBB3_29
.LCPI3_18:
	.long	.L.str5
.LBB3_29:                               @ %if.then44.i
	mov	r0, r6
	bl	dprintf
	mov	r0, r6
	bl	close
	b	.LBB3_30
.LBB3_30:                               @ %if.end51.i
	ldrb	r0, [r9]
	tst	r0, #32
	beq	.LBB3_32
	b	.LBB3_31
.LBB3_31:                               @ %if.then54.i
	ldr	r0, [sp, #48]
	ldr	r1, .LCPI3_19
	sub	r2, r4, r0
	add	r3, r5, r0
	mov	r0, #2
	bl	dprintf
	b	.LBB3_32
.LCPI3_19:
	.long	.L.str5
.LBB3_32:                               @ %_vsyslog.exit
	ldr	r0, [sp, #40]           @ 4-byte Reload
	bl	__unlock
	ldr	r0, [sp, #44]
	mov	r1, #0
	bl	pthread_setcancelstate
	b	.LBB3_33
.LBB3_33:                               @ %return
	add	sp, sp, #116
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	__vsyslog, .Ltmp3-__vsyslog
	.cantunwind
	.fnend

	.globl	syslog
	.align	2
	.type	syslog,%function
syslog:                                 @ @syslog
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB4_2
.LBB4_2:                                @ %entry
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	add	r2, sp, #16
	str	r2, [sp, #4]
	b	.LBB4_3
.LBB4_3:                                @ %entry
	bl	__vsyslog
	add	sp, sp, #8
	pop	{r11, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp4:
	.size	syslog, .Ltmp4-syslog
	.cantunwind
	.fnend

	.align	2
	.type	__openlog,%function
__openlog:                              @ @__openlog
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	mov	r1, #2
	mov	r0, #1
	mov	r2, #0
	orr	r1, r1, #524288
	b	.LBB5_2
.LBB5_2:                                @ %entry
	bl	socket
	mov	r4, r0
	cmp	r4, #0
	blt	.LBB5_5
	b	.LBB5_3
.LBB5_3:                                @ %if.end
	ldr	r1, .LCPI5_0
	mov	r0, r4
	mov	r2, #12
	bl	connect
	cmp	r0, #0
	blt	.LBB5_6
	b	.LBB5_4
.LCPI5_0:
	.long	log_addr
.LBB5_4:                                @ %if.else
	ldr	r0, .LCPI5_2
	str	r4, [r0, #4]
	b	.LBB5_5
.LCPI5_2:
	.long	_MergedGlobals
.LBB5_5:                                @ %if.end5
	pop	{r4, lr}
	mov	pc, lr
.LBB5_6:                                @ %if.then3
	mov	r0, r4
	pop	{r4, lr}
	b	close
.Ltmp5:
	.size	__openlog, .Ltmp5-__openlog
	.cantunwind
	.fnend

	.type	log_addr,%object        @ @log_addr
	.section	.rodata,"a",%progbits
	.align	1
log_addr:
	.short	1                       @ 0x1
	.asciz	"/dev/log"
	.zero	1
	.size	log_addr, 12

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%b %e %T"
	.size	.L.str, 9

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"<%d>%s %n%s%s%.0d%s: "
	.size	.L.str1, 22

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"["
	.size	.L.str2, 2

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"]"
	.size	.L.str3, 2

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"/dev/console"
	.size	.L.str4, 13

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"%.*s"
	.size	.L.str5, 5

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.data
	.align	2
_MergedGlobals:
	.long	255                     @ 0xff
	.long	4294967295              @ 0xffffffff
	.long	8                       @ 0x8
	.size	_MergedGlobals, 12

	.type	_MergedGlobals1,%object @ @_MergedGlobals1
	.local	_MergedGlobals1
	.comm	_MergedGlobals1,44,16
	.hidden	__lock
	.hidden	__unlock
	.hidden	__a_cas

	.weak	vsyslog
vsyslog = __vsyslog
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
