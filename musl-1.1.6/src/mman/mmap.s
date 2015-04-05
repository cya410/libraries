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
	.file	"src/mman/mmap.bc"
	.align	2
	.type	dummy1,%function
dummy1:                                 @ @dummy1
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	mov	pc, lr
.Ltmp0:
	.size	dummy1, .Ltmp0-dummy1
	.cantunwind
	.fnend

	.align	2
	.type	dummy0,%function
dummy0:                                 @ @dummy0
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	mov	pc, lr
.Ltmp1:
	.size	dummy0, .Ltmp1-dummy0
	.cantunwind
	.fnend

	.globl	__mmap
	.align	2
	.type	__mmap,%function
__mmap:                                 @ @__mmap
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r9, r0
	ldr	r0, .LCPI2_0
	b	.LBB2_3
.LCPI2_0:
	.long	4294963200              @ 0xfffff000
.LBB2_3:                                @ %entry
	ldr	r5, [sp, #44]
	ldr	r7, [sp, #40]
	mov	r6, r1
	mov	r1, #255
	b	.LBB2_4
.LBB2_4:                                @ %entry
	mov	r10, r3
	mov	r8, r2
	orr	r1, r1, #3840
	and	r0, r5, r0
	and	r1, r7, r1
	orrs	r0, r1, r0
	beq	.LBB2_6
	b	.LBB2_5
.LBB2_5:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	b	.LBB2_8
.LBB2_6:                                @ %if.end
	cmn	r6, #-2147483647
	blo	.LBB2_9
	b	.LBB2_7
.LBB2_7:                                @ %if.then1
	bl	__errno_location
	mov	r1, #12
	b	.LBB2_8
.LBB2_8:                                @ %return
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB2_13
.LBB2_9:                                @ %if.end3
	ldr	r4, [sp, #32]
	tst	r10, #16
	beq	.LBB2_11
	b	.LBB2_10
.LBB2_10:                               @ %if.then6
	mvn	r0, #0
	bl	__vm_lock
	bl	__vm_unlock
	b	.LBB2_11
.LBB2_11:                               @ %if.end7
	lsr	r0, r7, #12
	mov	r7, #192
	mov	r1, r6
	mov	r2, r8
	b	.LBB2_12
.LBB2_12:                               @ %if.end7
	mov	r3, r10
	orr	r5, r0, r5, lsl #20
	mov	r0, r9
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	b	.LBB2_13
.LBB2_13:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp2:
	.size	__mmap, .Ltmp2-__mmap
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	__vm_lock
__vm_lock = dummy1
	.weak	__vm_unlock
__vm_unlock = dummy0
	.weak	mmap
mmap = __mmap
	.weak	mmap64
mmap64 = __mmap
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
