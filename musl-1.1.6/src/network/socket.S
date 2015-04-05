.section socket_text
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
	.file	"src/network/socket.bc"
	.globl	socket
	.align	2
	.type	socket,%function
.section bb0_0
socket:                                 @ @socket
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r6, r0
	mov	r7, #25
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r9, r2
	mov	r8, r1
	mov	r3, #0
	mov	r4, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r5, #0
	orr	r7, r7, #256
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R8<kill>
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
                                        @ kill: R2<def> R9<kill>
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	mov	r4, r0
	cmp	r4, #0
	bge	.LBB0_15
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.lhs.true
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #22
	cmpne	r0, #93
	bne	.LBB0_15
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.lhs.true6
	mov	r0, #2048
	orr	r0, r0, #524288
	tst	r8, r0
	beq	.LBB0_15
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then
	ldr	r0, .LCPI0_0
	mov	r7, #25
	mov	r2, r9
	mov	r3, #0
	b	.LBB0_9
.LCPI0_0:
	.long	4294440959              @ 0xfff7f7ff
.section bb0_9
.LBB0_9:                                @ %if.then
	mov	r4, #0
	mov	r5, #0
	orr	r7, r7, #256
	and	r1, r8, r0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	mov	r4, r0
	cmp	r4, #0
	blt	.LBB0_15
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end
	tst	r8, #524288
	beq	.LBB0_13
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then14
	mov	r7, #221
	mov	r0, r4
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end16
	tst	r8, #2048
	beq	.LBB0_15
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then19
	mov	r7, #221
	mov	r0, r4
	mov	r1, #4
	mov	r2, #2048
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	socket, .Ltmp0-socket
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
