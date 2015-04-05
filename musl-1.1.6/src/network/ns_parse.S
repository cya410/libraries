.section ns_parse_text
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
	.file	"src/network/ns_parse.bc"
	.globl	ns_get16
	.align	2
	.type	ns_get16,%function
.section bb0_0
ns_get16:                               @ @ns_get16
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldrb	r1, [r0]
	ldrb	r0, [r0, #1]
	orr	r0, r0, r1, lsl #8
	mov	pc, lr
.Ltmp0:
	.size	ns_get16, .Ltmp0-ns_get16
	.cantunwind
	.fnend

	.globl	ns_get32
	.align	2
	.type	ns_get32,%function
.section bb1_0
ns_get32:                               @ @ns_get32
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldrb	r2, [r0, #1]
	ldrb	r1, [r0]
	ldrb	r3, [r0, #2]
	ldrb	r0, [r0, #3]
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	lsl	r2, r2, #16
	orr	r1, r2, r1, lsl #24
	orr	r1, r1, r3, lsl #8
	orr	r0, r1, r0
	mov	pc, lr
.Ltmp1:
	.size	ns_get32, .Ltmp1-ns_get32
	.cantunwind
	.fnend

	.globl	ns_put16
	.align	2
	.type	ns_put16,%function
.section bb2_0
ns_put16:                               @ @ns_put16
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	lsr	r2, r0, #8
	strb	r2, [r1]
	strb	r0, [r1, #1]
	mov	pc, lr
.Ltmp2:
	.size	ns_put16, .Ltmp2-ns_put16
	.cantunwind
	.fnend

	.globl	ns_put32
	.align	2
	.type	ns_put32,%function
.section bb3_0
ns_put32:                               @ @ns_put32
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	lsr	r2, r0, #24
	strb	r2, [r1]
	lsr	r2, r0, #16
	strb	r2, [r1, #1]
	lsr	r2, r0, #8
	strb	r2, [r1, #2]
	strb	r0, [r1, #3]
	mov	pc, lr
.Ltmp3:
	.size	ns_put32, .Ltmp3-ns_put32
	.cantunwind
	.fnend

	.globl	ns_initparse
	.align	2
	.type	ns_initparse,%function
.section bb4_0
ns_initparse:                           @ @ns_initparse
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	mov	r4, r2
	add	r2, r0, r1
	cmp	r1, #12
	stm	r4, {r0, r2}
	blt	.LBB4_15
	b	.LBB4_3
.section bb4_3
.LBB4_3:                                @ %if.end
	ldrb	r1, [r0]
	ldrb	r2, [r0, #1]
	add	r7, r0, #4
	mov	r3, #0
	b	.LBB4_4
.section bb4_4
.LBB4_4:                                @ %if.end
	orr	r1, r2, r1, lsl #8
	strh	r1, [r4, #8]
	ldrb	r1, [r0, #2]
	ldrb	r2, [r0, #3]
	orr	r1, r2, r1, lsl #8
	add	r2, r4, #12
	strh	r1, [r4, #10]
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r1, r7
	ldrb	r6, [r1, r3]!
	ldrb	r1, [r1, #1]
	orr	r1, r1, r6, lsl #8
	b	.LBB4_6
.section bb4_6
.LBB4_6:                                @ %for.body
                                        @   in Loop: Header=BB4_5 Depth=1
	add	r6, r2, r3
	add	r3, r3, #2
	strh	r1, [r6]
	cmp	r3, #8
	bne	.LBB4_5
	b	.LBB4_7
.section bb4_7
.LBB4_7:                                @ %for.cond13.preheader
	add	r5, r0, #12
	mov	r8, #0
	mov	r7, #12
	mov	r6, #0
	b	.LBB4_8
.section bb4_8
.LBB4_8:                                @ %for.body16
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r4, r7
	add	r0, r4, r6, lsl #2
	ldrh	r2, [r1]
	cmp	r2, #0
	beq	.LBB4_12
	b	.LBB4_9
.section bb4_9
.LBB4_9:                                @ %if.then19
                                        @   in Loop: Header=BB4_8 Depth=1
	str	r5, [r0, #20]
	mov	r0, r5
	mov	r2, r6
	ldrh	r3, [r1]
	b	.LBB4_10
.section bb4_10
.LBB4_10:                               @ %if.then19
                                        @   in Loop: Header=BB4_8 Depth=1
	ldr	r1, [r4, #4]
	bl	ns_skiprr
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	blt	.LBB4_16
	b	.LBB4_11
.section bb4_11
.LBB4_11:                               @ %if.end29
                                        @   in Loop: Header=BB4_8 Depth=1
	add	r5, r5, r1
	b	.LBB4_13
.section bb4_12
.LBB4_12:                               @ %if.else
                                        @   in Loop: Header=BB4_8 Depth=1
	str	r8, [r0, #20]
	b	.LBB4_13
.section bb4_13
.LBB4_13:                               @ %for.inc34
                                        @   in Loop: Header=BB4_8 Depth=1
	add	r6, r6, #1
	add	r7, r7, #2
	cmp	r6, #4
	blt	.LBB4_8
	b	.LBB4_14
.section bb4_14
.LBB4_14:                               @ %for.end36
	ldr	r0, [r4, #4]
	cmp	r5, r0
	beq	.LBB4_17
	b	.LBB4_15
.section bb4_15
.LBB4_15:                               @ %bad
	bl	__errno_location
	mov	r1, #90
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB4_16
.section bb4_16
.LBB4_16:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb4_17
.LBB4_17:                               @ %if.end41
	mov	r1, #4
	mvn	r2, #0
	mov	r0, #0
	str	r1, [r4, #36]
	str	r2, [r4, #40]
	str	r0, [r4, #44]
	b	.LBB4_16
.Ltmp4:
	.size	ns_initparse, .Ltmp4-ns_initparse
	.cantunwind
	.fnend

	.globl	ns_skiprr
	.align	2
	.type	ns_skiprr,%function
.section bb5_0
ns_skiprr:                              @ @ns_skiprr
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %entry
	mov	r8, r0
	mov	r4, r3
	mov	r6, r2
	mov	r7, r1
	mov	r5, r8
	cmp	r4, #0
	beq	.LBB5_13
	b	.LBB5_3
.section bb5_3
.LBB5_3:                                @ %while.body.lr.ph
	mov	r5, r8
	b	.LBB5_4
.section bb5_4
.LBB5_4:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r7
	bl	dn_skipname
	cmp	r0, #0
	blt	.LBB5_14
	b	.LBB5_5
.section bb5_5
.LBB5_5:                                @ %if.end
                                        @   in Loop: Header=BB5_4 Depth=1
	add	r1, r0, #4
	sub	r2, r7, r5
	cmp	r1, r2
	bgt	.LBB5_14
	b	.LBB5_6
.section bb5_6
.LBB5_6:                                @ %if.end3
                                        @   in Loop: Header=BB5_4 Depth=1
	add	r1, r5, r1
	cmp	r6, #0
	beq	.LBB5_11
	b	.LBB5_7
.section bb5_7
.LBB5_7:                                @ %if.then6
                                        @   in Loop: Header=BB5_4 Depth=1
	sub	r1, r7, r1
	cmp	r1, #6
	blt	.LBB5_14
	b	.LBB5_8
.section bb5_8
.LBB5_8:                                @ %if.end12
                                        @   in Loop: Header=BB5_4 Depth=1
	add	r1, r0, #10
	add	r0, r0, r5
	ldrb	r3, [r0, #8]
	ldrb	r0, [r0, #9]
	b	.LBB5_9
.section bb5_9
.LBB5_9:                                @ %if.end12
                                        @   in Loop: Header=BB5_4 Depth=1
	add	r2, r5, r1
	sub	r2, r7, r2
	orr	r0, r0, r3, lsl #8
	cmp	r0, r2
	bgt	.LBB5_14
	b	.LBB5_10
.section bb5_10
.LBB5_10:                               @ %if.end22
                                        @   in Loop: Header=BB5_4 Depth=1
	add	r0, r0, r1
	add	r5, r5, r0
	b	.LBB5_12
.section bb5_11
.LBB5_11:                               @   in Loop: Header=BB5_4 Depth=1
	mov	r5, r1
	b	.LBB5_12
.section bb5_12
.LBB5_12:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB5_4 Depth=1
	subs	r4, r4, #1
	bne	.LBB5_4
	b	.LBB5_13
.section bb5_13
.LBB5_13:                               @ %while.end
	sub	r0, r8, r5
	b	.LBB5_15
.section bb5_14
.LBB5_14:                               @ %bad
	bl	__errno_location
	mov	r1, #90
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB5_15
.section bb5_15
.LBB5_15:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp5:
	.size	ns_skiprr, .Ltmp5-ns_skiprr
	.cantunwind
	.fnend

	.globl	ns_parserr
	.align	2
	.type	ns_parserr,%function
.section bb6_0
ns_parserr:                             @ @ns_parserr
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB6_1
.section bb6_1
.LBB6_1:                                @ %entry
	b	.LBB6_2
.section bb6_2
.LBB6_2:                                @ %entry
	.pad	#4
	sub	sp, sp, #4
	b	.LBB6_3
.section bb6_3
.LBB6_3:                                @ %entry
	mov	r5, r1
	mov	r8, r3
	mov	r6, r2
	mov	r4, r0
	cmp	r5, #3
	bhi	.LBB6_28
	b	.LBB6_4
.section bb6_4
.LBB6_4:                                @ %if.end
	ldr	r0, [r4, #36]
	cmp	r0, r5
	beq	.LBB6_6
	b	.LBB6_5
.section bb6_5
.LBB6_5:                                @ %if.then3
	mov	r0, #0
	str	r5, [r4, #36]
	str	r0, [r4, #40]
	add	r0, r4, r5, lsl #2
	ldr	r0, [r0, #20]
	str	r0, [r4, #44]
	b	.LBB6_6
.section bb6_6
.LBB6_6:                                @ %if.end5
	cmn	r6, #1
	ldreq	r6, [r4, #40]
	cmp	r6, #0
	blt	.LBB6_28
	b	.LBB6_7
.section bb6_7
.LBB6_7:                                @ %lor.lhs.false11
	add	r9, r4, r5, lsl #1
	ldrh	r0, [r9, #12]!
	cmp	r6, r0
	bge	.LBB6_28
	b	.LBB6_8
.section bb6_8
.LBB6_8:                                @ %if.end16
	ldr	r0, [r4, #40]
	cmp	r6, r0
	bge	.LBB6_10
	b	.LBB6_9
.section bb6_9
.LBB6_9:                                @ %if.then20
	mov	r0, #0
	add	r1, r4, r5, lsl #2
	str	r0, [r4, #40]
	ldr	r1, [r1, #20]
	str	r1, [r4, #44]
	b	.LBB6_10
.section bb6_10
.LBB6_10:                               @ %if.end25
	ldr	r2, [r4, #44]
	cmp	r6, r0
	ble	.LBB6_14
	b	.LBB6_11
.section bb6_11
.LBB6_11:                               @ %if.then29
	ldr	r1, [r4, #4]
	sub	r3, r6, r0
	mov	r0, r2
	mov	r2, r5
	b	.LBB6_12
.section bb6_12
.LBB6_12:                               @ %if.then29
	bl	ns_skiprr
	mvn	r7, #0
	cmp	r0, #0
	blt	.LBB6_29
	b	.LBB6_13
.section bb6_13
.LBB6_13:                               @ %if.end35
	ldr	r1, [r4, #44]
	str	r6, [r4, #40]
	add	r2, r1, r0
	str	r2, [r4, #44]
	b	.LBB6_14
.section bb6_14
.LBB6_14:                               @ %if.end38
	ldm	r4, {r0, r1}
	mov	r3, #1
	orr	r3, r3, #1024
	str	r3, [sp]
	b	.LBB6_15
.section bb6_15
.LBB6_15:                               @ %if.end38
	mov	r3, r8
	bl	ns_name_uncompress
	mvn	r7, #0
	cmp	r0, #0
	blt	.LBB6_29
	b	.LBB6_16
.section bb6_16
.LBB6_16:                               @ %if.end45
	ldr	r12, [r4, #44]
	add	r3, r12, r0
	str	r3, [r4, #44]
	ldr	r2, [r4, #4]
	sub	r6, r2, r3
	cmp	r6, #4
	blt	.LBB6_27
	b	.LBB6_17
.section bb6_17
.LBB6_17:                               @ %if.end53
	add	r6, r3, #2
	add	lr, r3, #4
	cmp	r5, #0
	str	r6, [r4, #44]
	b	.LBB6_18
.section bb6_18
.LBB6_18:                               @ %if.end53
	ldrb	r6, [r12, r0]
	ldrb	r1, [r3, #1]
	orr	r1, r1, r6, lsl #8
	mov	r6, #2
	b	.LBB6_19
.section bb6_19
.LBB6_19:                               @ %if.end53
	orr	r6, r6, #1024
	strh	r1, [r8, r6]
	str	lr, [r4, #44]
	ldrb	r1, [r3, #2]
	b	.LBB6_20
.section bb6_20
.LBB6_20:                               @ %if.end53
	ldrb	r6, [r3, #3]
	orr	r1, r6, r1, lsl #8
	mov	r6, #4
	orr	r6, r6, #1024
	strh	r1, [r8, r6]
	beq	.LBB6_30
	b	.LBB6_21
.section bb6_21
.LBB6_21:                               @ %if.then66
	sub	r1, r2, lr
	cmp	r1, #6
	blt	.LBB6_27
	b	.LBB6_22
.section bb6_22
.LBB6_22:                               @ %if.end75
	add	r1, r3, #8
	add	r0, r0, #10
	str	r1, [r4, #44]
	ldrb	r1, [r3, #5]
	b	.LBB6_23
.section bb6_23
.LBB6_23:                               @ %if.end75
	ldrb	r6, [lr]
	ldrb	r11, [r3, #6]
	ldrb	r10, [r3, #7]
	lsl	r1, r1, #16
	b	.LBB6_24
.section bb6_24
.LBB6_24:                               @ %if.end75
	orr	r1, r1, r6, lsl #24
	add	r6, r12, r0
	orr	r1, r1, r11, lsl #8
	orr	r1, r1, r10
	b	.LBB6_25
.section bb6_25
.LBB6_25:                               @ %if.end75
	str	r1, [r8, #1032]
	str	r6, [r4, #44]
	ldrb	r1, [r3, #8]
	ldrb	r3, [r3, #9]
	b	.LBB6_26
.section bb6_26
.LBB6_26:                               @ %if.end75
	orr	r3, r3, r1, lsl #8
	mov	r1, #12
	orr	r1, r1, #1024
	strh	r3, [r8, r1]
	sub	r1, r2, r6
	cmp	r3, r1
	ble	.LBB6_31
	b	.LBB6_27
.section bb6_27
.LBB6_27:                               @ %size
	bl	__errno_location
	mov	r1, #90
	str	r1, [r0]
	b	.LBB6_29
.section bb6_28
.LBB6_28:                               @ %bad
	bl	__errno_location
	mov	r1, #19
	mvn	r7, #0
	str	r1, [r0]
	b	.LBB6_29
.section bb6_29
.LBB6_29:                               @ %return
	mov	r0, r7
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb6_30
.LBB6_30:                               @ %if.else
	mov	r1, #12
	mov	r0, #0
	orr	r1, r1, #1024
	str	r0, [r8, #1032]
	strh	r0, [r8, r1]
	str	r0, [r8, #1040]
	b	.LBB6_32
.section bb6_31
.LBB6_31:                               @ %if.end95
	add	r0, r0, r3
	str	r6, [r8, #1040]
	add	r0, r12, r0
	str	r0, [r4, #44]
	b	.LBB6_32
.section bb6_32
.LBB6_32:                               @ %if.end104
	ldr	r0, [r4, #40]
	mov	r7, #0
	add	r1, r0, #1
	str	r1, [r4, #40]
	ldrh	r1, [r9]
	cmp	r0, r1
	blt	.LBB6_29
	b	.LBB6_33
.section bb6_33
.LBB6_33:                               @ %if.then112
	add	r0, r5, #1
	str	r0, [r4, #36]
	cmp	r0, #4
	bne	.LBB6_35
	b	.LBB6_34
.section bb6_34
.LBB6_34:                               @ %if.then117
	mvn	r0, #0
	mov	r7, #0
	str	r0, [r4, #40]
	str	r7, [r4, #44]
	b	.LBB6_29
.section bb6_35
.LBB6_35:                               @ %if.else120
	mov	r7, #0
	str	r7, [r4, #40]
	b	.LBB6_29
.Ltmp6:
	.size	ns_parserr, .Ltmp6-ns_parserr
	.cantunwind
	.fnend

	.globl	ns_name_uncompress
	.align	2
	.type	ns_name_uncompress,%function
.section bb7_0
ns_name_uncompress:                     @ @ns_name_uncompress
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB7_1
.section bb7_1
.LBB7_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	ldr	r4, [sp, #16]
	str	r4, [sp]
	b	.LBB7_2
.section bb7_2
.LBB7_2:                                @ %entry
	bl	dn_expand
	mov	r4, r0
	cmp	r4, #0
	bge	.LBB7_4
	b	.LBB7_3
.section bb7_3
.LBB7_3:                                @ %if.then
	bl	__errno_location
	mov	r1, #90
	str	r1, [r0]
	b	.LBB7_4
.section bb7_4
.LBB7_4:                                @ %if.end
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp7:
	.size	ns_name_uncompress, .Ltmp7-ns_name_uncompress
	.cantunwind
	.fnend

	.type	_ns_flagdata,%object    @ @_ns_flagdata
	.section	.rodata,"a",%progbits
	.globl	_ns_flagdata
	.align	2
_ns_flagdata:
	.long	32768                   @ 0x8000
	.long	15                      @ 0xf
	.long	30720                   @ 0x7800
	.long	11                      @ 0xb
	.long	1024                    @ 0x400
	.long	10                      @ 0xa
	.long	512                     @ 0x200
	.long	9                       @ 0x9
	.long	256                     @ 0x100
	.long	8                       @ 0x8
	.long	128                     @ 0x80
	.long	7                       @ 0x7
	.long	64                      @ 0x40
	.long	6                       @ 0x6
	.long	32                      @ 0x20
	.long	5                       @ 0x5
	.long	16                      @ 0x10
	.long	4                       @ 0x4
	.long	15                      @ 0xf
	.long	0                       @ 0x0
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.size	_ns_flagdata, 128


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
