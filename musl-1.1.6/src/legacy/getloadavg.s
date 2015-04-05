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
	.file	"src/legacy/getloadavg.bc"
	.globl	getloadavg
	.align	2
	.type	getloadavg,%function
getloadavg:                             @ @getloadavg
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	mov	r4, r1
	mov	r8, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r0, .LCPI0_3
	ldr	r1, .LCPI0_4
	bl	fopen
	mov	r7, r0
	mvn	r6, #0
	cmp	r7, #0
	beq	.LBB0_8
	b	.LBB0_4
.LCPI0_3:
	.long	.L.str
.LCPI0_4:
	.long	.L.str1
.LBB0_4:                                @ %if.end
	ldr	r1, .LCPI0_5
	add	r2, sp, #8
	add	r0, r2, #16
	add	r3, r2, #8
	b	.LBB0_5
.LCPI0_5:
	.long	.L.str2
.LBB0_5:                                @ %if.end
	str	r0, [sp]
	mov	r0, r7
	bl	fscanf
	mov	r5, r0
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	mov	r0, r7
	bl	fclose
	cmp	r5, r4
	movlt	r4, r5
	cmp	r4, #0
	blt	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.end10
	lsl	r2, r4, #3
	add	r1, sp, #8
	mov	r0, r8
	bl	memcpy
	mov	r6, r4
	b	.LBB0_8
.LBB0_8:                                @ %return
	mov	r0, r6
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	getloadavg, .Ltmp0-getloadavg
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/proc/loadavg"
	.size	.L.str, 14

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"rbe"
	.size	.L.str1, 4

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"%lf %lf %lf"
	.size	.L.str2, 12


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
