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
	.file	"src/string/strsignal.bc"
	.globl	strsignal
	.align	2
	.type	strsignal,%function
strsignal:                              @ @strsignal
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	r1, r0
	ldr	r0, .LCPI0_0
	sub	r2, r1, #1
	cmp	r2, #63
	bhi	.LBB0_4
	b	.LBB0_1
.LCPI0_0:
	.long	strings
.LBB0_1:                                @ %entry
	cmp	r1, #0
	beq	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %for.cond1
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r0], #1
	cmp	r2, #0
	bne	.LBB0_2
	b	.LBB0_3
.LBB0_3:                                @ %for.cond.loopexit
                                        @   in Loop: Header=BB0_2 Depth=1
	subs	r1, r1, #1
	bne	.LBB0_2
	b	.LBB0_4
.LBB0_4:                                @ %for.end6
	b	__lctrans_cur
.Ltmp0:
	.size	strsignal, .Ltmp0-strsignal
	.cantunwind
	.fnend

	.type	strings,%object         @ @strings
	.section	.rodata,"a",%progbits
strings:
	.asciz	"Unknown signal\000Hangup\000Interrupt\000Quit\000Illegal instruction\000Trace/breakpoint trap\000Aborted\000Bus error\000Arithmetic exception\000Killed\000User defined signal 1\000Segmentation fault\000User defined signal 2\000Broken pipe\000Alarm clock\000Terminated\000Stack fault\000Child process status\000Continued\000Stopped (signal)\000Stopped\000Stopped (tty input)\000Stopped (tty output)\000Urgent I/O condition\000CPU time limit exceeded\000File size limit exceeded\000Virtual timer expired\000Profiling timer expired\000Window changed\000I/O possible\000Power failure\000Bad system call\000RT32\000RT33\000RT34\000RT35\000RT36\000RT37\000RT38\000RT39\000RT40\000RT41\000RT42\000RT43\000RT44\000RT45\000RT46\000RT47\000RT48\000RT49\000RT50\000RT51\000RT52\000RT53\000RT54\000RT55\000RT56\000RT57\000RT58\000RT59\000RT60\000RT61\000RT62\000RT63\000RT64"
	.size	strings, 671


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
