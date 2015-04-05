.section pthread_attr_get_text
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
	.file	"src/thread/pthread_attr_get.bc"
	.globl	pthread_attr_getdetachstate
	.align	2
	.type	pthread_attr_getdetachstate,%function
.section bb0_0
pthread_attr_getdetachstate:            @ @pthread_attr_getdetachstate
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r0, [r0, #12]
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp0:
	.size	pthread_attr_getdetachstate, .Ltmp0-pthread_attr_getdetachstate
	.cantunwind
	.fnend

	.globl	pthread_attr_getguardsize
	.align	2
	.type	pthread_attr_getguardsize,%function
.section bb1_0
pthread_attr_getguardsize:              @ @pthread_attr_getguardsize
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	ldr	r0, [r0, #4]
	add	r0, r0, #4096
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp1:
	.size	pthread_attr_getguardsize, .Ltmp1-pthread_attr_getguardsize
	.cantunwind
	.fnend

	.globl	pthread_attr_getinheritsched
	.align	2
	.type	pthread_attr_getinheritsched,%function
.section bb2_0
pthread_attr_getinheritsched:           @ @pthread_attr_getinheritsched
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	ldr	r0, [r0, #16]
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp2:
	.size	pthread_attr_getinheritsched, .Ltmp2-pthread_attr_getinheritsched
	.cantunwind
	.fnend

	.globl	pthread_attr_getschedparam
	.align	2
	.type	pthread_attr_getschedparam,%function
.section bb3_0
pthread_attr_getschedparam:             @ @pthread_attr_getschedparam
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	ldr	r0, [r0, #24]
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp3:
	.size	pthread_attr_getschedparam, .Ltmp3-pthread_attr_getschedparam
	.cantunwind
	.fnend

	.globl	pthread_attr_getschedpolicy
	.align	2
	.type	pthread_attr_getschedpolicy,%function
.section bb4_0
pthread_attr_getschedpolicy:            @ @pthread_attr_getschedpolicy
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	ldr	r0, [r0, #20]
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp4:
	.size	pthread_attr_getschedpolicy, .Ltmp4-pthread_attr_getschedpolicy
	.cantunwind
	.fnend

	.globl	pthread_attr_getscope
	.align	2
	.type	pthread_attr_getscope,%function
.section bb5_0
pthread_attr_getscope:                  @ @pthread_attr_getscope
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	mov	r0, #0
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp5:
	.size	pthread_attr_getscope, .Ltmp5-pthread_attr_getscope
	.cantunwind
	.fnend

	.globl	pthread_attr_getstack
	.align	2
	.type	pthread_attr_getstack,%function
.section bb6_0
pthread_attr_getstack:                  @ @pthread_attr_getstack
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	mov	r3, r0
	mov	r0, #22
	ldr	r12, [r3, #8]
	cmp	r12, #0
	b	.LBB6_1
.section bb6_1
.LBB6_1:                                @ %entry
	moveq	pc, lr
	ldr	r0, [r3]
	add	r0, r0, #81920
	str	r0, [r2]
	sub	r0, r12, r0
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp6:
	.size	pthread_attr_getstack, .Ltmp6-pthread_attr_getstack
	.cantunwind
	.fnend

	.globl	pthread_attr_getstacksize
	.align	2
	.type	pthread_attr_getstacksize,%function
.section bb7_0
pthread_attr_getstacksize:              @ @pthread_attr_getstacksize
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	ldr	r0, [r0]
	add	r0, r0, #81920
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp7:
	.size	pthread_attr_getstacksize, .Ltmp7-pthread_attr_getstacksize
	.cantunwind
	.fnend

	.globl	pthread_barrierattr_getpshared
	.align	2
	.type	pthread_barrierattr_getpshared,%function
.section bb8_0
pthread_barrierattr_getpshared:         @ @pthread_barrierattr_getpshared
	.fnstart
.Leh_func_begin8:
.LBB8_0:                                @ %entry
	ldr	r0, [r0]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp8:
	.size	pthread_barrierattr_getpshared, .Ltmp8-pthread_barrierattr_getpshared
	.cantunwind
	.fnend

	.globl	pthread_condattr_getclock
	.align	2
	.type	pthread_condattr_getclock,%function
.section bb9_0
pthread_condattr_getclock:              @ @pthread_condattr_getclock
	.fnstart
.Leh_func_begin9:
.LBB9_0:                                @ %entry
	ldr	r0, [r0]
	bic	r0, r0, #-2147483648
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp9:
	.size	pthread_condattr_getclock, .Ltmp9-pthread_condattr_getclock
	.cantunwind
	.fnend

	.globl	pthread_condattr_getpshared
	.align	2
	.type	pthread_condattr_getpshared,%function
.section bb10_0
pthread_condattr_getpshared:            @ @pthread_condattr_getpshared
	.fnstart
.Leh_func_begin10:
.LBB10_0:                               @ %entry
	ldr	r0, [r0]
	lsr	r0, r0, #31
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp10:
	.size	pthread_condattr_getpshared, .Ltmp10-pthread_condattr_getpshared
	.cantunwind
	.fnend

	.globl	pthread_mutexattr_getprotocol
	.align	2
	.type	pthread_mutexattr_getprotocol,%function
.section bb11_0
pthread_mutexattr_getprotocol:          @ @pthread_mutexattr_getprotocol
	.fnstart
.Leh_func_begin11:
.LBB11_0:                               @ %entry
	mov	r0, #0
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp11:
	.size	pthread_mutexattr_getprotocol, .Ltmp11-pthread_mutexattr_getprotocol
	.cantunwind
	.fnend

	.globl	pthread_mutexattr_getpshared
	.align	2
	.type	pthread_mutexattr_getpshared,%function
.section bb12_0
pthread_mutexattr_getpshared:           @ @pthread_mutexattr_getpshared
	.fnstart
.Leh_func_begin12:
.LBB12_0:                               @ %entry
	ldr	r0, [r0]
	mov	r2, #1
	and	r0, r2, r0, lsr #7
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp12:
	.size	pthread_mutexattr_getpshared, .Ltmp12-pthread_mutexattr_getpshared
	.cantunwind
	.fnend

	.globl	pthread_mutexattr_getrobust
	.align	2
	.type	pthread_mutexattr_getrobust,%function
.section bb13_0
pthread_mutexattr_getrobust:            @ @pthread_mutexattr_getrobust
	.fnstart
.Leh_func_begin13:
.LBB13_0:                               @ %entry
	ldr	r0, [r0]
	mov	r2, #1
	and	r0, r2, r0, lsr #2
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp13:
	.size	pthread_mutexattr_getrobust, .Ltmp13-pthread_mutexattr_getrobust
	.cantunwind
	.fnend

	.globl	pthread_mutexattr_gettype
	.align	2
	.type	pthread_mutexattr_gettype,%function
.section bb14_0
pthread_mutexattr_gettype:              @ @pthread_mutexattr_gettype
	.fnstart
.Leh_func_begin14:
.LBB14_0:                               @ %entry
	ldr	r0, [r0]
	and	r0, r0, #3
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp14:
	.size	pthread_mutexattr_gettype, .Ltmp14-pthread_mutexattr_gettype
	.cantunwind
	.fnend

	.globl	pthread_rwlockattr_getpshared
	.align	2
	.type	pthread_rwlockattr_getpshared,%function
.section bb15_0
pthread_rwlockattr_getpshared:          @ @pthread_rwlockattr_getpshared
	.fnstart
.Leh_func_begin15:
.LBB15_0:                               @ %entry
	ldr	r0, [r0]
	str	r0, [r1]
	mov	r0, #0
	mov	pc, lr
.Ltmp15:
	.size	pthread_rwlockattr_getpshared, .Ltmp15-pthread_rwlockattr_getpshared
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
