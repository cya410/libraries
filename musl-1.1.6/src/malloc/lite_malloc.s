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
	.file	"src/malloc/lite_malloc.bc"
	.globl	__simple_malloc
	.align	2
	.type	__simple_malloc,%function
__simple_malloc:                        @ @__simple_malloc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r6, r0
	cmp	r6, #0
	addeq	r6, r6, #1
	cmp	r6, #0
	blt	.LBB0_15
	b	.LBB0_3
.LBB0_3:
	mov	r0, #1
	b	.LBB0_4
.LBB0_4:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r0
	cmp	r7, r6
	lsllo	r0, r7, #1
	cmplo	r7, #16
	blo	.LBB0_4
	b	.LBB0_5
.LBB0_5:                                @ %while.end
	ldr	r4, .LCPI0_2
	add	r8, r4, #8
	mov	r0, r8
	bl	__lock
	b	.LBB0_6
.LCPI0_2:
	.long	_MergedGlobals
.LBB0_6:                                @ %while.end
	add	r0, r6, r7
	rsb	r6, r7, #0
	sub	r0, r0, #1
	and	r5, r0, r6
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then8
	mov	r0, #0
	bl	__brk
	add	r0, r0, #16
	str	r0, [r4]
	str	r0, [r4, #4]
	b	.LBB0_8
.LBB0_8:                                @ %if.end10
	add	r0, r7, r0
	sub	r0, r0, #1
	and	r6, r0, r6
	mvn	r0, #4096
	sub	r0, r0, r6
	cmp	r5, r0
	bhi	.LBB0_14
	b	.LBB0_9
.LBB0_9:                                @ %if.end18
	ldr	r0, [r4, #4]
	add	r5, r6, r5
	cmp	r5, r0
	bls	.LBB0_13
	b	.LBB0_10
.LBB0_10:                               @ %if.then21
	ldr	r1, .LCPI0_3
	add	r0, r5, #255
	add	r0, r0, #3840
	and	r7, r0, r1
	b	.LBB0_11
.LCPI0_3:
	.long	4294963200              @ 0xfffff000
.LBB0_11:                               @ %if.then21
	mov	r0, r7
	bl	__brk
	cmp	r0, r7
	bne	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               @ %if.end29
	str	r7, [r4, #4]
	b	.LBB0_13
.LBB0_13:                               @ %if.end30
	str	r5, [r4], #8
	mov	r0, r4
	bl	__unlock
	b	.LBB0_16
.LBB0_14:                               @ %fail
	mov	r0, r8
	bl	__unlock
	b	.LBB0_15
.LBB0_15:                               @ %toobig
	bl	__errno_location
	mov	r1, #12
	mov	r6, #0
	str	r1, [r0]
	b	.LBB0_16
.LBB0_16:                               @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__simple_malloc, .Ltmp0-__simple_malloc
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,16,4
	.hidden	__lock
	.hidden	__unlock

	.weak	malloc
malloc = __simple_malloc
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
