.section cbrtf_text
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
	.file	"src/math/cbrtf.bc"
	.globl	cbrtf
	.align	2
	.type	cbrtf,%function
.section bb0_0
cbrtf:                                  @ @cbrtf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	bic	r0, r4, #-2147483648
	lsr	r1, r0, #23
	cmp	r1, #255
	blo	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fadd
	b	.LBB0_32
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r1, #0
	cmp	r1, r0, lsr #23
	bne	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then2
	cmp	r0, #0
	beq	.LBB0_33
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end5
	mov	r1, #192937984
	mov	r0, r4
	orr	r1, r1, #1073741824
	bl	__aeabi_fmul
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end5
	ldr	r2, .LCPI0_3
	bic	r1, r0, #-2147483648
	umull	r3, r7, r1, r2
	ldr	r1, .LCPI0_6
	add	r1, r1, r7, lsr #1
	b	.LBB0_10
.LCPI0_3:
	.long	2863311531              @ 0xaaaaaaab
.LCPI0_6:
	.long	642849266               @ 0x265119f2
.section bb0_9
.LBB0_9:                                @ %if.else
	ldr	r1, .LCPI0_4
	umull	r2, r3, r0, r1
	ldr	r0, .LCPI0_5
	add	r1, r0, r3, lsr #1
	mov	r0, r4
	b	.LBB0_10
.LCPI0_4:
	.long	2863311531              @ 0xaaaaaaab
.LCPI0_5:
	.long	709958130               @ 0x2a5119f2
.section bb0_10
.LBB0_10:                               @ %if.end12
	and	r0, r0, #-2147483648
	orr	r0, r0, r1
	bl	__aeabi_f2d
	mov	r11, r0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end12
	mov	r7, r1
	mov	r2, r11
	mov	r3, r7
                                        @ kill: R0<def> R11<kill>
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end12
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end12
	mov	r0, r11
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r5, r0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end12
	mov	r0, r4
	mov	r6, r1
	bl	__aeabi_f2d
	mov	r8, r0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end12
	mov	r10, r1
	mov	r2, r5
	mov	r3, r6
                                        @ kill: R0<def> R8<kill>
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end12
                                        @ kill: R1<def> R10<kill>
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end12
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	mov	r4, r0
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end12
	mov	r9, r1
	mov	r0, r8
	mov	r1, r10
	mov	r2, r8
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end12
	mov	r3, r10
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r6
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end12
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	__aeabi_dadd
	mov	r2, r0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end12
	mov	r3, r1
	mov	r0, r11
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end12
	mov	r2, r4
	mov	r3, r9
	bl	__aeabi_ddiv
	mov	r6, r0
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end12
	mov	r7, r1
	mov	r2, r6
	mov	r3, r7
                                        @ kill: R0<def> R6<kill>
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end12
                                        @ kill: R1<def> R7<kill>
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end12
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r5, r0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end12
	mov	r4, r1
	mov	r0, r8
	mov	r1, r10
	mov	r2, r5
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end12
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end12
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd
	mov	r8, r0
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end12
	mov	r9, r1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	mov	r2, r5
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end12
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end12
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %return
	mov	r4, r0
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %return
	mov	r0, r4
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	cbrtf, .Ltmp0-cbrtf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
