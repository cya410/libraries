.section getgrouplist_text
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
	.file	"src/misc/getgrouplist.bc"
	.globl	getgrouplist
	.align	2
	.type	getgrouplist,%function
.section bb0_0
getgrouplist:                           @ @getgrouplist
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r3
	mov	r6, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r8, r2
	mvn	r0, #0
	ldr	r9, [r4]
	cmp	r9, #1
	blt	.LBB0_17
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	mov	r0, #1
	str	r1, [r8]
	str	r0, [r4]
	bl	setgrent
	b	.LBB0_6
.section bb0_5
.LBB0_5:                                @ %if.then16
                                        @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [r7, #8]
	str	r0, [r8]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_8 Depth 2
                                        @       Child Loop BB0_11 Depth 3
	bl	getgrent
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB0_16
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.rhs.lr.ph
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r8, r8, #4
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %land.rhs
                                        @   Parent Loop BB0_6 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_11 Depth 3
	ldr	r0, [r4]
	cmn	r0, #-2147483647
	beq	.LBB0_16
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.cond.preheader
                                        @   in Loop: Header=BB0_8 Depth=2
	ldr	r0, [r7, #12]
	mov	r5, #0
	ldr	r1, [r0]
	b	.LBB0_11
.section bb0_10
.LBB0_10:                               @ %for.inc
                                        @   in Loop: Header=BB0_11 Depth=3
	ldr	r0, [r7, #12]
	add	r0, r0, r5
	add	r5, r5, #4
	ldr	r1, [r0, #4]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.cond.preheader
                                        @   Parent Loop BB0_6 Depth=1
                                        @     Parent Loop BB0_8 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	cmp	r1, #0
	beq	.LBB0_15
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %land.rhs3
                                        @   in Loop: Header=BB0_11 Depth=3
	mov	r0, r6
	bl	strcmp
	cmp	r0, #0
	bne	.LBB0_10
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.end
                                        @   in Loop: Header=BB0_8 Depth=2
	ldr	r0, [r7, #12]
	ldr	r0, [r0, r5]
	cmp	r0, #0
	beq	.LBB0_15
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end13
                                        @   in Loop: Header=BB0_8 Depth=2
	ldr	r0, [r4]
	add	r0, r0, #1
	str	r0, [r4]
	cmp	r0, r9
	bls	.LBB0_5
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB0_8 Depth=2
	bl	getgrent
	mov	r7, r0
	cmp	r7, #0
	bne	.LBB0_8
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %while.end
	bl	endgrent
	ldr	r0, [r4]
	cmp	r0, r9
	mvnhi	r0, #0
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getgrouplist, .Ltmp0-getgrouplist
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
