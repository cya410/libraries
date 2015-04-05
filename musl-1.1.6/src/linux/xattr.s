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
	.file	"src/linux/xattr.bc"
	.globl	getxattr
	.align	2
	.type	getxattr,%function
getxattr:                               @ @getxattr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #229
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp0:
	.size	getxattr, .Ltmp0-getxattr
	.cantunwind
	.fnend

	.globl	lgetxattr
	.align	2
	.type	lgetxattr,%function
lgetxattr:                              @ @lgetxattr
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #230
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp1:
	.size	lgetxattr, .Ltmp1-lgetxattr
	.cantunwind
	.fnend

	.globl	fgetxattr
	.align	2
	.type	fgetxattr,%function
fgetxattr:                              @ @fgetxattr
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #231
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp2:
	.size	fgetxattr, .Ltmp2-fgetxattr
	.cantunwind
	.fnend

	.globl	listxattr
	.align	2
	.type	listxattr,%function
listxattr:                              @ @listxattr
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #232
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp3:
	.size	listxattr, .Ltmp3-listxattr
	.cantunwind
	.fnend

	.globl	llistxattr
	.align	2
	.type	llistxattr,%function
llistxattr:                             @ @llistxattr
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #233
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp4:
	.size	llistxattr, .Ltmp4-llistxattr
	.cantunwind
	.fnend

	.globl	flistxattr
	.align	2
	.type	flistxattr,%function
flistxattr:                             @ @flistxattr
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #234
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp5:
	.size	flistxattr, .Ltmp5-flistxattr
	.cantunwind
	.fnend

	.globl	setxattr
	.align	2
	.type	setxattr,%function
setxattr:                               @ @setxattr
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB6_1
.LBB6_1:                                @ %entry
	ldr	r4, [sp, #16]
	mov	r7, #226
	@APP
	svc	#0
	@NO_APP
	pop	{r4, r7, r11, lr}
	b	__syscall_ret
.Ltmp6:
	.size	setxattr, .Ltmp6-setxattr
	.cantunwind
	.fnend

	.globl	lsetxattr
	.align	2
	.type	lsetxattr,%function
lsetxattr:                              @ @lsetxattr
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB7_1
.LBB7_1:                                @ %entry
	ldr	r4, [sp, #16]
	mov	r7, #227
	@APP
	svc	#0
	@NO_APP
	pop	{r4, r7, r11, lr}
	b	__syscall_ret
.Ltmp7:
	.size	lsetxattr, .Ltmp7-lsetxattr
	.cantunwind
	.fnend

	.globl	fsetxattr
	.align	2
	.type	fsetxattr,%function
fsetxattr:                              @ @fsetxattr
	.fnstart
.Leh_func_begin8:
.LBB8_0:                                @ %entry
	.save	{r4, r7, r11, lr}
	push	{r4, r7, r11, lr}
	b	.LBB8_1
.LBB8_1:                                @ %entry
	ldr	r4, [sp, #16]
	mov	r7, #228
	@APP
	svc	#0
	@NO_APP
	pop	{r4, r7, r11, lr}
	b	__syscall_ret
.Ltmp8:
	.size	fsetxattr, .Ltmp8-fsetxattr
	.cantunwind
	.fnend

	.globl	removexattr
	.align	2
	.type	removexattr,%function
removexattr:                            @ @removexattr
	.fnstart
.Leh_func_begin9:
.LBB9_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #235
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp9:
	.size	removexattr, .Ltmp9-removexattr
	.cantunwind
	.fnend

	.globl	lremovexattr
	.align	2
	.type	lremovexattr,%function
lremovexattr:                           @ @lremovexattr
	.fnstart
.Leh_func_begin10:
.LBB10_0:                               @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #236
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp10:
	.size	lremovexattr, .Ltmp10-lremovexattr
	.cantunwind
	.fnend

	.globl	fremovexattr
	.align	2
	.type	fremovexattr,%function
fremovexattr:                           @ @fremovexattr
	.fnstart
.Leh_func_begin11:
.LBB11_0:                               @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	mov	r7, #237
	@APP
	svc	#0
	@NO_APP
	pop	{r7, lr}
	b	__syscall_ret
.Ltmp11:
	.size	fremovexattr, .Ltmp11-fremovexattr
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
