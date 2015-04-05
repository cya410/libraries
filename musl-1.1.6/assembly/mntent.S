.section mntent_text
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
	.file	"src/misc/mntent.bc"
	.globl	setmntent
	.align	2
	.type	setmntent,%function
.section bb0_0
setmntent:                              @ @setmntent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	b	fopen
.Ltmp0:
	.size	setmntent, .Ltmp0-setmntent
	.cantunwind
	.fnend

	.globl	endmntent
	.align	2
	.type	endmntent,%function
.section bb1_0
endmntent:                              @ @endmntent
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	cmp	r0, #0
	beq	.LBB1_2
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %if.then
	bl	fclose
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %if.end
	mov	r0, #1
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	endmntent, .Ltmp1-endmntent
	.cantunwind
	.fnend

	.globl	getmntent_r
	.align	2
	.type	getmntent_r,%function
.section bb2_0
getmntent_r:                            @ @getmntent_r
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	.pad	#92
	sub	sp, sp, #92
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %entry
	mov	r5, r1
	mov	r9, r3
	mov	r6, r2
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
	mov	r7, r0
	mov	r4, #0
	mov	r8, r5
	mov	r11, r5
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %entry
	mov	r0, r6
	mov	r1, r9
	mov	r2, r7
	str	r4, [r8, #16]!
	b	.LBB2_6
.section bb2_6
.LBB2_6:                                @ %entry
	str	r4, [r11, #20]!
	bl	fgets
	mov	r0, r7
	bl	feof
	cmp	r0, #0
	bne	.LBB2_21
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %lor.lhs.false.lr.ph
	str	r5, [sp, #36]           @ 4-byte Spill
	add	r5, sp, #60
	add	r0, r5, #28
	add	r10, r5, #8
	b	.LBB2_8
.section bb2_8
.LBB2_8:                                @ %lor.lhs.false.lr.ph
	add	r4, r5, #4
	str	r0, [sp, #56]           @ 4-byte Spill
	add	r0, r5, #24
	str	r0, [sp, #52]           @ 4-byte Spill
	b	.LBB2_9
.section bb2_9
.LBB2_9:                                @ %lor.lhs.false.lr.ph
	add	r0, r5, #20
	str	r0, [sp, #48]           @ 4-byte Spill
	add	r0, r5, #16
	str	r0, [sp, #44]           @ 4-byte Spill
	add	r0, r5, #12
	str	r0, [sp, #40]           @ 4-byte Spill
	b	.LBB2_10
.section bb2_10
.LBB2_10:                               @ %lor.lhs.false
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r7
	bl	ferror
	cmp	r0, #0
	bne	.LBB2_20
	b	.LBB2_11
.section bb2_11
.LBB2_11:                               @ %if.end
                                        @   in Loop: Header=BB2_10 Depth=1
	mov	r0, r6
	mov	r1, #10
	bl	strchr
	cmp	r0, #0
	beq	.LBB2_19
	b	.LBB2_12
.section bb2_12
.LBB2_12:                               @ %if.end9
                                        @   in Loop: Header=BB2_10 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	str	r10, [sp]
	add	r1, sp, #20
	mov	r2, r5
	b	.LBB2_13
.section bb2_13
.LBB2_13:                               @ %if.end9
                                        @   in Loop: Header=BB2_10 Depth=1
	mov	r3, r4
	str	r0, [sp, #4]
	ldr	r0, [sp, #44]           @ 4-byte Reload
	str	r0, [sp, #8]
	b	.LBB2_14
.section bb2_14
.LBB2_14:                               @ %if.end9
                                        @   in Loop: Header=BB2_10 Depth=1
	ldr	r0, [sp, #48]           @ 4-byte Reload
	str	r0, [sp, #12]
	ldr	r0, [sp, #52]           @ 4-byte Reload
	str	r0, [sp, #16]
	b	.LBB2_15
.section bb2_15
.LBB2_15:                               @ %if.end9
                                        @   in Loop: Header=BB2_10 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	stm	r1, {r0, r8, r11}
	ldr	r1, .LCPI2_2
	mov	r0, r6
	bl	sscanf
	cmp	r0, #2
	blt	.LBB2_17
	b	.LBB2_16
.LCPI2_2:
	.long	.L.str1
.section bb2_16
.LBB2_16:                               @ %lor.rhs
                                        @   in Loop: Header=BB2_10 Depth=1
	ldr	r1, [sp, #60]
	mov	r0, r6
	ldrb	r1, [r0, r1]!
	cmp	r1, #35
	bne	.LBB2_22
	b	.LBB2_17
.section bb2_17
.LBB2_17:                               @ %do.body.backedge
                                        @   in Loop: Header=BB2_10 Depth=1
	mov	r0, r6
	mov	r1, r9
	mov	r2, r7
	bl	fgets
	b	.LBB2_18
.section bb2_18
.LBB2_18:                               @ %do.body.backedge
                                        @   in Loop: Header=BB2_10 Depth=1
	mov	r0, r7
	bl	feof
	cmp	r0, #0
	beq	.LBB2_10
	b	.LBB2_20
.section bb2_19
.LBB2_19:                               @ %if.then6
	ldr	r1, .LCPI2_3
	mov	r0, r7
	bl	fscanf
	bl	__errno_location
	mov	r1, #34
	str	r1, [r0]
	b	.LBB2_20
.LCPI2_3:
	.long	.L.str
.section bb2_20
.LBB2_20:
	mov	r4, #0
	b	.LBB2_21
.section bb2_21
.LBB2_21:                               @ %return
	mov	r0, r4
	add	sp, sp, #92
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb2_22
.LBB2_22:                               @ %do.end
	ldr	r1, [sp, #64]
	mov	r2, #0
	strb	r2, [r6, r1]
	ldr	r1, [sp, #72]
	b	.LBB2_23
.section bb2_23
.LBB2_23:                               @ %do.end
	strb	r2, [r6, r1]
	ldr	r1, [sp, #80]
	strb	r2, [r6, r1]
	ldr	r1, [sp, #88]
	b	.LBB2_24
.section bb2_24
.LBB2_24:                               @ %do.end
	strb	r2, [r6, r1]
	ldr	r1, [sp, #36]           @ 4-byte Reload
	str	r0, [r1]
	mov	r4, r1
	b	.LBB2_25
.section bb2_25
.LBB2_25:                               @ %do.end
	ldr	r0, [sp, #68]
	add	r0, r6, r0
	str	r0, [r1, #4]
	ldr	r0, [sp, #76]
	b	.LBB2_26
.section bb2_26
.LBB2_26:                               @ %do.end
	add	r0, r6, r0
	str	r0, [r1, #8]
	ldr	r0, [sp, #84]
	add	r0, r6, r0
	str	r0, [r1, #12]
	b	.LBB2_21
.Ltmp2:
	.size	getmntent_r, .Ltmp2-getmntent_r
	.cantunwind
	.fnend

	.globl	getmntent
	.align	2
	.type	getmntent,%function
.section bb3_0
getmntent:                              @ @getmntent
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	ldr	r1, .LCPI3_0
	mov	r3, #256
	add	r2, r1, #24
	b	getmntent_r
.LCPI3_0:
	.long	_MergedGlobals
.Ltmp3:
	.size	getmntent, .Ltmp3-getmntent
	.cantunwind
	.fnend

	.globl	addmntent
	.align	2
	.type	addmntent,%function
.section bb4_0
addmntent:                              @ @addmntent
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	mov	r4, r0
	mov	r5, r1
	mov	r1, #0
	mov	r2, #2
	b	.LBB4_3
.section bb4_3
.LBB4_3:                                @ %entry
                                        @ kill: R0<def> R4<kill>
	bl	fseek
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	bne	.LBB4_6
	b	.LBB4_4
.section bb4_4
.LBB4_4:                                @ %if.end
	add	r12, r5, #8
	ldm	r5, {r2, r3}
	ldm	r12, {r0, r1, r12}
	ldr	r5, [r5, #20]
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %if.end
	stm	sp, {r0, r1, r12}
	ldr	r1, .LCPI4_0
	mov	r0, r4
	str	r5, [sp, #12]
	bl	fprintf
	lsr	r0, r0, #31
	b	.LBB4_6
.LCPI4_0:
	.long	.L.str2
.section bb4_6
.LBB4_6:                                @ %return
	add	sp, sp, #16
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	addmntent, .Ltmp4-addmntent
	.cantunwind
	.fnend

	.globl	hasmntopt
	.align	2
	.type	hasmntopt,%function
.section bb5_0
hasmntopt:                              @ @hasmntopt
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	ldr	r0, [r0, #12]
	b	strstr
.Ltmp5:
	.size	hasmntopt, .Ltmp5-hasmntopt
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%*[^\n]%*[\n]"
	.size	.L.str, 12

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	" %n%*s%n %n%*s%n %n%*s%n %n%*s%n %d %d"
	.size	.L.str1, 39

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"%s\t%s\t%s\t%s\t%d\t%d\n"
	.size	.L.str2, 19

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,280,16

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
