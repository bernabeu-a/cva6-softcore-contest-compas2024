	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/workdir/app" "mnist_original/main.c"
	.align	2
	.globl	readStimulus
	.hidden	readStimulus
	.type	readStimulus, @function
readStimulus:
.LFB9:
	.file 1 "mnist_original/main.c"
	.loc 1 13 1
	.cfi_startproc
.LVL0:
	.loc 1 14 5
	.loc 1 13 1 is_stmt 0
	mv	a3,a0
	mv	a5,a1
	.loc 1 14 5
	li	a4,1
	li	a2,24
	li	a1,24
.LVL1:
	li	a0,576
.LVL2:
	tail	envRead
.LVL3:
	.cfi_endproc
.LFE9:
	.size	readStimulus, .-readStimulus
	.align	2
	.globl	processInput
	.hidden	processInput
	.type	processInput, @function
processInput:
.LFB10:
	.loc 1 24 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 28 5
	.loc 1 24 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a2
	sw	s1,4(sp)
	.loc 1 28 5
	mv	a2,a3
.LVL5:
	.cfi_offset 9, -12
	.loc 1 24 1
	mv	s1,a1
	.loc 1 28 5
	mv	a1,s0
.LVL6:
	.loc 1 24 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 28 5
	call	propagate
.LVL7:
	.loc 1 31 5 is_stmt 1
.LBB8:
	.loc 1 31 9
	.loc 1 31 25 discriminator 1
	.loc 1 32 9
	.loc 1 32 33 is_stmt 0
	lw	a5,0(s1)
	li	a0,0
	.loc 1 32 12
	blt	a5,zero,.L3
	.loc 1 33 13 is_stmt 1
.LVL8:
	.loc 1 35 13
	.loc 1 31 45 discriminator 2
	.loc 1 31 25 discriminator 1
.LBE8:
	.loc 1 41 5
.LBB9:
	.loc 1 35 15 is_stmt 0
	lw	a0,0(s0)
	sub	a0,a0,a5
	seqz	a0,a0
.LVL9:
.L3:
.LBE9:
	.loc 1 43 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL10:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL11:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	processInput, .-processInput
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Expected  = %d\n"
	.align	2
.LC1:
	.string	"Predicted = %d\n"
	.align	2
.LC2:
	.string	"Result : %d/1\n"
	.align	2
.LC3:
	.string	"credence: %d\n"
	.align	2
.LC4:
	.string	"env0003"
	.align	2
.LC5:
	.string	"image %s: %d instructions\n"
	.align	2
.LC6:
	.string	"image %s: %d cycles\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.hidden	main
	.type	main, @function
main:
.LFB11:
	.loc 1 46 34 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 49 5
	.loc 1 52 5
	.loc 1 57 5
	.loc 1 46 34 is_stmt 0
	addi	sp,sp,-624
	.cfi_def_cfa_offset 624
.LVL13:
	.loc 1 58 5 is_stmt 1
	.loc 1 59 5
	.loc 1 61 5
.LBB10:
.LBB11:
	.loc 1 14 5
	addi	a5,sp,8
.LVL14:
	li	a4,1
	addi	a3,sp,16
.LVL15:
	li	a2,24
	li	a1,24
.LVL16:
	li	a0,576
.LVL17:
.LBE11:
.LBE10:
	.loc 1 46 34 is_stmt 0
	sw	ra,620(sp)
	sw	s0,616(sp)
	sw	s1,612(sp)
	sw	s2,608(sp)
	sw	s3,604(sp)
	sw	s4,600(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
.LBB13:
.LBB12:
	.loc 1 14 5
	call	envRead
.LVL18:
.LBE12:
.LBE13:
	.loc 1 62 5 is_stmt 1
.LBB14:
	.loc 1 62 19
	.loc 1 62 40
 #APP
# 62 "mnist_original/main.c" 1
	csrr s3, minstret
# 0 "" 2
.LVL19:
	.loc 1 62 93
 #NO_APP
.LBE14:
	.loc 1 63 5
.LBB15:
	.loc 1 63 18
	.loc 1 63 39
 #APP
# 63 "mnist_original/main.c" 1
	csrr s1, mcycle
# 0 "" 2
.LVL20:
	.loc 1 63 90
 #NO_APP
.LBE15:
	.loc 1 64 5
	.loc 1 64 25 is_stmt 0
	addi	a3,sp,7
	addi	a2,sp,12
.LVL21:
	addi	a1,sp,8
.LVL22:
	addi	a0,sp,16
	call	processInput
.LVL23:
	mv	s0,a0
.LVL24:
	.loc 1 68 5 is_stmt 1
.LBB16:
	.loc 1 68 19
	.loc 1 68 40
 #APP
# 68 "mnist_original/main.c" 1
	csrr s4, minstret
# 0 "" 2
.LVL25:
	.loc 1 68 93
 #NO_APP
.LBE16:
	.loc 1 69 5
.LBB17:
	.loc 1 69 18
	.loc 1 69 39
 #APP
# 69 "mnist_original/main.c" 1
	csrr s2, mcycle
# 0 "" 2
.LVL26:
	.loc 1 69 90
 #NO_APP
.LBE17:
	.loc 1 71 5
	lw	a1,8(sp)
	lla	a0,.LC0
	call	printf
.LVL27:
	.loc 1 72 5
	lw	a1,12(sp)
	lla	a0,.LC1
	call	printf
.LVL28:
	.loc 1 73 5
	mv	a1,s0
	lla	a0,.LC2
	call	printf
.LVL29:
	.loc 1 74 5
	lbu	a1,7(sp)
	lla	a0,.LC3
	call	printf
.LVL30:
	.loc 1 75 5
	sub	a2,s4,s3
.LVL31:
	lla	a1,.LC4
	lla	a0,.LC5
	call	printf
.LVL32:
	.loc 1 76 5
	sub	a2,s2,s1
.LVL33:
	lla	a1,.LC4
	lla	a0,.LC6
	call	printf
.LVL34:
	.loc 1 87 1 is_stmt 0
	lw	ra,620(sp)
	.cfi_restore 1
	lw	s0,616(sp)
	.cfi_restore 8
.LVL35:
	lw	s1,612(sp)
	.cfi_restore 9
.LVL36:
	lw	s2,608(sp)
	.cfi_restore 18
.LVL37:
	lw	s3,604(sp)
	.cfi_restore 19
.LVL38:
	lw	s4,600(sp)
	.cfi_restore 20
.LVL39:
	li	a0,0
	addi	sp,sp,624
	.cfi_def_cfa_offset 0
.LVL40:
	jr	ra
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/util/gcc-toolchain-builder/riscv_toolchain/lib/gcc/riscv-none-elf/13.1.0/include/stddef.h"
	.file 3 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/machine/_default_types.h"
	.file 4 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/sys/_stdint.h"
	.file 5 "mnist_original/typedefs.h"
	.file 6 "mnist_original/env.h"
	.file 7 "mnist_original/Network.h"
	.file 8 "mnist_original/cpp_utils.h"
	.file 9 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x591
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x14
	.4byte	.LASF46
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL24
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.byte	0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xd
	.4byte	0x40
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x29
	.byte	0x15
	.4byte	0x66
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x79
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x9a
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0x6
	.4byte	0xad
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0xd
	.4byte	0xad
	.byte	0x6
	.4byte	0xb4
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x5a
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x6d
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x8e
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF20
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x69
	.byte	0x10
	.4byte	0xbe
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6a
	.byte	0x11
	.4byte	0xca
	.byte	0xd
	.4byte	0xf5
	.byte	0x9
	.4byte	0x2d
	.4byte	0x116
	.byte	0x16
	.4byte	0x2d
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1f
	.4byte	0x106
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x20
	.4byte	0x106
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF25
	.byte	0x21
	.4byte	0x106
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x22
	.4byte	0x106
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF47
	.byte	0x6
	.byte	0x23
	.byte	0x15
	.4byte	0x106
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x24
	.byte	0x11
	.4byte	0xd6
	.byte	0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x25
	.byte	0x14
	.4byte	0x15e
	.byte	0x18
	.4byte	.LASF48
	.byte	0x9
	.byte	0xce
	.byte	0x5
	.4byte	0x40
	.4byte	0x18d
	.byte	0x5
	.4byte	0xb9
	.byte	0x19
	.byte	0
	.byte	0xf
	.4byte	.LASF29
	.byte	0x7
	.byte	0x7
	.4byte	0x1a8
	.byte	0x5
	.4byte	0x1a8
	.byte	0x5
	.4byte	0x1ad
	.byte	0x5
	.4byte	0x1b2
	.byte	0
	.byte	0x6
	.4byte	0x101
	.byte	0x6
	.4byte	0x16a
	.byte	0x6
	.4byte	0xf5
	.byte	0xf
	.4byte	.LASF30
	.byte	0x8
	.byte	0x25
	.4byte	0x1e1
	.byte	0x5
	.4byte	0x2d
	.byte	0x5
	.4byte	0x2d
	.byte	0x5
	.4byte	0x2d
	.byte	0x5
	.4byte	0x1e1
	.byte	0x5
	.4byte	0x2d
	.byte	0x5
	.4byte	0x1ad
	.byte	0
	.byte	0x6
	.4byte	0xe9
	.byte	0x10
	.4byte	.LASF41
	.byte	0x2e
	.4byte	0x40
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x427
	.byte	0x7
	.4byte	.LASF31
	.byte	0x2e
	.byte	0xe
	.4byte	0x40
	.4byte	.LLST10
	.byte	0x7
	.4byte	.LASF32
	.byte	0x2e
	.byte	0x1a
	.4byte	0x427
	.4byte	.LLST11
	.byte	0x4
	.4byte	.LASF33
	.byte	0x31
	.byte	0xc
	.4byte	0x34
	.4byte	.LLST12
	.byte	0x4
	.4byte	.LASF34
	.byte	0x31
	.byte	0x15
	.4byte	0x34
	.4byte	.LLST13
	.byte	0x11
	.4byte	.LASF35
	.byte	0x34
	.4byte	0x42c
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7b
	.byte	0x4
	.4byte	.LASF36
	.byte	0x39
	.byte	0xe
	.4byte	0x43d
	.4byte	.LLST14
	.byte	0x4
	.4byte	.LASF37
	.byte	0x3a
	.byte	0xe
	.4byte	0x44e
	.4byte	.LLST15
	.byte	0x11
	.4byte	.LASF38
	.byte	0x3b
	.4byte	0xf5
	.byte	0x3
	.byte	0x91
	.byte	0x97,0x7b
	.byte	0x4
	.4byte	.LASF39
	.byte	0x40
	.byte	0xf
	.4byte	0x47
	.4byte	.LLST16
	.byte	0xb
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x2a0
	.byte	0x4
	.4byte	.LASF40
	.byte	0x3e
	.byte	0x21
	.4byte	0xa1
	.4byte	.LLST20
	.byte	0
	.byte	0xb
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x2bd
	.byte	0x4
	.4byte	.LASF40
	.byte	0x3f
	.byte	0x20
	.4byte	0xa1
	.4byte	.LLST21
	.byte	0
	.byte	0xb
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x2da
	.byte	0x4
	.4byte	.LASF40
	.byte	0x44
	.byte	0x21
	.4byte	0xa1
	.4byte	.LLST22
	.byte	0
	.byte	0xb
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x2f7
	.byte	0x4
	.4byte	.LASF40
	.byte	0x45
	.byte	0x20
	.4byte	0xa1
	.4byte	.LLST23
	.byte	0
	.byte	0x1a
	.4byte	0x514
	.4byte	.LBB10
	.4byte	.LLRL17
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x34c
	.byte	0xc
	.4byte	0x52c
	.4byte	.LLST18
	.byte	0xc
	.4byte	0x521
	.4byte	.LLST19
	.byte	0xe
	.4byte	.LVL18
	.4byte	0x1b7
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x240
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7b
	.byte	0x1
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7b
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LVL23
	.4byte	0x45f
	.4byte	0x376
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7b
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7b
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7b
	.byte	0x1
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x97,0x7b
	.byte	0
	.byte	0x8
	.4byte	.LVL27
	.4byte	0x176
	.4byte	0x38d
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x8
	.4byte	.LVL28
	.4byte	0x176
	.4byte	0x3a4
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x8
	.4byte	.LVL29
	.4byte	0x176
	.4byte	0x3c1
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LVL30
	.4byte	0x176
	.4byte	0x3d8
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x8
	.4byte	.LVL32
	.4byte	0x176
	.4byte	0x401
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0xe
	.4byte	.LVL34
	.4byte	0x176
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x82
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	0xa8
	.byte	0x9
	.4byte	0xf5
	.4byte	0x43d
	.byte	0x1b
	.4byte	0x2d
	.2byte	0x23f
	.byte	0
	.byte	0x9
	.4byte	0x16a
	.4byte	0x44e
	.byte	0x12
	.4byte	0x2d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x9
	.4byte	0x16a
	.4byte	0x45f
	.byte	0x12
	.4byte	0x2d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LASF42
	.byte	0x14
	.4byte	0x40
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x514
	.byte	0x7
	.4byte	.LASF35
	.byte	0x14
	.byte	0x1c
	.4byte	0x1b2
	.4byte	.LLST2
	.byte	0x7
	.4byte	.LASF36
	.byte	0x15
	.byte	0x27
	.4byte	0x1ad
	.4byte	.LLST3
	.byte	0x7
	.4byte	.LASF37
	.byte	0x16
	.byte	0x27
	.4byte	0x1ad
	.4byte	.LLST4
	.byte	0x7
	.4byte	.LASF38
	.byte	0x17
	.byte	0x11
	.4byte	0x1b2
	.4byte	.LLST5
	.byte	0x4
	.4byte	.LASF43
	.byte	0x19
	.byte	0xc
	.4byte	0x34
	.4byte	.LLST6
	.byte	0x4
	.4byte	.LASF44
	.byte	0x1a
	.byte	0xc
	.4byte	0x34
	.4byte	.LLST7
	.byte	0x1c
	.4byte	.LLRL8
	.4byte	0x4e9
	.byte	0x1d
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.4byte	0x34
	.4byte	.LLST9
	.byte	0
	.byte	0xe
	.4byte	.LVL7
	.4byte	0x18d
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xa
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x9
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xd
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.byte	0x1
	.4byte	0x538
	.byte	0x13
	.4byte	.LASF35
	.byte	0xb
	.byte	0x1c
	.4byte	0x1b2
	.byte	0x13
	.4byte	.LASF36
	.byte	0xc
	.byte	0x1d
	.4byte	0x1ad
	.byte	0
	.byte	0x1f
	.4byte	0x514
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.4byte	0x521
	.4byte	.LLST0
	.byte	0xc
	.4byte	0x52c
	.4byte	.LLST1
	.byte	0x20
	.4byte	.LVL3
	.4byte	0x1b7
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x240
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.byte	0x5d
	.byte	0x9
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xa
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.byte	0x5f
	.byte	0x9
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xb
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x7e
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x48
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x6
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x15
	.byte	0x49
	.byte	0x13
	.byte	0x1c
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x48
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x27
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x5
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xd
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x48
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.byte	0x82,0x1
	.byte	0x19
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LLST10:
	.byte	0x7
	.4byte	.LVL12
	.4byte	.LVL17
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL17
	.4byte	.LFE11
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xa
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST11:
	.byte	0x7
	.4byte	.LVL12
	.4byte	.LVL16
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	.LVL16
	.4byte	.LFE11
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xb
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST12:
	.byte	0x7
	.4byte	.LVL19
	.4byte	.LVL25
	.byte	0x4
	.byte	0x83
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL25
	.4byte	.LVL31
	.byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL31
	.4byte	.LVL32-1
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	.LVL32-1
	.4byte	.LVL38
	.byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LLST13:
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL26
	.byte	0x4
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL26
	.4byte	.LVL33
	.byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL33
	.4byte	.LVL34-1
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	.LVL34-1
	.4byte	.LVL36
	.byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LLST14:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL14
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7b
	.byte	0x7
	.4byte	.LVL14
	.4byte	.LVL18-1
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x7
	.4byte	.LVL18-1
	.4byte	.LVL22
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7b
	.byte	0x7
	.4byte	.LVL22
	.4byte	.LVL23-1
	.byte	0x2
	.byte	0x7b
	.byte	0
	.byte	0x7
	.4byte	.LVL23-1
	.4byte	.LVL40
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7b
	.byte	0x7
	.4byte	.LVL40
	.4byte	.LFE11
	.byte	0x3
	.byte	0x72
	.byte	0x98,0x7b
	.byte	0
.LLST15:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL21
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7b
	.byte	0x7
	.4byte	.LVL21
	.4byte	.LVL23-1
	.byte	0x2
	.byte	0x7c
	.byte	0
	.byte	0x7
	.4byte	.LVL23-1
	.4byte	.LVL40
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7b
	.byte	0x7
	.4byte	.LVL40
	.4byte	.LFE11
	.byte	0x3
	.byte	0x72
	.byte	0x9c,0x7b
	.byte	0
.LLST16:
	.byte	0x7
	.4byte	.LVL24
	.4byte	.LVL35
	.byte	0x1
	.byte	0x58
	.byte	0
.LLST20:
	.byte	0x7
	.4byte	.LVL19
	.4byte	.LVL38
	.byte	0x1
	.byte	0x63
	.byte	0
.LLST21:
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL36
	.byte	0x1
	.byte	0x59
	.byte	0
.LLST22:
	.byte	0x7
	.4byte	.LVL25
	.4byte	.LVL39
	.byte	0x1
	.byte	0x64
	.byte	0
.LLST23:
	.byte	0x7
	.4byte	.LVL26
	.4byte	.LVL37
	.byte	0x1
	.byte	0x62
	.byte	0
.LLST18:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL14
	.byte	0x4
	.byte	0x91
	.byte	0x98,0x7b
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL14
	.4byte	.LVL18-1
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL18-1
	.4byte	.LVL18
	.byte	0x4
	.byte	0x91
	.byte	0x98,0x7b
	.byte	0x9f
	.byte	0
.LLST19:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL15
	.byte	0x4
	.byte	0x91
	.byte	0xa0,0x7b
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL15
	.4byte	.LVL18-1
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.4byte	.LVL18-1
	.4byte	.LVL18
	.byte	0x4
	.byte	0x91
	.byte	0xa0,0x7b
	.byte	0x9f
	.byte	0
.LLST2:
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL7-1
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL7-1
	.4byte	.LFE10
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xa
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST3:
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL6
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	.LVL6
	.4byte	.LVL11
	.byte	0x1
	.byte	0x59
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LFE10
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xb
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST4:
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL5
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL10
	.byte	0x1
	.byte	0x58
	.byte	0x7
	.4byte	.LVL10
	.4byte	.LFE10
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xc
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST5:
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL7-1
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.4byte	.LVL7-1
	.4byte	.LFE10
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xd
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST6:
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL8
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL8
	.4byte	.LVL9
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST7:
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL8
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL8
	.4byte	.LVL9
	.byte	0xa
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LLST9:
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL8
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL8
	.4byte	.LVL9
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST0:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL2
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL3-1
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.4byte	.LVL3-1
	.4byte	.LFE9
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xa
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL3-1
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL3-1
	.4byte	.LFE9
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xb
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL8:
	.byte	0x6
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x6
	.4byte	.LBB9
	.4byte	.LBE9
	.byte	0
.LLRL17:
	.byte	0x6
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x6
	.4byte	.LBB13
	.4byte	.LBE13
	.byte	0
.LLRL24:
	.byte	0x6
	.4byte	.Ltext0
	.4byte	.Letext0
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"success"
.LASF7:
	.string	"__int8_t"
.LASF9:
	.string	"__uint8_t"
.LASF6:
	.string	"size_t"
.LASF47:
	.string	"OUTPUTS_SIZE"
.LASF45:
	.string	"readStimulus"
.LASF38:
	.string	"output_value"
.LASF13:
	.string	"__int32_t"
.LASF31:
	.string	"argc"
.LASF25:
	.string	"NB_OUTPUTS"
.LASF36:
	.string	"expectedOutputBuffer"
.LASF3:
	.string	"unsigned int"
.LASF17:
	.string	"int8_t"
.LASF37:
	.string	"predictedOutputBuffer"
.LASF44:
	.string	"nbValidPredictions"
.LASF23:
	.string	"OUTPUTS_HEIGHT"
.LASF20:
	.string	"float"
.LASF2:
	.string	"long long unsigned int"
.LASF10:
	.string	"unsigned char"
.LASF22:
	.string	"UDATA_T"
.LASF24:
	.string	"OUTPUTS_WIDTH"
.LASF12:
	.string	"short unsigned int"
.LASF15:
	.string	"long unsigned int"
.LASF41:
	.string	"main"
.LASF26:
	.string	"NB_TARGET"
.LASF21:
	.string	"DATA_T"
.LASF33:
	.string	"instret"
.LASF18:
	.string	"uint8_t"
.LASF19:
	.string	"int32_t"
.LASF46:
	.string	"GNU C17 13.1.0 -mabi=ilp32 -mcmodel=medany -misa-spec=20191213 -march=rv32im_zicsr -ggdb -O3 -fvisibility=hidden"
.LASF42:
	.string	"processInput"
.LASF27:
	.string	"Target_0_T"
.LASF4:
	.string	"long long int"
.LASF16:
	.string	"char"
.LASF48:
	.string	"printf"
.LASF35:
	.string	"inputBuffer"
.LASF11:
	.string	"short int"
.LASF28:
	.string	"Target_T"
.LASF40:
	.string	"__tmp"
.LASF32:
	.string	"argv"
.LASF14:
	.string	"long int"
.LASF43:
	.string	"nbPredictions"
.LASF5:
	.string	"long double"
.LASF8:
	.string	"signed char"
.LASF29:
	.string	"propagate"
.LASF34:
	.string	"cycles"
.LASF30:
	.string	"envRead"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"mnist_original/main.c"
.LASF1:
	.string	"/workdir/app"
	.ident	"GCC: (GNU) 13.1.0"
