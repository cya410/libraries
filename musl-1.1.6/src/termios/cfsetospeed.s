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
	.file	"src/termios/cfsetospeed.bc"
	.globl	cfsetospeed
	.align	2
	.type	cfsetospeed,%function
cfsetospeed:                            @ @cfsetospeed
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	ldr	r2, .LCPI0_0
	tst	r1, r2
	beq	.LBB0_2
	b	.LBB0_1
.LCPI0_0:
	.long	4294963184              @ 0xffffeff0
.LBB0_1:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_3
.LBB0_2:                                @ %if.end
	ldr	r2, [r0, #8]
	ldr	r3, .LCPI0_1
	and	r2, r2, r3
	orr	r1, r2, r1
	str	r1, [r0, #8]
	mov	r0, #0
	b	.LBB0_3
.LCPI0_1:
	.long	4294963184              @ 0xffffeff0
.LBB0_3:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	cfsetospeed, .Ltmp0-cfsetospeed
	.cantunwind
	.fnend

	.globl	cfsetispeed
	.align	2
	.type	cfsetispeed,%function
cfsetispeed:                            @ @cfsetispeed
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r2, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB1_5
	b	.LBB1_2
.LBB1_2:                                @ %cond.true
	ldr	r3, .LCPI1_0
	tst	r1, r3
	beq	.LBB1_4
	b	.LBB1_3
.LCPI1_0:
	.long	4294963184              @ 0xffffeff0
.LBB1_3:                                @ %if.then.i
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB1_5
.LBB1_4:                                @ %if.end.i
	ldr	r12, [r2, #8]
	ldr	r3, .LCPI1_1
	and	r3, r12, r3
	orr	r1, r3, r1
	str	r1, [r2, #8]
	b	.LBB1_5
.LCPI1_1:
	.long	4294963184              @ 0xffffeff0
.LBB1_5:                                @ %cond.end
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	cfsetispeed, .Ltmp1-cfsetispeed
	.cantunwind
	.fnend


	.weak	cfsetspeed
cfsetspeed = cfsetospeed
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
