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
	.file	"src/stdio/vsnprintf.bc"
	.globl	vsnprintf
	.align	2
	.type	vsnprintf,%function
vsnprintf:                              @ @vsnprintf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#144
	sub	sp, sp, #144
	mov	r5, r1
	ldr	r1, .LCPI0_0
	b	.LBB0_3
.LCPI0_0:
	.long	.Lvsnprintf.f
.LBB0_3:                                @ %entry
	mov	r6, r2
	mov	r7, r0
	mov	r0, sp
	mov	r2, #136
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r4, r3
	bl	__aeabi_memcpy
	sub	r0, r5, #1
	cmn	r0, #-2147483647
	blo	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	cmp	r5, #0
	beq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %if.then1
	bl	__errno_location
	mov	r1, #75
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_13
.LBB0_7:
	add	r7, sp, #143
	mov	r5, #1
	b	.LBB0_8
.LBB0_8:                                @ %if.end2
	mvn	r0, #1
	mov	r1, r6
	mov	r2, r4
	sub	r0, r0, r7
	b	.LBB0_9
.LBB0_9:                                @ %if.end2
	cmp	r5, r0
	movhi	r5, r0
	add	r0, r7, r5
	str	r5, [sp, #48]
	b	.LBB0_10
.LBB0_10:                               @ %if.end2
	str	r7, [sp, #20]
	str	r7, [sp, #44]
	str	r0, [sp, #16]
	str	r0, [sp, #28]
	b	.LBB0_11
.LBB0_11:                               @ %if.end2
	mov	r0, sp
	bl	vfprintf
	cmp	r5, #0
	beq	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %if.then13
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #20]
	cmp	r2, r1
	mov	r1, #0
	subeq	r2, r2, #1
	strb	r1, [r2]
	b	.LBB0_13
.LBB0_13:                               @ %cleanup
	add	sp, sp, #144
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	vsnprintf, .Ltmp0-vsnprintf
	.cantunwind
	.fnend

	.align	2
	.type	sn_write,%function
sn_write:                               @ @sn_write
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r5, r0
	mov	r4, r2
	b	.LBB1_2
.LBB1_2:                                @ %entry
	ldr	r2, [r5, #16]
	ldr	r0, [r5, #20]
	sub	r6, r2, r0
	cmp	r6, r4
	b	.LBB1_3
.LBB1_3:                                @ %entry
	movhi	r6, r4
	mov	r2, r6
	bl	memcpy
	ldr	r0, [r5, #20]
	b	.LBB1_4
.LBB1_4:                                @ %entry
	add	r0, r0, r6
	str	r0, [r5, #20]
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp1:
	.size	sn_write, .Ltmp1-sn_write
	.cantunwind
	.fnend

	.type	.Lvsnprintf.f,%object   @ @vsnprintf.f
	.section	.data.rel.ro.local,"aw",%progbits
	.align	3
.Lvsnprintf.f:
	.long	0                       @ 0x0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	sn_write
	.long	0
	.long	0
	.long	0                       @ 0x0
	.long	0
	.long	0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.short	0                       @ 0x0
	.byte	0                       @ 0x0
	.byte	255                     @ 0xff
	.long	4294967295              @ 0xffffffff
	.long	0                       @ 0x0
	.long	0
	.long	0                       @ 0x0
	.long	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.long	0                       @ 0x0
	.long	0
	.long	0                       @ 0x0
	.long	0
	.long	0
	.long	0
	.size	.Lvsnprintf.f, 136


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
