.section tmpfile_text
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
	.file	"src/stdio/tmpfile.bc"
	.globl	tmpfile
	.align	2
	.type	tmpfile,%function
.section bb0_0
tmpfile:                                @ @tmpfile
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
	.pad	#24
	sub	sp, sp, #24
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r1, .LCPI0_2
	add	r8, sp, #4
	mov	r2, #20
	mov	r0, r8
	b	.LBB0_4
.LCPI0_2:
	.long	.Ltmpfile.s
.section bb0_4
.LBB0_4:                                @ %entry
	bl	__aeabi_memcpy
	mov	r9, #194
	add	r5, r8, #13
	mov	r6, #0
	mov	r7, #5
	orr	r9, r9, #131072
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	bl	__randname
	mov	r0, r8
	mov	r1, r9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.body
                                        @   in Loop: Header=BB0_5 Depth=1
	mov	r2, #384
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	mov	r4, r0
	cmp	r4, #0
	bge	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.cond
                                        @   in Loop: Header=BB0_5 Depth=1
	add	r6, r6, #1
	mov	r0, #0
	cmp	r6, #99
	ble	.LBB0_5
	b	.LBB0_11
.section bb0_8
.LBB0_8:                                @ %if.then
	add	r0, sp, #4
	mov	r7, #10
	ldr	r1, .LCPI0_3
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_9
.LCPI0_3:
	.long	.L.str
.section bb0_9
.LBB0_9:                                @ %if.then
	mov	r0, r4
	bl	__fdopen
	cmp	r0, #0
	bne	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then8
	mov	r7, #6
	mov	r0, r4
	@APP
	svc	#0
	@NO_APP
	mov	r0, #0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	add	sp, sp, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	tmpfile, .Ltmp0-tmpfile
	.cantunwind
	.fnend

	.type	.Ltmpfile.s,%object     @ @tmpfile.s
	.section	.rodata.str1.1,"aMS",%progbits,1
.Ltmpfile.s:
	.asciz	"/tmp/tmpfile_XXXXXX"
	.size	.Ltmpfile.s, 20

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"w+"
	.size	.L.str, 3

	.hidden	__syscall_ret

	.weak	tmpfile64
tmpfile64 = tmpfile
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
