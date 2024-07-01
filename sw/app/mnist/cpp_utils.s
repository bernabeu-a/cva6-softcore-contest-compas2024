	.file	"cpp_utils.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/workdir/app" "mnist/cpp_utils.c"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%s out of bounds %lu > %lu\n"
	.align	2
.LC1:
	.string	"Unknown PGM file format"
	.align	2
.LC2:
	.string	"PGM image size does not match array size"
	.align	2
.LC3:
	.string	"fread() number of read objects (%lu) different than expected (%u) [data]\n"
	.align	2
.LC4:
	.string	"fread() number of read objects (%lu) different than expected (%u) [outputTargets]\n"
	.align	2
.LC5:
	.string	"EOF not reached, File error !!"
	.text
	.align	2
	.globl	envRead
	.hidden	envRead
	.type	envRead, @function
envRead:
.LFB44:
	.file 1 "mnist/cpp_utils.c"
	.loc 1 144 1
	.cfi_startproc
.LVL0:
	.loc 1 145 5
	.loc 1 146 5
.LBB14:
.LBB15:
	.loc 1 119 5
.LBE15:
.LBE14:
	.loc 1 144 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
.LBB20:
.LBB16:
	.loc 1 119 24
	lla	s1,mnist_input_idx
	lw	t1,0(s1)
.LBE16:
.LBE20:
	.loc 1 144 1
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
.LBB21:
.LBB17:
	.loc 1 119 24
	addi	a7,t1,2
	.loc 1 119 8
	li	a6,593
.LBE17:
.LBE21:
	.loc 1 144 1
	mv	s6,a0
	mv	s5,a1
	mv	s4,a2
	mv	s3,a3
.LBB22:
.LBB18:
	.loc 1 119 8
	bgtu	a7,a6,.L2
	.loc 1 120 9 is_stmt 1
	.loc 1 121 13
	.loc 1 121 33 is_stmt 0
	lla	a6,.LANCHOR0
	add	a6,a6,t1
	.loc 1 121 13
	lbu	s2,0(a6)
.LVL1:
	lbu	s0,1(a6)
.LVL2:
	.loc 1 122 13 is_stmt 1
	.loc 1 122 29 is_stmt 0
	sw	a7,0(s1)
	.loc 1 127 9 is_stmt 1
.LVL3:
.L3:
.LBE18:
.LBE22:
	.loc 1 148 5
	.loc 1 148 8 is_stmt 0
	li	a6,80
	bne	s2,a6,.L4
	.loc 1 148 47 discriminator 1
	addi	s0,s0,-53
.LVL4:
	.loc 1 148 26 discriminator 1
	andi	s0,s0,0xff
.LVL5:
	li	a3,1
	bleu	s0,a3,.L5
.L4:
	.loc 1 149 9 is_stmt 1
	lla	a0,.LC1
.L24:
	.loc 1 209 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL6:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL7:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL8:
	lw	s5,20(sp)
	.cfi_restore 21
.LVL9:
	lw	s6,16(sp)
	.cfi_restore 22
.LVL10:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 207 9
	tail	puts
.LVL11:
.L5:
	.cfi_restore_state
	.loc 1 153 5 is_stmt 1
	.loc 1 154 5
	.loc 1 155 5
	.loc 1 156 5
	.loc 1 157 5
	.loc 1 158 5
	.loc 1 159 5
.LBB23:
.LBB24:
	.loc 1 119 5
	.loc 1 119 24 is_stmt 0
	lw	a2,0(s1)
	.loc 1 119 8
	li	a3,593
	.loc 1 119 24
	addi	a2,a2,11
	.loc 1 119 8
	bgtu	a2,a3,.L6
	.loc 1 120 9 is_stmt 1
	.loc 1 125 13
	.loc 1 125 29 is_stmt 0
	sw	a2,0(s1)
	.loc 1 127 9 is_stmt 1
.L7:
.LVL12:
.LBE24:
.LBE23:
	.loc 1 161 5
	.loc 1 161 8 is_stmt 0
	li	a3,24
	bne	s4,a3,.L8
	.loc 1 161 42 discriminator 1
	bne	s5,s4,.L8
	.loc 1 167 5 is_stmt 1
.LVL13:
	.loc 1 185 5
.LBB26:
.LBB27:
	.loc 1 119 5
	.loc 1 119 24 is_stmt 0
	lw	a3,0(s1)
	.loc 1 119 8
	li	a2,593
	.loc 1 119 24
	add	s0,s6,a3
	.loc 1 119 8
	bgtu	s0,a2,.L10
	.loc 1 120 9 is_stmt 1
	.loc 1 120 12 is_stmt 0
	beq	s3,zero,.L11
	.loc 1 121 13 is_stmt 1
	lla	a1,.LANCHOR0
	mv	a2,s6
	add	a1,a1,a3
	mv	a0,s3
	sw	a5,12(sp)
	sw	a4,8(sp)
	call	memcpy
.LVL14:
	lw	a5,12(sp)
	lw	a4,8(sp)
	.loc 1 122 13
.L11:
	.loc 1 122 29 is_stmt 0
	sw	s0,0(s1)
	.loc 1 127 9 is_stmt 1
.LVL15:
.LBE27:
.LBE26:
	.loc 1 187 5
.L12:
	.loc 1 199 5
.LBB29:
.LBB30:
	.loc 1 119 5
	.loc 1 119 24 is_stmt 0
	lw	a3,0(s1)
	.loc 1 119 29
	slli	a2,a4,2
	.loc 1 119 8
	li	a1,593
	.loc 1 119 24
	add	s0,a2,a3
	.loc 1 119 8
	bgtu	s0,a1,.L13
	.loc 1 120 9 is_stmt 1
	.loc 1 120 12 is_stmt 0
	beq	a5,zero,.L14
	.loc 1 121 13 is_stmt 1
	lla	a1,.LANCHOR0
	add	a1,a1,a3
	mv	a0,a5
	call	memcpy
.LVL16:
	.loc 1 122 13
.L14:
	.loc 1 122 29 is_stmt 0
	sw	s0,0(s1)
	.loc 1 127 9 is_stmt 1
.LVL17:
.LBE30:
.LBE29:
	.loc 1 201 5
.L15:
	.loc 1 206 5
.LBB32:
.LBB33:
	.loc 1 135 5
.LBE33:
.LBE32:
	.loc 1 206 8 is_stmt 0 discriminator 1
	lw	a4,0(s1)
	li	a5,593
	bne	a4,a5,.L26
	.loc 1 209 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL18:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL19:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL20:
	lw	s5,20(sp)
	.cfi_restore 21
.LVL21:
	lw	s6,16(sp)
	.cfi_restore 22
.LVL22:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L8:
	.cfi_restore_state
	.loc 1 163 9 is_stmt 1
	lla	a0,.LC2
	j	.L24
.L26:
	.loc 1 207 9
	lla	a0,.LC5
	j	.L24
.LVL24:
.L13:
.LBB34:
.LBB31:
	.loc 1 129 9 is_stmt 0
	li	a3,593
	mv	a2,s0
	lla	a1,.LANCHOR1
	lla	a0,.LC0
	sw	a4,8(sp)
	.loc 1 129 9 is_stmt 1
	call	printf
.LVL25:
	.loc 1 130 9
.LBE31:
.LBE34:
	.loc 1 201 5
	.loc 1 201 8 is_stmt 0
	lw	a4,8(sp)
	li	a5,-1
	beq	a4,a5,.L15
	.loc 1 202 9 is_stmt 1
	mv	a2,a4
	li	a1,-1
	lla	a0,.LC4
	call	printf
.LVL26:
	j	.L15
.LVL27:
.L10:
.LBB35:
.LBB28:
	.loc 1 129 9 is_stmt 0
	li	a3,593
	mv	a2,s0
	lla	a1,.LANCHOR1
	lla	a0,.LC0
	sw	a5,12(sp)
	sw	a4,8(sp)
	.loc 1 129 9 is_stmt 1
	call	printf
.LVL28:
	.loc 1 130 9
.LBE28:
.LBE35:
	.loc 1 187 5
	.loc 1 187 8 is_stmt 0
	li	a3,-1
	lw	a4,8(sp)
	lw	a5,12(sp)
	beq	s6,a3,.L12
	.loc 1 188 9 is_stmt 1
	mv	a2,s6
	li	a1,-1
	lla	a0,.LC3
	call	printf
.LVL29:
	lw	a5,12(sp)
	lw	a4,8(sp)
	j	.L12
.LVL30:
.L2:
.LBB36:
.LBB19:
	.loc 1 129 9 is_stmt 0
	li	a3,593
.LVL31:
	mv	a2,a7
.LVL32:
	lla	a1,.LANCHOR1
.LVL33:
	lla	a0,.LC0
.LVL34:
	sw	a5,12(sp)
	sw	a4,8(sp)
	.loc 1 129 9 is_stmt 1
	call	printf
.LVL35:
	lw	a5,12(sp)
	lw	a4,8(sp)
	.loc 1 130 9
	li	s2,0
	li	s0,0
	.loc 1 130 16 is_stmt 0
	j	.L3
.LVL36:
.L6:
.LBE19:
.LBE36:
.LBB37:
.LBB25:
	.loc 1 129 9
	li	a3,593
	lla	a1,.LANCHOR1
	lla	a0,.LC0
	sw	a5,12(sp)
	sw	a4,8(sp)
	.loc 1 129 9 is_stmt 1
	call	printf
.LVL37:
	lw	a5,12(sp)
	lw	a4,8(sp)
	.loc 1 130 9
	.loc 1 130 16 is_stmt 0
	j	.L7
.LBE25:
.LBE37:
	.cfi_endproc
.LFE44:
	.size	envRead, .-envRead
	.hidden	env0003
	.globl	env0003
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"read_mnist_input"
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	env0003, @object
	.size	env0003, 593
env0003:
	.string	"P5\n24 24\n255\n"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\005\004"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\002\322B"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\007\263\207"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"d\376\\"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"o\376\235"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003\313\3766"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" \347\376f"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"$\376\330\022"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"~\376\263"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\254\376;"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	".\374\352\022"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\005\342\365#"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\200\376f"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"%\376\251"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\032\361\373\023"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\252\376U"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	".\376\302"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\t\347\366#"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"v\377\230\035"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"t\376\266"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"v\376\376\363\327\327\327\312\271\205\321\376\203"
	.string	"\021"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	">\363\376\376\376\376\376\376\376\376\376\376\350\235#"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"F\204\224FIaaa\273\376\371\"\004"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\256\376q"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\026\356\3765"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"s\376\237\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\256\376a"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\327\376s"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"U\373\376i"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"T\362\210\n"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.section	.sbss,"aw",@nobits
	.align	2
	.type	mnist_input_idx, @object
	.size	mnist_input_idx, 4
mnist_input_idx:
	.zero	4
	.text
.Letext0:
	.file 2 "/util/gcc-toolchain-builder/riscv_toolchain/lib/gcc/riscv-none-elf/13.1.0/include/stddef.h"
	.file 3 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/machine/_default_types.h"
	.file 4 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/sys/_stdint.h"
	.file 5 "mnist/typedefs.h"
	.file 6 "mnist/env.h"
	.file 7 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/string.h"
	.file 8 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/stdio.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4f2
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x14
	.4byte	.LASF44
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.byte	0xe
	.4byte	0x34
	.byte	0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x29
	.byte	0x15
	.4byte	0x66
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x8e
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x16
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0xe
	.4byte	0x9e
	.byte	0x9
	.4byte	0xa5
	.byte	0x9
	.4byte	0xb4
	.byte	0x17
	.byte	0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x5a
	.byte	0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x82
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF18
	.byte	0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x69
	.byte	0x10
	.4byte	0xb5
	.byte	0xa
	.4byte	0x2d
	.4byte	0xf0
	.byte	0xf
	.4byte	0x2d
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF20
	.byte	0x1f
	.4byte	0xe0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF21
	.byte	0x20
	.4byte	0xe0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF22
	.byte	0x21
	.4byte	0xe0
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF23
	.byte	0x22
	.4byte	0xe0
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF24
	.byte	0x23
	.4byte	0xe0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x24
	.byte	0x11
	.4byte	0xc1
	.byte	0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x25
	.byte	0x14
	.4byte	0x13b
	.byte	0xa
	.4byte	0x6d
	.4byte	0x164
	.byte	0x18
	.4byte	0x2d
	.2byte	0x250
	.byte	0
	.byte	0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x23
	.byte	0xf
	.4byte	0x153
	.byte	0x5
	.byte	0x3
	.4byte	env0003
	.byte	0x1a
	.4byte	.LASF27
	.byte	0x1
	.byte	0x74
	.byte	0xc
	.4byte	0x45
	.byte	0x5
	.byte	0x3
	.4byte	mnist_input_idx
	.byte	0x10
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0x9c
	.4byte	0x1a8
	.byte	0xb
	.4byte	0x9c
	.byte	0xb
	.4byte	0xaf
	.byte	0xb
	.4byte	0x34
	.byte	0
	.byte	0x10
	.4byte	.LASF29
	.byte	0x8
	.byte	0xce
	.byte	0x5
	.4byte	0x45
	.4byte	0x1bf
	.byte	0xb
	.4byte	0xaa
	.byte	0x1b
	.byte	0
	.byte	0x1c
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8a
	.byte	0x6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x466
	.byte	0x5
	.4byte	.LASF30
	.byte	0x8a
	.byte	0x1b
	.4byte	0x2d
	.4byte	.LLST0
	.byte	0x5
	.4byte	.LASF31
	.byte	0x8b
	.byte	0x1b
	.4byte	0x2d
	.4byte	.LLST1
	.byte	0x5
	.4byte	.LASF32
	.byte	0x8c
	.byte	0x1b
	.4byte	0x2d
	.4byte	.LLST2
	.byte	0x5
	.4byte	.LASF33
	.byte	0x8d
	.byte	0x16
	.4byte	0x466
	.4byte	.LLST3
	.byte	0x5
	.4byte	.LASF34
	.byte	0x8e
	.byte	0x1b
	.4byte	0x2d
	.4byte	.LLST4
	.byte	0x5
	.4byte	.LASF35
	.byte	0x8f
	.byte	0x18
	.4byte	0x46b
	.4byte	.LLST5
	.byte	0x7
	.4byte	.LASF36
	.byte	0x91
	.byte	0xa
	.4byte	0x470
	.4byte	.LLST6
	.byte	0x7
	.4byte	.LASF37
	.byte	0x99
	.byte	0x9
	.4byte	0x45
	.4byte	.LLST7
	.byte	0x7
	.4byte	.LASF38
	.byte	0x9a
	.byte	0x9
	.4byte	0x45
	.4byte	.LLST7
	.byte	0x7
	.4byte	.LASF39
	.byte	0x9b
	.byte	0x9
	.4byte	0x45
	.4byte	.LLST9
	.byte	0x7
	.4byte	.LASF40
	.byte	0xa7
	.byte	0xc
	.4byte	0x34
	.4byte	.LLST10
	.byte	0xc
	.4byte	0x48d
	.4byte	.LBB14
	.4byte	.LLRL11
	.byte	0x92
	.byte	0x5
	.4byte	0x2d2
	.byte	0x3
	.4byte	0x4b5
	.4byte	.LLST12
	.byte	0x3
	.4byte	0x4a9
	.4byte	.LLST13
	.byte	0x3
	.4byte	0x49e
	.4byte	.LLST14
	.byte	0xd
	.4byte	.LLRL11
	.byte	0x8
	.4byte	.LVL35
	.4byte	0x1a8
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x251
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x48d
	.4byte	.LBB23
	.4byte	.LLRL15
	.byte	0x9f
	.byte	0x5
	.4byte	0x32a
	.byte	0x3
	.4byte	0x4b5
	.4byte	.LLST16
	.byte	0x3
	.4byte	0x4a9
	.4byte	.LLST17
	.byte	0x3
	.4byte	0x49e
	.4byte	.LLST18
	.byte	0xd
	.4byte	.LLRL15
	.byte	0x8
	.4byte	.LVL37
	.4byte	0x1a8
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x251
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x48d
	.4byte	.LBB26
	.4byte	.LLRL19
	.byte	0xb9
	.byte	0xe
	.4byte	0x3a2
	.byte	0x3
	.4byte	0x4b5
	.4byte	.LLST20
	.byte	0x3
	.4byte	0x4a9
	.4byte	.LLST21
	.byte	0x3
	.4byte	0x49e
	.4byte	.LLST22
	.byte	0xd
	.4byte	.LLRL19
	.byte	0x11
	.4byte	.LVL14
	.4byte	0x4e3
	.4byte	0x377
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LVL28
	.4byte	0x1a8
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x251
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x48d
	.4byte	.LBB29
	.4byte	.LLRL23
	.byte	0xc7
	.byte	0xe
	.4byte	0x409
	.byte	0x3
	.4byte	0x4b5
	.4byte	.LLST24
	.byte	0x3
	.4byte	0x4a9
	.4byte	.LLST25
	.byte	0x3
	.4byte	0x49e
	.4byte	.LLST26
	.byte	0xd
	.4byte	.LLRL23
	.byte	0x1d
	.4byte	.LVL16
	.4byte	0x4e3
	.byte	0x8
	.4byte	.LVL25
	.4byte	0x1a8
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x251
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x480
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0xce
	.byte	0xa
	.byte	0x1f
	.4byte	.LVL11
	.4byte	0x4ec
	.byte	0x11
	.4byte	.LVL26
	.4byte	0x1a8
	.4byte	0x446
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.byte	0
	.byte	0x8
	.4byte	.LVL29
	.4byte	0x1a8
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x1
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0xd4
	.byte	0x9
	.4byte	0x147
	.byte	0xa
	.4byte	0x9e
	.4byte	0x480
	.byte	0xf
	.4byte	0x2d
	.byte	0x1
	.byte	0
	.byte	0x20
	.4byte	.LASF47
	.byte	0x1
	.byte	0x86
	.byte	0xc
	.4byte	0x45
	.byte	0x1
	.byte	0x21
	.4byte	.LASF48
	.byte	0x1
	.byte	0x76
	.byte	0xc
	.4byte	0x45
	.byte	0x1
	.4byte	0x4ce
	.byte	0x12
	.string	"dst"
	.byte	0x76
	.byte	0x23
	.4byte	0x9c
	.byte	0x22
	.4byte	.LASF30
	.byte	0x1
	.byte	0x76
	.byte	0x35
	.4byte	0x40
	.byte	0x12
	.string	"n"
	.byte	0x76
	.byte	0x48
	.4byte	0x40
	.byte	0x23
	.4byte	.LASF49
	.4byte	0x4de
	.byte	0x5
	.byte	0x3
	.4byte	__func__.0
	.byte	0
	.byte	0xa
	.4byte	0xa5
	.4byte	0x4de
	.byte	0xf
	.4byte	0x2d
	.byte	0x10
	.byte	0
	.byte	0xe
	.4byte	0x4ce
	.byte	0x13
	.4byte	.LASF28
	.4byte	.LASF42
	.byte	0x13
	.4byte	.LASF41
	.4byte	.LASF43
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
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x48
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0x21
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x13
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x9
	.byte	0x3b
	.byte	0x21
	.byte	0
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x48
	.byte	0
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x1d
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x48
	.byte	0
	.byte	0x7d
	.byte	0x1
	.byte	0x82,0x1
	.byte	0x19
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x2e
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x5
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
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
.LLST0:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL10
	.byte	0x1
	.byte	0x66
	.byte	0x7
	.4byte	.LVL10
	.4byte	.LVL11
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
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL22
	.byte	0x1
	.byte	0x66
	.byte	0x7
	.4byte	.LVL22
	.4byte	.LVL23
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
	.byte	0x7
	.4byte	.LVL23
	.4byte	.LVL30
	.byte	0x1
	.byte	0x66
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL34
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL34
	.4byte	.LFE44
	.byte	0x1
	.byte	0x66
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL9
	.byte	0x1
	.byte	0x65
	.byte	0x7
	.4byte	.LVL9
	.4byte	.LVL11
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
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL21
	.byte	0x1
	.byte	0x65
	.byte	0x7
	.4byte	.LVL21
	.4byte	.LVL23
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
	.byte	0x7
	.4byte	.LVL23
	.4byte	.LVL30
	.byte	0x1
	.byte	0x65
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL33
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	.LVL33
	.4byte	.LFE44
	.byte	0x1
	.byte	0x65
	.byte	0
.LLST2:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL8
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.4byte	.LVL8
	.4byte	.LVL11
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
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL20
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL23
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
	.byte	0x7
	.4byte	.LVL23
	.4byte	.LVL30
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL32
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	.LVL32
	.4byte	.LFE44
	.byte	0x1
	.byte	0x64
	.byte	0
.LLST3:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL7
	.byte	0x1
	.byte	0x63
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL11
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
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL19
	.byte	0x1
	.byte	0x63
	.byte	0x7
	.4byte	.LVL19
	.4byte	.LVL23
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
	.byte	0x7
	.4byte	.LVL23
	.4byte	.LVL30
	.byte	0x1
	.byte	0x63
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL31
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.4byte	.LVL31
	.4byte	.LFE44
	.byte	0x1
	.byte	0x63
	.byte	0
.LLST4:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL30
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xe
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL35-1
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.4byte	.LVL35-1
	.4byte	.LVL36
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LFE44
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xe
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST5:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL30
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xf
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL35-1
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL35-1
	.4byte	.LVL36
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LFE44
	.byte	0xa
	.byte	0xa3
	.byte	0x3
	.byte	0xa5
	.byte	0xf
	.byte	0x26
	.byte	0xa8
	.byte	0x2d
	.byte	0xa8
	.byte	0
	.byte	0x9f
	.byte	0
.LLST6:
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL2
	.byte	0x5
	.byte	0x62
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL3
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x1
	.byte	0x58
	.byte	0x93
	.byte	0x1
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL4
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x1
	.byte	0x58
	.byte	0x93
	.byte	0x1
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL5
	.byte	0x8
	.byte	0x62
	.byte	0x93
	.byte	0x1
	.byte	0x78
	.byte	0x35
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL6
	.byte	0x5
	.byte	0x62
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL18
	.byte	0x5
	.byte	0x62
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x7
	.4byte	.LVL23
	.4byte	.LVL30
	.byte	0x5
	.byte	0x62
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LFE44
	.byte	0x5
	.byte	0x62
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0
.LLST7:
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL30
	.byte	0x2
	.byte	0x48
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LFE44
	.byte	0x2
	.byte	0x48
	.byte	0x9f
	.byte	0
.LLST9:
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL30
	.byte	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LFE44
	.byte	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.byte	0
.LLST10:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL15
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL27
	.4byte	.LVL28
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LLST12:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL36
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0
.LLST13:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL36
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST14:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL3
	.byte	0x6
	.byte	0xa0
	.4byte	.Ldebug_info0+559
	.byte	0
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL36
	.byte	0x6
	.byte	0xa0
	.4byte	.Ldebug_info0+559
	.byte	0
	.byte	0
.LLST16:
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL12
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LFE44
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0
.LLST17:
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL12
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LFE44
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST18:
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL12
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LFE44
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LLST20:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL15
	.byte	0x1
	.byte	0x66
	.byte	0x7
	.4byte	.LVL27
	.4byte	.LVL28
	.byte	0x1
	.byte	0x66
	.byte	0
.LLST21:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL15
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL27
	.4byte	.LVL28
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST22:
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL15
	.byte	0x1
	.byte	0x63
	.byte	0x7
	.4byte	.LVL27
	.4byte	.LVL28
	.byte	0x1
	.byte	0x63
	.byte	0
.LLST24:
	.byte	0x7
	.4byte	.LVL15
	.4byte	.LVL16-1
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.4byte	.LVL24
	.4byte	.LVL25-1
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.4byte	.LVL25-1
	.4byte	.LVL25
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
.LLST25:
	.byte	0x7
	.4byte	.LVL15
	.4byte	.LVL17
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL24
	.4byte	.LVL25
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LLST26:
	.byte	0x7
	.4byte	.LVL15
	.4byte	.LVL16-1
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL24
	.4byte	.LVL25-1
	.byte	0x1
	.byte	0x5f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
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
.LLRL11:
	.byte	0x6
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x6
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x6
	.4byte	.LBB21
	.4byte	.LBE21
	.byte	0x6
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x6
	.4byte	.LBB36
	.4byte	.LBE36
	.byte	0
.LLRL15:
	.byte	0x6
	.4byte	.LBB23
	.4byte	.LBE23
	.byte	0x6
	.4byte	.LBB37
	.4byte	.LBE37
	.byte	0
.LLRL19:
	.byte	0x6
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x6
	.4byte	.LBB35
	.4byte	.LBE35
	.byte	0
.LLRL23:
	.byte	0x6
	.4byte	.LBB29
	.4byte	.LBE29
	.byte	0x6
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__int8_t"
.LASF36:
	.string	"header"
.LASF6:
	.string	"size_t"
.LASF24:
	.string	"OUTPUTS_SIZE"
.LASF12:
	.string	"__int32_t"
.LASF22:
	.string	"NB_OUTPUTS"
.LASF45:
	.string	"env0003"
.LASF3:
	.string	"unsigned int"
.LASF32:
	.string	"channelsWidth"
.LASF16:
	.string	"int8_t"
.LASF40:
	.string	"nbRead"
.LASF49:
	.string	"__func__"
.LASF20:
	.string	"OUTPUTS_HEIGHT"
.LASF18:
	.string	"float"
.LASF33:
	.string	"data"
.LASF43:
	.string	"__builtin_puts"
.LASF30:
	.string	"size"
.LASF38:
	.string	"pixelHeight"
.LASF21:
	.string	"OUTPUTS_WIDTH"
.LASF11:
	.string	"short unsigned int"
.LASF27:
	.string	"mnist_input_idx"
.LASF9:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF31:
	.string	"channelsHeight"
.LASF23:
	.string	"NB_TARGET"
.LASF37:
	.string	"pixelWidth"
.LASF19:
	.string	"DATA_T"
.LASF2:
	.string	"long long unsigned int"
.LASF35:
	.string	"outputTargets"
.LASF42:
	.string	"__builtin_memcpy"
.LASF34:
	.string	"outputsSize"
.LASF5:
	.string	"long double"
.LASF44:
	.string	"GNU C17 13.1.0 -mabi=ilp32 -mcmodel=medany -misa-spec=20191213 -march=rv32im_zicsr -ggdb -O3 -fvisibility=hidden"
.LASF25:
	.string	"Target_0_T"
.LASF4:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF29:
	.string	"printf"
.LASF17:
	.string	"int32_t"
.LASF10:
	.string	"short int"
.LASF26:
	.string	"Target_T"
.LASF48:
	.string	"read_mnist_input"
.LASF13:
	.string	"long int"
.LASF28:
	.string	"memcpy"
.LASF41:
	.string	"puts"
.LASF8:
	.string	"signed char"
.LASF39:
	.string	"maxValue"
.LASF47:
	.string	"feof_mnist_input"
.LASF46:
	.string	"envRead"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/workdir/app"
.LASF0:
	.string	"mnist/cpp_utils.c"
	.ident	"GCC: (GNU) 13.1.0"
