.section block_text
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
	.file	"src/signal/block.bc"
	.globl	__block_all_sigs
	.align	2
	.type	__block_all_sigs,%function
.section bb0_0
__block_all_sigs:                       @ @__block_all_sigs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldr	r1, .LCPI0_0
	mov	r2, r0
	mov	r7, #175
	mov	r0, #0
	mov	r3, #8
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	mov	pc, lr
.LCPI0_0:
	.long	all_mask
.Ltmp0:
	.size	__block_all_sigs, .Ltmp0-__block_all_sigs
	.cantunwind
	.fnend

	.globl	__block_app_sigs
	.align	2
	.type	__block_app_sigs,%function
.section bb1_0
__block_app_sigs:                       @ @__block_app_sigs
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	ldr	r1, .LCPI1_0
	mov	r2, r0
	mov	r7, #175
	mov	r0, #0
	mov	r3, #8
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	mov	pc, lr
.LCPI1_0:
	.long	app_mask
.Ltmp1:
	.size	__block_app_sigs, .Ltmp1-__block_app_sigs
	.cantunwind
	.fnend

	.globl	__restore_sigs
	.align	2
	.type	__restore_sigs,%function
.section bb2_0
__restore_sigs:                         @ @__restore_sigs
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	mov	r1, r0
	mov	r7, #175
	mov	r0, #2
	mov	r2, #0
	mov	r3, #8
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	mov	pc, lr
.Ltmp2:
	.size	__restore_sigs, .Ltmp2-__restore_sigs
	.cantunwind
	.fnend

	.type	all_mask,%object        @ @all_mask
	.section	.rodata,"a",%progbits
	.align	2
all_mask:
	.zero	8,255
	.size	all_mask, 8

	.type	app_mask,%object        @ @app_mask
	.align	2
app_mask:
	.long	2147483647              @ 0x7fffffff
	.long	4294967292              @ 0xfffffffc
	.size	app_mask, 8


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
