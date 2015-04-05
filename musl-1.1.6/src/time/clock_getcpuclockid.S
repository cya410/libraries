.section clock_getcpuclockid_text
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
	.file	"src/time/clock_getcpuclockid.bc"
	.globl	clock_getcpuclockid
	.align	2
	.type	clock_getcpuclockid,%function
.section bb0_0
clock_getcpuclockid:                    @ @clock_getcpuclockid
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r2, r1
	mvn	r1, #5
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r7, #264
	eor	r3, r1, r0, lsl #3
	mov	r1, sp
	mov	r0, r3
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	beq	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	rsb	r0, r0, #0
	b	.LBB0_5
.section bb0_4
.LBB0_4:                                @ %if.end
	mov	r0, #0
	str	r3, [r2]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %return
	add	sp, sp, #8
	pop	{r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	clock_getcpuclockid, .Ltmp0-clock_getcpuclockid
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
