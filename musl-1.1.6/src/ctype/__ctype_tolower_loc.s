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
	.file	"src/ctype/__ctype_tolower_loc.bc"
	.globl	__ctype_tolower_loc
	.align	2
	.type	__ctype_tolower_loc,%function
__ctype_tolower_loc:                    @ @__ctype_tolower_loc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r0, .LCPI0_0
	mov	pc, lr
.LCPI0_0:
	.long	ptable
.Ltmp0:
	.size	__ctype_tolower_loc, .Ltmp0-__ctype_tolower_loc
	.cantunwind
	.fnend

	.type	ptable,%object          @ @ptable
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
ptable:
	.long	table+512
	.size	ptable, 4

	.type	table,%object           @ @table
	.section	.rodata,"a",%progbits
	.align	2
table:
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	2                       @ 0x2
	.long	3                       @ 0x3
	.long	4                       @ 0x4
	.long	5                       @ 0x5
	.long	6                       @ 0x6
	.long	7                       @ 0x7
	.long	8                       @ 0x8
	.long	9                       @ 0x9
	.long	10                      @ 0xa
	.long	11                      @ 0xb
	.long	12                      @ 0xc
	.long	13                      @ 0xd
	.long	14                      @ 0xe
	.long	15                      @ 0xf
	.long	16                      @ 0x10
	.long	17                      @ 0x11
	.long	18                      @ 0x12
	.long	19                      @ 0x13
	.long	20                      @ 0x14
	.long	21                      @ 0x15
	.long	22                      @ 0x16
	.long	23                      @ 0x17
	.long	24                      @ 0x18
	.long	25                      @ 0x19
	.long	26                      @ 0x1a
	.long	27                      @ 0x1b
	.long	28                      @ 0x1c
	.long	29                      @ 0x1d
	.long	30                      @ 0x1e
	.long	31                      @ 0x1f
	.long	32                      @ 0x20
	.long	33                      @ 0x21
	.long	34                      @ 0x22
	.long	35                      @ 0x23
	.long	36                      @ 0x24
	.long	37                      @ 0x25
	.long	38                      @ 0x26
	.long	39                      @ 0x27
	.long	40                      @ 0x28
	.long	41                      @ 0x29
	.long	42                      @ 0x2a
	.long	43                      @ 0x2b
	.long	44                      @ 0x2c
	.long	45                      @ 0x2d
	.long	46                      @ 0x2e
	.long	47                      @ 0x2f
	.long	48                      @ 0x30
	.long	49                      @ 0x31
	.long	50                      @ 0x32
	.long	51                      @ 0x33
	.long	52                      @ 0x34
	.long	53                      @ 0x35
	.long	54                      @ 0x36
	.long	55                      @ 0x37
	.long	56                      @ 0x38
	.long	57                      @ 0x39
	.long	58                      @ 0x3a
	.long	59                      @ 0x3b
	.long	60                      @ 0x3c
	.long	61                      @ 0x3d
	.long	62                      @ 0x3e
	.long	63                      @ 0x3f
	.long	64                      @ 0x40
	.long	97                      @ 0x61
	.long	98                      @ 0x62
	.long	99                      @ 0x63
	.long	100                     @ 0x64
	.long	101                     @ 0x65
	.long	102                     @ 0x66
	.long	103                     @ 0x67
	.long	104                     @ 0x68
	.long	105                     @ 0x69
	.long	106                     @ 0x6a
	.long	107                     @ 0x6b
	.long	108                     @ 0x6c
	.long	109                     @ 0x6d
	.long	110                     @ 0x6e
	.long	111                     @ 0x6f
	.long	112                     @ 0x70
	.long	113                     @ 0x71
	.long	114                     @ 0x72
	.long	115                     @ 0x73
	.long	116                     @ 0x74
	.long	117                     @ 0x75
	.long	118                     @ 0x76
	.long	119                     @ 0x77
	.long	120                     @ 0x78
	.long	121                     @ 0x79
	.long	122                     @ 0x7a
	.long	91                      @ 0x5b
	.long	92                      @ 0x5c
	.long	93                      @ 0x5d
	.long	94                      @ 0x5e
	.long	95                      @ 0x5f
	.long	96                      @ 0x60
	.long	97                      @ 0x61
	.long	98                      @ 0x62
	.long	99                      @ 0x63
	.long	100                     @ 0x64
	.long	101                     @ 0x65
	.long	102                     @ 0x66
	.long	103                     @ 0x67
	.long	104                     @ 0x68
	.long	105                     @ 0x69
	.long	106                     @ 0x6a
	.long	107                     @ 0x6b
	.long	108                     @ 0x6c
	.long	109                     @ 0x6d
	.long	110                     @ 0x6e
	.long	111                     @ 0x6f
	.long	112                     @ 0x70
	.long	113                     @ 0x71
	.long	114                     @ 0x72
	.long	115                     @ 0x73
	.long	116                     @ 0x74
	.long	117                     @ 0x75
	.long	118                     @ 0x76
	.long	119                     @ 0x77
	.long	120                     @ 0x78
	.long	121                     @ 0x79
	.long	122                     @ 0x7a
	.long	123                     @ 0x7b
	.long	124                     @ 0x7c
	.long	125                     @ 0x7d
	.long	126                     @ 0x7e
	.long	127                     @ 0x7f
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.size	table, 1536


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
