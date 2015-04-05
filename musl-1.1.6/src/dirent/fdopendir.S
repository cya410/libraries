.section fdopendir_text
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
	.file	"src/dirent/fdopendir.bc"
	.globl	fdopendir
	.align	2
	.type	fdopendir,%function
.section bb0_0
fdopendir:                              @ @fdopendir
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#104
	sub	sp, sp, #104
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	mov	r1, sp
                                        @ kill: R0<def> R4<kill>
	bl	fstat
	mov	r5, #0
	cmp	r0, #0
	blt	.LBB0_7
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	ldr	r0, [sp, #16]
	and	r0, r0, #61440
	cmp	r0, #16384
	bne	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end4
	mov	r0, #1
	mov	r1, #2080
	bl	calloc
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end7
	mov	r0, r4
	mov	r1, #2
	mov	r2, #1
	bl	fcntl
	mov	r5, r6
	str	r4, [r6]
	b	.LBB0_7
.section bb0_6
.LBB0_6:                                @ %if.then2
	bl	__errno_location
	mov	r1, #20
	str	r1, [r0]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cleanup
	mov	r0, r5
	add	sp, sp, #104
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	fdopendir, .Ltmp0-fdopendir
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
