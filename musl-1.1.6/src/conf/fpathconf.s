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
	.file	"src/conf/fpathconf.bc"
	.globl	fpathconf
	.align	2
	.type	fpathconf,%function
fpathconf:                              @ @fpathconf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	cmp	r1, #21
	blo	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_3
.LBB0_2:                                @ %if.end
	ldr	r0, .LCPI0_0
	add	r0, r0, r1, lsl #1
	ldrsh	r0, [r0]
	b	.LBB0_3
.LCPI0_0:
	.long	fpathconf.values
.LBB0_3:                                @ %return
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fpathconf, .Ltmp0-fpathconf
	.cantunwind
	.fnend

	.type	fpathconf.values,%object @ @fpathconf.values
	.section	.rodata,"a",%progbits
	.align	1
fpathconf.values:
	.short	8                       @ 0x8
	.short	255                     @ 0xff
	.short	255                     @ 0xff
	.short	255                     @ 0xff
	.short	4096                    @ 0x1000
	.short	4096                    @ 0x1000
	.short	1                       @ 0x1
	.short	1                       @ 0x1
	.short	0                       @ 0x0
	.short	1                       @ 0x1
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	65535                   @ 0xffff
	.short	64                      @ 0x40
	.short	4096                    @ 0x1000
	.short	4096                    @ 0x1000
	.short	4096                    @ 0x1000
	.short	4096                    @ 0x1000
	.short	4096                    @ 0x1000
	.short	255                     @ 0xff
	.short	1                       @ 0x1
	.size	fpathconf.values, 42


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
