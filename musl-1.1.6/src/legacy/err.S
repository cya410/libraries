.section err_text
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
	.file	"src/legacy/err.bc"
	.globl	vwarn
	.align	2
	.type	vwarn,%function
.section bb0_0
vwarn:                                  @ @vwarn
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r6, r0
	ldr	r0, .LCPI0_4
	b	.LBB0_2
.LCPI0_4:
	.long	__progname
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r5, r1
	ldr	r1, .LCPI0_6
	ldr	r2, [r0]
	ldr	r0, .LCPI0_5
	b	.LBB0_3
.LCPI0_5:
	.long	stderr
.LCPI0_6:
	.long	.L.str
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r4, [r0]
	mov	r0, r4
	bl	fprintf
	cmp	r6, #0
	beq	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	vfprintf
	ldr	r0, .LCPI0_7
	mov	r1, r4
	bl	fputs
	b	.LBB0_5
.LCPI0_7:
	.long	.L.str1
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r0, #0
	pop	{r4, r5, r6, lr}
	b	perror
.Ltmp0:
	.size	vwarn, .Ltmp0-vwarn
	.cantunwind
	.fnend

	.globl	vwarnx
	.align	2
	.type	vwarnx,%function
.section bb1_0
vwarnx:                                 @ @vwarnx
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	mov	r6, r0
	ldr	r0, .LCPI1_0
	b	.LBB1_2
.LCPI1_0:
	.long	__progname
.section bb1_2
.LBB1_2:                                @ %entry
	mov	r5, r1
	ldr	r1, .LCPI1_4
	ldr	r2, [r0]
	ldr	r0, .LCPI1_3
	b	.LBB1_3
.LCPI1_3:
	.long	stderr
.LCPI1_4:
	.long	.L.str
.section bb1_3
.LBB1_3:                                @ %entry
	ldr	r4, [r0]
	mov	r0, r4
	bl	fprintf
	cmp	r6, #0
	beq	.LBB1_5
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.then
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	vfprintf
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.end
	mov	r0, #10
	mov	r1, r4
	pop	{r4, r5, r6, lr}
	b	putc
.Ltmp1:
	.size	vwarnx, .Ltmp1-vwarnx
	.cantunwind
	.fnend

	.globl	verr
	.align	2
	.type	verr,%function
.section bb2_0
verr:                                   @ @verr
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	mov	r4, r0
	mov	r0, r1
	mov	r1, r2
	bl	vwarn
	mov	r0, r4
	bl	exit
.Ltmp2:
	.size	verr, .Ltmp2-verr
	.cantunwind
	.fnend

	.globl	verrx
	.align	2
	.type	verrx,%function
.section bb3_0
verrx:                                  @ @verrx
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	mov	r4, r0
	mov	r0, r1
	mov	r1, r2
	bl	vwarnx
	mov	r0, r4
	bl	exit
.Ltmp3:
	.size	verrx, .Ltmp3-verrx
	.cantunwind
	.fnend

	.globl	warn
	.align	2
	.type	warn,%function
.section bb4_0
warn:                                   @ @warn
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	add	r11, sp, #20
	stm	r11, {r1, r2, r3}
	add	r1, sp, #20
	str	r1, [sp, #4]
	b	.LBB4_3
.section bb4_3
.LBB4_3:                                @ %entry
	bl	vwarn
	add	sp, sp, #8
	pop	{r11, lr}
	add	sp, sp, #16
	mov	pc, lr
.Ltmp4:
	.size	warn, .Ltmp4-warn
	.cantunwind
	.fnend

	.globl	warnx
	.align	2
	.type	warnx,%function
.section bb5_0
warnx:                                  @ @warnx
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %entry
	add	r11, sp, #20
	stm	r11, {r1, r2, r3}
	add	r1, sp, #20
	str	r1, [sp, #4]
	b	.LBB5_3
.section bb5_3
.LBB5_3:                                @ %entry
	bl	vwarnx
	add	sp, sp, #8
	pop	{r11, lr}
	add	sp, sp, #16
	mov	pc, lr
.Ltmp5:
	.size	warnx, .Ltmp5-warnx
	.cantunwind
	.fnend

	.globl	err
	.align	2
	.type	err,%function
.section bb6_0
err:                                    @ @err
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.pad	#8
	sub	sp, sp, #8
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	add	r2, sp, #8
	str	r2, [sp, #4]
	bl	verr
.Ltmp6:
	.size	err, .Ltmp6-err
	.cantunwind
	.fnend

	.globl	errx
	.align	2
	.type	errx,%function
.section bb7_0
errx:                                   @ @errx
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.pad	#8
	sub	sp, sp, #8
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	add	r2, sp, #8
	str	r2, [sp, #4]
	bl	verrx
.Ltmp7:
	.size	errx, .Ltmp7-errx
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s: "
	.size	.L.str, 5

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	": "
	.size	.L.str1, 3


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
