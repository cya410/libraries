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
	.file	"src/dirent/readdir.bc"
	.globl	readdir
	.align	2
	.type	readdir,%function
readdir:                                @ @readdir
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r3, r0
	ldr	r1, [r3, #16]
	ldr	r0, [r3, #20]
	cmp	r1, r0
	blt	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %if.then
	mov	r1, r3
	mov	r7, #217
	mov	r2, #2048
	ldr	r0, [r1], #32
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	ble	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                @ %if.end7
	mov	r1, #0
	str	r1, [r3, #16]
	str	r0, [r3, #20]
	b	.LBB0_4
.LBB0_4:                                @ %if.end10
	add	r0, r3, r1
	ldrh	r2, [r0, #48]
	add	r4, r0, #32
	add	r1, r2, r1
	b	.LBB0_5
.LBB0_5:                                @ %if.end10
	str	r1, [r3, #16]
	ldr	r1, [r0, #40]
	ldr	r2, [r0, #44]
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	b	.LBB0_6
.LBB0_6:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.LBB0_7:                                @ %if.then2
	mov	r4, #0
	bge	.LBB0_6
	b	.LBB0_8
.LBB0_8:                                @ %if.then2
	cmn	r0, #2
	beq	.LBB0_6
	b	.LBB0_9
.LBB0_9:                                @ %if.then5
	rsb	r5, r0, #0
	bl	__errno_location
	str	r5, [r0]
	b	.LBB0_6
.Ltmp0:
	.size	readdir, .Ltmp0-readdir
	.cantunwind
	.fnend


	.weak	readdir64
readdir64 = readdir
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
