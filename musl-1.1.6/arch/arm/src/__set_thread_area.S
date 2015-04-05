.section __set_thread_area_text
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
	.file	"arch/arm/src/__set_thread_area.bc"
	.globl	__set_thread_area
	.align	2
	.type	__set_thread_area,%function
.section bb0_0
__set_thread_area:                      @ @__set_thread_area
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldr	r1, .LCPI0_17
	ldrb	r1, [r1, #1]
	tst	r1, #128
	beq	.LBB0_11
	b	.LBB0_2
.LCPI0_17:
	.long	__hwcap
.section bb0_2
.LBB0_2:                                @ %if.then
	ldr	r12, .LCPI0_18
	ldr	r1, .LCPI0_20
	ldr	lr, .LCPI0_21
	ldr	r3, .LCPI0_23
	b	.LBB0_3
.LCPI0_18:
	.long	__a_cas_dummy
.LCPI0_20:
	.long	__a_cas_v7
.LCPI0_21:
	.long	__a_cas_ptr
.LCPI0_23:
	.long	__a_barrier_dummy
.section bb0_3
.LBB0_3:                                @ %if.then
	ldr	r7, .LCPI0_26
	sub	r1, r1, r12
	str	r1, [lr]
	ldr	r1, .LCPI0_25
	b	.LBB0_4
.LCPI0_25:
	.long	__a_barrier_v7
.LCPI0_26:
	.long	__a_barrier_ptr
.section bb0_4
.LBB0_4:                                @ %if.then
	sub	r1, r1, r3
	str	r1, [r7]
	ldr	r1, .LCPI0_28
	ldr	r1, [r1, #16]
	add	r1, r1, #4
	b	.LBB0_6
.LCPI0_28:
	.long	__libc
.section bb0_5
.LBB0_5:                                @ %for.inc
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r1, r1, #8
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1, #-4]
	cmp	r2, #0
	beq	.LBB0_18
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.cond
                                        @   in Loop: Header=BB0_6 Depth=1
	cmp	r2, #15
	bne	.LBB0_5
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	ldr	r1, [r1]
	ldrb	r2, [r1]
	cmp	r2, #118
	ldrbeq	r2, [r1, #1]
	cmpeq	r2, #54
	bne	.LBB0_18
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %lor.lhs.false10
	ldrb	r1, [r1, #2]
	sub	r1, r1, #48
	cmp	r1, #10
	blo	.LBB0_18
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end16
	ldr	r1, .LCPI0_29
	sub	r1, r1, r12
	str	r1, [lr]
	ldr	r1, .LCPI0_30
	sub	r1, r1, r3
	str	r1, [r7]
	b	.LBB0_18
.LCPI0_29:
	.long	__a_cas_v6
.LCPI0_30:
	.long	__a_barrier_v6
.section bb0_11
.LBB0_11:                               @ %if.else
	ldr	r1, .LCPI0_31
	ldr	r2, .LCPI0_32
	ldr	r3, .LCPI0_34
	sub	r1, r2, r1
	b	.LBB0_12
.LCPI0_31:
	.long	__a_gettp_dummy
.LCPI0_32:
	.long	4294905824              @ 0xffff0fe0
.LCPI0_34:
	.long	__a_gettp_ptr
.section bb0_12
.LBB0_12:                               @ %if.else
	ldr	r2, .LCPI0_33
	ldr	r2, [r2]
	str	r1, [r3]
	ldr	r1, .LCPI0_19
	b	.LBB0_13
.LCPI0_19:
	.long	__a_cas_dummy
.LCPI0_33:
	.long	4294905852              @ 0xffff0ffc
.section bb0_13
.LBB0_13:                               @ %if.else
	ldr	r3, .LCPI0_35
	sub	r1, r3, r1
	ldr	r3, .LCPI0_22
	cmp	r2, #1
	b	.LBB0_14
.LCPI0_22:
	.long	__a_cas_ptr
.LCPI0_35:
	.long	4294905792              @ 0xffff0fc0
.section bb0_14
.LBB0_14:                               @ %if.else
	str	r1, [r3]
	ldr	r1, .LCPI0_24
	ldr	r3, .LCPI0_36
	sub	r7, r3, r1
	ldr	r3, .LCPI0_27
	str	r7, [r3]
	bgt	.LBB0_16
	b	.LBB0_15
.LCPI0_24:
	.long	__a_barrier_dummy
.LCPI0_27:
	.long	__a_barrier_ptr
.LCPI0_36:
	.long	4294905760              @ 0xffff0fa0
.section bb0_15
.LBB0_15:                               @ %if.end20.thread
	mov	r2, #0
	strb	r2, [r2]
	b	.LBB0_17
.section bb0_16
.LBB0_16:                               @ %if.end20
	cmp	r2, #2
	bgt	.LBB0_18
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then23
	ldr	r2, .LCPI0_37
	sub	r1, r2, r1
	str	r1, [r3]
	b	.LBB0_18
.LCPI0_37:
	.long	__a_barrier_oldkuser
.section bb0_18
.LBB0_18:                               @ %if.end25
	mov	r7, #5
	orr	r7, r7, #983040
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	__set_thread_area, .Ltmp0-__set_thread_area
	.cantunwind
	.fnend

	.hidden	__a_cas_v7
	.hidden	__a_cas_dummy
	.hidden	__a_cas_ptr
	.hidden	__a_barrier_v7
	.hidden	__a_barrier_dummy
	.hidden	__a_barrier_ptr
	.hidden	__libc
	.hidden	__a_cas_v6
	.hidden	__a_barrier_v6
	.hidden	__a_gettp_dummy
	.hidden	__a_gettp_ptr
	.hidden	__a_barrier_oldkuser

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
