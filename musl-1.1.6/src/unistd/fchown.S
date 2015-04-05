.section fchown_text
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
	.file	"src/unistd/fchown.bc"
	.globl	fchown
	.align	2
	.type	fchown,%function
.section bb0_0
fchown:                                 @ @fchown
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
	.pad	#32
	sub	sp, sp, #32
	mov	r3, r0
	mov	r4, r2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r7, #207
                                        @ kill: R0<def> R3<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
                                        @ kill: R2<def> R4<kill>
	@APP
	svc	#0
	@NO_APP
	mov	r2, r0
	cmn	r2, #9
	bne	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %lor.lhs.false
	mov	r7, #221
	mov	r0, r3
	mov	r1, #1
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	blt	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %return
	add	r6, sp, #5
	mov	r1, r3
	mov	r0, r6
	bl	__procfdname
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	mov	r7, #212
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %return
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.section bb0_9
.LBB0_9:                                @ %if.then
	mov	r0, r2
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r11, lr}
	b	__syscall_ret
.Ltmp0:
	.size	fchown, .Ltmp0-fchown
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
