.section inet_legacy_text
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
	.file	"src/network/inet_legacy.bc"
	.globl	inet_network
	.align	2
	.type	inet_network,%function
.section bb0_0
inet_network:                           @ @inet_network
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	bl	inet_addr
	pop	{r11, lr}
	b	ntohl
.Ltmp0:
	.size	inet_network, .Ltmp0-inet_network
	.cantunwind
	.fnend

	.globl	inet_makeaddr
	.align	2
	.type	inet_makeaddr,%function
.section bb1_0
inet_makeaddr:                          @ @inet_makeaddr
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	cmp	r0, #255
	bhi	.LBB1_2
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %if.then
	lsl	r0, r0, #24
	b	.LBB1_3
.section bb1_2
.LBB1_2:                                @ %if.else
	mov	r2, #0
	cmp	r2, r0, lsr #16
	lslne	r0, r0, #8
	lsleq	r0, r0, #16
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %if.end8
	orr	r0, r0, r1
	mov	pc, lr
.Ltmp1:
	.size	inet_makeaddr, .Ltmp1-inet_makeaddr
	.cantunwind
	.fnend

	.globl	inet_lnaof
	.align	2
	.type	inet_lnaof,%function
.section bb2_0
inet_lnaof:                             @ @inet_lnaof
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	cmp	r0, #0
	bicge	r0, r0, #-16777216
	movge	pc, lr
	cmp	r0, #-1073741824
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	movlo	r1, #255
	orrlo	r1, r1, #65280
	andlo	r0, r0, r1
	movlo	pc, lr
	and	r0, r0, #255
	mov	pc, lr
.Ltmp2:
	.size	inet_lnaof, .Ltmp2-inet_lnaof
	.cantunwind
	.fnend

	.globl	inet_netof
	.align	2
	.type	inet_netof,%function
.section bb3_0
inet_netof:                             @ @inet_netof
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	cmp	r0, #0
	blt	.LBB3_2
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %if.then
	lsr	r0, r0, #24
	mov	pc, lr
.section bb3_2
.LBB3_2:                                @ %if.end
	cmp	r0, #-1073741824
	lsrlo	r0, r0, #16
	lsrhs	r0, r0, #8
	mov	pc, lr
.Ltmp3:
	.size	inet_netof, .Ltmp3-inet_netof
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
