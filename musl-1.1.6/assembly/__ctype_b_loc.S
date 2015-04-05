.section __ctype_b_loc_text
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
	.file	"src/ctype/__ctype_b_loc.bc"
	.globl	__ctype_b_loc
	.align	2
	.type	__ctype_b_loc,%function
.section bb0_0
__ctype_b_loc:                          @ @__ctype_b_loc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r0, .LCPI0_0
	mov	pc, lr
.LCPI0_0:
	.long	ptable
.Ltmp0:
	.size	__ctype_b_loc, .Ltmp0-__ctype_b_loc
	.cantunwind
	.fnend

	.type	ptable,%object          @ @ptable
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
ptable:
	.long	table+256
	.size	ptable, 4

	.type	table,%object           @ @table
	.section	.rodata,"a",%progbits
	.align	1
table:
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	8195                    @ 0x2003
	.short	8194                    @ 0x2002
	.short	8194                    @ 0x2002
	.short	8194                    @ 0x2002
	.short	8194                    @ 0x2002
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	2                       @ 0x2
	.short	24577                   @ 0x6001
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	55304                   @ 0xd808
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	54536                   @ 0xd508
	.short	54536                   @ 0xd508
	.short	54536                   @ 0xd508
	.short	54536                   @ 0xd508
	.short	54536                   @ 0xd508
	.short	54536                   @ 0xd508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	50440                   @ 0xc508
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	54792                   @ 0xd608
	.short	54792                   @ 0xd608
	.short	54792                   @ 0xd608
	.short	54792                   @ 0xd608
	.short	54792                   @ 0xd608
	.short	54792                   @ 0xd608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	50696                   @ 0xc608
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	49156                   @ 0xc004
	.short	2                       @ 0x2
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.short	0                       @ 0x0
	.size	table, 768


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
