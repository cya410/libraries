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
	.file	"src/errno/strerror.bc"
	.globl	__strerror_l
	.align	2
	.type	__strerror_l,%function
__strerror_l:                           @ @__strerror_l
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	lr, r0
	ldr	r12, .LCPI0_2
	ldr	r0, .LCPI0_3
	mov	r3, #0
	b	.LBB0_2
.LCPI0_2:
	.long	errid
.LCPI0_3:
	.long	errmsg
.LBB0_2:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r12, r3]
	cmp	r2, lr
	beq	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @ %for.inc
                                        @   in Loop: Header=BB0_2 Depth=1
	add	r3, r3, #1
	cmp	r3, #87
	bne	.LBB0_2
	b	.LBB0_4
.LBB0_4:
	mov	r3, #87
	b	.LBB0_6
.LBB0_5:                                @ %for.cond4.preheader
	ldr	r0, .LCPI0_4
	cmp	r3, #0
	beq	.LBB0_8
	b	.LBB0_6
.LCPI0_4:
	.long	errmsg
.LBB0_6:                                @ %for.cond7
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r0], #1
	cmp	r2, #0
	bne	.LBB0_6
	b	.LBB0_7
.LBB0_7:                                @ %for.inc12
                                        @   in Loop: Header=BB0_6 Depth=1
	subs	r3, r3, #1
	bne	.LBB0_6
	b	.LBB0_8
.LBB0_8:                                @ %for.end14
	ldr	r1, [r1, #20]
	pop	{r11, lr}
	b	__lctrans
.Ltmp0:
	.size	__strerror_l, .Ltmp0-__strerror_l
	.cantunwind
	.fnend

	.globl	strerror
	.align	2
	.type	strerror,%function
strerror:                               @ @strerror
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	mov	r2, r0
	ldr	r0, .LCPI1_0
	ldr	r1, [r0, #44]
	cmp	r1, #0
	beq	.LBB1_3
	b	.LBB1_2
.LCPI1_0:
	.long	__libc
.LBB1_2:                                @ %cond.true
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	ldr	r1, [r1, #-32]
	b	.LBB1_4
.LBB1_3:
	add	r1, r0, #52
	b	.LBB1_4
.LBB1_4:                                @ %cond.end
	mov	r0, r2
	pop	{r11, lr}
	b	__strerror_l
.Ltmp1:
	.size	strerror, .Ltmp1-strerror
	.cantunwind
	.fnend

	.type	errid,%object           @ @errid
	.section	.rodata.str1.1,"aMS",%progbits,1
errid:
	.asciz	"T!\"\031\r\001\002\003\021K\034\f\020\004\013\035\022\036'hnopqb \005\006\017\023\024\025\032\b\026\007($\027\030\t\n\016\033\037%#\203\202}&*+<=>?CGJMXYZ[\\]^_`acdefgijklrstyz{|"
	.size	errid, 88

	.type	errmsg,%object          @ @errmsg
	.section	.rodata,"a",%progbits
errmsg:
	.asciz	"Illegal byte sequence\000Domain error\000Result not representable\000Not a tty\000Permission denied\000Operation not permitted\000No such file or directory\000No such process\000File exists\000Value too large for data type\000No space left on device\000Out of memory\000Resource busy\000Interrupted system call\000Resource temporarily unavailable\000Invalid seek\000Cross-device link\000Read-only file system\000Directory not empty\000Connection reset by peer\000Operation timed out\000Connection refused\000Host is down\000Host is unreachable\000Address in use\000Broken pipe\000I/O error\000No such device or address\000Block device required\000No such device\000Not a directory\000Is a directory\000Text file busy\000Exec format error\000Invalid argument\000Argument list too long\000Symbolic link loop\000Filename too long\000Too many open files in system\000No file descriptors available\000Bad file descriptor\000No child process\000Bad address\000File too large\000Too many links\000No locks available\000Resource deadlock would occur\000State not recoverable\000Previous owner died\000Operation canceled\000Function not implemented\000No message of desired type\000Identifier removed\000Device not a stream\000No data available\000Device timeout\000Out of streams resources\000Link has been severed\000Protocol error\000Bad message\000File descriptor in bad state\000Not a socket\000Destination address required\000Message too large\000Protocol wrong type for socket\000Protocol not available\000Protocol not supported\000Socket type not supported\000Not supported\000Protocol family not supported\000Address family not supported by protocol\000Address not available\000Network is down\000Network unreachable\000Connection reset by network\000Connection aborted\000No buffer space available\000Socket is connected\000Socket not connected\000Cannot send after socket shutdown\000Operation already in progress\000Operation in progress\000Stale file handle\000Remote I/O error\000Quota exceeded\000No medium found\000Wrong medium type\000No error information\000"
	.size	errmsg, 1804

	.hidden	__libc

	.weak	strerror_l
strerror_l = __strerror_l
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
