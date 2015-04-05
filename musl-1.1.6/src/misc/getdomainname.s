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
	.file	"src/misc/getdomainname.bc"
	.globl	getdomainname
	.align	2
	.type	getdomainname,%function
getdomainname:                          @ @getdomainname
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#392
	sub	sp, sp, #392
	mov	r6, sp
	mov	r4, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r0, r6
	bl	uname
	cmp	r5, #0
	beq	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                @ %lor.lhs.false
	add	r0, r6, #69
	add	r6, r0, #256
	mov	r0, r6
	bl	strlen
	cmp	r0, r5
	bhs	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	mov	r0, r4
	mov	r1, r6
	bl	strcpy
	mov	r0, #0
	b	.LBB0_7
.LBB0_6:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_7
.LBB0_7:                                @ %cleanup
	add	sp, sp, #392
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	getdomainname, .Ltmp0-getdomainname
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
