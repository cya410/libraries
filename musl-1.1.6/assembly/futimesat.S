.section futimesat_text
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
	.file	"src/stat/futimesat.bc"
	.globl	__futimesat
	.align	2
	.type	__futimesat,%function
.section bb0_0
__futimesat:                            @ @__futimesat
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	cmp	r2, #0
	beq	.LBB0_7
	b	.LBB0_3
.section bb0_3
.LBB0_3:
	mov	r12, #576
	mov	r3, #0
	mov	lr, sp
	mov	r4, #1000
	orr	r12, r12, #999424
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r5, r2, r3, lsl #3
	ldr	r5, [r5, #4]
	cmp	r5, r12
	bhs	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
                                        @   in Loop: Header=BB0_4 Depth=1
	ldr	r6, [r2, r3, lsl #3]
	mul	r7, r5, r4
	str	r6, [lr, r3, lsl #3]
	add	r6, lr, r3, lsl #3
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
                                        @   in Loop: Header=BB0_4 Depth=1
	add	r3, r3, #1
	str	r7, [r6, #4]
	cmp	r3, #2
	blt	.LBB0_4
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	mov	r3, sp
	cmp	r2, #0
	moveq	r3, r2
	mov	r2, r3
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %return
	mov	r3, #0
	bl	utimensat
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.section bb0_9
.LBB0_9:                                @ %if.then3
	mvn	r0, #21
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r11, lr}
	b	__syscall_ret
.Ltmp0:
	.size	__futimesat, .Ltmp0-__futimesat
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	futimesat
futimesat = __futimesat
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
