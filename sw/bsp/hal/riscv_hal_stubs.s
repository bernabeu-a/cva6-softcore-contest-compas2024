	.file	"riscv_hal_stubs.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/workdir/app" "../bsp/hal/riscv_hal_stubs.c"
	.align	2
	.weak	NoInterrupt_IRQHandler
	.hidden	NoInterrupt_IRQHandler
	.type	NoInterrupt_IRQHandler, @function
NoInterrupt_IRQHandler:
.LFB0:
	.file 1 "../bsp/hal/riscv_hal_stubs.c"
	.loc 1 38 1
	.cfi_startproc
	.loc 1 39 5
	.loc 1 40 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE0:
	.size	NoInterrupt_IRQHandler, .-NoInterrupt_IRQHandler
	.align	2
	.weak	UART_0_PLIC_IRQHandler
	.hidden	UART_0_PLIC_IRQHandler
	.type	UART_0_PLIC_IRQHandler, @function
UART_0_PLIC_IRQHandler:
.LFB33:
	.cfi_startproc
	.loc 1 42 31 is_stmt 1
	li	a0,0
	ret
	.cfi_endproc
.LFE33:
	.size	UART_0_PLIC_IRQHandler, .-UART_0_PLIC_IRQHandler
	.align	2
	.weak	QSPI_0_PLIC_IRQHandler
	.hidden	QSPI_0_PLIC_IRQHandler
	.type	QSPI_0_PLIC_IRQHandler, @function
QSPI_0_PLIC_IRQHandler:
.LFB35:
	.cfi_startproc
	.loc 1 47 31
	li	a0,0
	ret
	.cfi_endproc
.LFE35:
	.size	QSPI_0_PLIC_IRQHandler, .-QSPI_0_PLIC_IRQHandler
	.align	2
	.weak	ETH_0_PLIC_IRQHandler
	.hidden	ETH_0_PLIC_IRQHandler
	.type	ETH_0_PLIC_IRQHandler, @function
ETH_0_PLIC_IRQHandler:
.LFB37:
	.cfi_startproc
	.loc 1 52 31
	li	a0,0
	ret
	.cfi_endproc
.LFE37:
	.size	ETH_0_PLIC_IRQHandler, .-ETH_0_PLIC_IRQHandler
	.align	2
	.weak	External_4_IRQHandler
	.hidden	External_4_IRQHandler
	.type	External_4_IRQHandler, @function
External_4_IRQHandler:
.LFB39:
	.cfi_startproc
	.loc 1 57 31
	li	a0,0
	ret
	.cfi_endproc
.LFE39:
	.size	External_4_IRQHandler, .-External_4_IRQHandler
	.align	2
	.weak	External_5_IRQHandler
	.hidden	External_5_IRQHandler
	.type	External_5_IRQHandler, @function
External_5_IRQHandler:
.LFB41:
	.cfi_startproc
	.loc 1 62 31
	li	a0,0
	ret
	.cfi_endproc
.LFE41:
	.size	External_5_IRQHandler, .-External_5_IRQHandler
	.align	2
	.weak	External_6_IRQHandler
	.hidden	External_6_IRQHandler
	.type	External_6_IRQHandler, @function
External_6_IRQHandler:
.LFB43:
	.cfi_startproc
	.loc 1 67 31
	li	a0,0
	ret
	.cfi_endproc
.LFE43:
	.size	External_6_IRQHandler, .-External_6_IRQHandler
	.align	2
	.weak	External_7_IRQHandler
	.hidden	External_7_IRQHandler
	.type	External_7_IRQHandler, @function
External_7_IRQHandler:
.LFB45:
	.cfi_startproc
	.loc 1 72 31
	li	a0,0
	ret
	.cfi_endproc
.LFE45:
	.size	External_7_IRQHandler, .-External_7_IRQHandler
	.align	2
	.weak	External_8_IRQHandler
	.hidden	External_8_IRQHandler
	.type	External_8_IRQHandler, @function
External_8_IRQHandler:
.LFB47:
	.cfi_startproc
	.loc 1 77 31
	li	a0,0
	ret
	.cfi_endproc
.LFE47:
	.size	External_8_IRQHandler, .-External_8_IRQHandler
	.align	2
	.weak	External_9_IRQHandler
	.hidden	External_9_IRQHandler
	.type	External_9_IRQHandler, @function
External_9_IRQHandler:
.LFB49:
	.cfi_startproc
	.loc 1 82 31
	li	a0,0
	ret
	.cfi_endproc
.LFE49:
	.size	External_9_IRQHandler, .-External_9_IRQHandler
	.align	2
	.weak	External_10_IRQHandler
	.hidden	External_10_IRQHandler
	.type	External_10_IRQHandler, @function
External_10_IRQHandler:
.LFB51:
	.cfi_startproc
	.loc 1 87 31
	li	a0,0
	ret
	.cfi_endproc
.LFE51:
	.size	External_10_IRQHandler, .-External_10_IRQHandler
	.align	2
	.weak	External_11_IRQHandler
	.hidden	External_11_IRQHandler
	.type	External_11_IRQHandler, @function
External_11_IRQHandler:
.LFB53:
	.cfi_startproc
	.loc 1 92 31
	li	a0,0
	ret
	.cfi_endproc
.LFE53:
	.size	External_11_IRQHandler, .-External_11_IRQHandler
	.align	2
	.weak	External_12_IRQHandler
	.hidden	External_12_IRQHandler
	.type	External_12_IRQHandler, @function
External_12_IRQHandler:
.LFB55:
	.cfi_startproc
	.loc 1 97 31
	li	a0,0
	ret
	.cfi_endproc
.LFE55:
	.size	External_12_IRQHandler, .-External_12_IRQHandler
	.align	2
	.weak	External_13_IRQHandler
	.hidden	External_13_IRQHandler
	.type	External_13_IRQHandler, @function
External_13_IRQHandler:
.LFB57:
	.cfi_startproc
	.loc 1 102 31
	li	a0,0
	ret
	.cfi_endproc
.LFE57:
	.size	External_13_IRQHandler, .-External_13_IRQHandler
	.align	2
	.weak	External_14_IRQHandler
	.hidden	External_14_IRQHandler
	.type	External_14_IRQHandler, @function
External_14_IRQHandler:
.LFB59:
	.cfi_startproc
	.loc 1 107 31
	li	a0,0
	ret
	.cfi_endproc
.LFE59:
	.size	External_14_IRQHandler, .-External_14_IRQHandler
	.align	2
	.weak	External_15_IRQHandler
	.hidden	External_15_IRQHandler
	.type	External_15_IRQHandler, @function
External_15_IRQHandler:
.LFB61:
	.cfi_startproc
	.loc 1 112 31
	li	a0,0
	ret
	.cfi_endproc
.LFE61:
	.size	External_15_IRQHandler, .-External_15_IRQHandler
	.align	2
	.weak	External_16_IRQHandler
	.hidden	External_16_IRQHandler
	.type	External_16_IRQHandler, @function
External_16_IRQHandler:
.LFB63:
	.cfi_startproc
	.loc 1 117 31
	li	a0,0
	ret
	.cfi_endproc
.LFE63:
	.size	External_16_IRQHandler, .-External_16_IRQHandler
	.align	2
	.weak	External_17_IRQHandler
	.hidden	External_17_IRQHandler
	.type	External_17_IRQHandler, @function
External_17_IRQHandler:
.LFB65:
	.cfi_startproc
	.loc 1 122 31
	li	a0,0
	ret
	.cfi_endproc
.LFE65:
	.size	External_17_IRQHandler, .-External_17_IRQHandler
	.align	2
	.weak	External_18_IRQHandler
	.hidden	External_18_IRQHandler
	.type	External_18_IRQHandler, @function
External_18_IRQHandler:
.LFB67:
	.cfi_startproc
	.loc 1 127 31
	li	a0,0
	ret
	.cfi_endproc
.LFE67:
	.size	External_18_IRQHandler, .-External_18_IRQHandler
	.align	2
	.weak	External_19_IRQHandler
	.hidden	External_19_IRQHandler
	.type	External_19_IRQHandler, @function
External_19_IRQHandler:
.LFB69:
	.cfi_startproc
	.loc 1 132 31
	li	a0,0
	ret
	.cfi_endproc
.LFE69:
	.size	External_19_IRQHandler, .-External_19_IRQHandler
	.align	2
	.weak	External_20_IRQHandler
	.hidden	External_20_IRQHandler
	.type	External_20_IRQHandler, @function
External_20_IRQHandler:
.LFB71:
	.cfi_startproc
	.loc 1 137 31
	li	a0,0
	ret
	.cfi_endproc
.LFE71:
	.size	External_20_IRQHandler, .-External_20_IRQHandler
	.align	2
	.weak	External_21_IRQHandler
	.hidden	External_21_IRQHandler
	.type	External_21_IRQHandler, @function
External_21_IRQHandler:
.LFB73:
	.cfi_startproc
	.loc 1 142 31
	li	a0,0
	ret
	.cfi_endproc
.LFE73:
	.size	External_21_IRQHandler, .-External_21_IRQHandler
	.align	2
	.weak	External_22_IRQHandler
	.hidden	External_22_IRQHandler
	.type	External_22_IRQHandler, @function
External_22_IRQHandler:
.LFB75:
	.cfi_startproc
	.loc 1 147 31
	li	a0,0
	ret
	.cfi_endproc
.LFE75:
	.size	External_22_IRQHandler, .-External_22_IRQHandler
	.align	2
	.weak	External_23_IRQHandler
	.hidden	External_23_IRQHandler
	.type	External_23_IRQHandler, @function
External_23_IRQHandler:
.LFB77:
	.cfi_startproc
	.loc 1 152 31
	li	a0,0
	ret
	.cfi_endproc
.LFE77:
	.size	External_23_IRQHandler, .-External_23_IRQHandler
	.align	2
	.weak	External_24_IRQHandler
	.hidden	External_24_IRQHandler
	.type	External_24_IRQHandler, @function
External_24_IRQHandler:
.LFB79:
	.cfi_startproc
	.loc 1 157 31
	li	a0,0
	ret
	.cfi_endproc
.LFE79:
	.size	External_24_IRQHandler, .-External_24_IRQHandler
	.align	2
	.weak	External_25_IRQHandler
	.hidden	External_25_IRQHandler
	.type	External_25_IRQHandler, @function
External_25_IRQHandler:
.LFB81:
	.cfi_startproc
	.loc 1 162 31
	li	a0,0
	ret
	.cfi_endproc
.LFE81:
	.size	External_25_IRQHandler, .-External_25_IRQHandler
	.align	2
	.weak	External_26_IRQHandler
	.hidden	External_26_IRQHandler
	.type	External_26_IRQHandler, @function
External_26_IRQHandler:
.LFB83:
	.cfi_startproc
	.loc 1 167 31
	li	a0,0
	ret
	.cfi_endproc
.LFE83:
	.size	External_26_IRQHandler, .-External_26_IRQHandler
	.align	2
	.weak	External_27_IRQHandler
	.hidden	External_27_IRQHandler
	.type	External_27_IRQHandler, @function
External_27_IRQHandler:
.LFB85:
	.cfi_startproc
	.loc 1 172 31
	li	a0,0
	ret
	.cfi_endproc
.LFE85:
	.size	External_27_IRQHandler, .-External_27_IRQHandler
	.align	2
	.weak	External_28_IRQHandler
	.hidden	External_28_IRQHandler
	.type	External_28_IRQHandler, @function
External_28_IRQHandler:
.LFB87:
	.cfi_startproc
	.loc 1 177 31
	li	a0,0
	ret
	.cfi_endproc
.LFE87:
	.size	External_28_IRQHandler, .-External_28_IRQHandler
	.align	2
	.weak	External_29_IRQHandler
	.hidden	External_29_IRQHandler
	.type	External_29_IRQHandler, @function
External_29_IRQHandler:
.LFB89:
	.cfi_startproc
	.loc 1 182 31
	li	a0,0
	ret
	.cfi_endproc
.LFE89:
	.size	External_29_IRQHandler, .-External_29_IRQHandler
	.align	2
	.weak	External_30_IRQHandler
	.hidden	External_30_IRQHandler
	.type	External_30_IRQHandler, @function
External_30_IRQHandler:
.LFB91:
	.cfi_startproc
	.loc 1 187 31
	li	a0,0
	ret
	.cfi_endproc
.LFE91:
	.size	External_30_IRQHandler, .-External_30_IRQHandler
	.align	2
	.weak	External_31_IRQHandler
	.hidden	External_31_IRQHandler
	.type	External_31_IRQHandler, @function
External_31_IRQHandler:
.LFB93:
	.cfi_startproc
	.loc 1 192 31
	li	a0,0
	ret
	.cfi_endproc
.LFE93:
	.size	External_31_IRQHandler, .-External_31_IRQHandler
.Letext0:
	.file 2 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/machine/_default_types.h"
	.file 3 "/util/gcc-toolchain-builder/riscv_toolchain/riscv-none-elf/include/sys/_stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.4byte	.LASF46
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x39
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.byte	0x1
	.4byte	.LASF15
	.byte	0xc0
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF16
	.byte	0xbb
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF17
	.byte	0xb6
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF18
	.byte	0xb1
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF19
	.byte	0xac
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF20
	.byte	0xa7
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF21
	.byte	0xa2
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF22
	.byte	0x9d
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF23
	.byte	0x98
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF24
	.byte	0x93
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF25
	.byte	0x8e
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF26
	.byte	0x89
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF27
	.byte	0x84
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF28
	.byte	0x7f
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF29
	.byte	0x7a
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF30
	.byte	0x75
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF31
	.byte	0x70
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF32
	.byte	0x6b
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF33
	.byte	0x66
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF34
	.byte	0x61
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF35
	.byte	0x5c
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF36
	.byte	0x57
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF37
	.byte	0x52
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF38
	.byte	0x4d
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF39
	.byte	0x48
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF40
	.byte	0x43
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF41
	.byte	0x3e
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF42
	.byte	0x39
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF43
	.byte	0x34
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF44
	.byte	0x2f
	.4byte	0x78
	.byte	0x1
	.4byte	.LASF45
	.byte	0x2a
	.4byte	0x78
	.byte	0x6
	.4byte	.LASF47
	.byte	0x1
	.byte	0x25
	.byte	0x1f
	.4byte	0x78
	.byte	0x1
	.byte	0x7
	.4byte	0x1c8
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x2e
	.byte	0
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
	.byte	0x1f
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
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
	.byte	0x5
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
	.byte	0x6
	.byte	0x2e
	.byte	0
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x2e
	.byte	0
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
	.byte	0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"External_7_IRQHandler"
.LASF46:
	.string	"GNU C17 13.1.0 -mabi=ilp32 -mcmodel=medany -misa-spec=20191213 -march=rv32im_zicsr -ggdb -O3 -fvisibility=hidden"
.LASF11:
	.string	"__uint8_t"
.LASF25:
	.string	"External_21_IRQHandler"
.LASF18:
	.string	"External_28_IRQHandler"
.LASF30:
	.string	"External_16_IRQHandler"
.LASF31:
	.string	"External_15_IRQHandler"
.LASF41:
	.string	"External_5_IRQHandler"
.LASF16:
	.string	"External_30_IRQHandler"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"External_26_IRQHandler"
.LASF3:
	.string	"unsigned char"
.LASF33:
	.string	"External_13_IRQHandler"
.LASF22:
	.string	"External_24_IRQHandler"
.LASF26:
	.string	"External_20_IRQHandler"
.LASF7:
	.string	"long unsigned int"
.LASF24:
	.string	"External_22_IRQHandler"
.LASF5:
	.string	"short unsigned int"
.LASF23:
	.string	"External_23_IRQHandler"
.LASF38:
	.string	"External_8_IRQHandler"
.LASF43:
	.string	"ETH_0_PLIC_IRQHandler"
.LASF28:
	.string	"External_18_IRQHandler"
.LASF17:
	.string	"External_29_IRQHandler"
.LASF10:
	.string	"unsigned int"
.LASF40:
	.string	"External_6_IRQHandler"
.LASF12:
	.string	"uint8_t"
.LASF42:
	.string	"External_4_IRQHandler"
.LASF45:
	.string	"UART_0_PLIC_IRQHandler"
.LASF15:
	.string	"External_31_IRQHandler"
.LASF14:
	.string	"long double"
.LASF19:
	.string	"External_27_IRQHandler"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"External_14_IRQHandler"
.LASF44:
	.string	"QSPI_0_PLIC_IRQHandler"
.LASF34:
	.string	"External_12_IRQHandler"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"External_11_IRQHandler"
.LASF47:
	.string	"NoInterrupt_IRQHandler"
.LASF37:
	.string	"External_9_IRQHandler"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF21:
	.string	"External_25_IRQHandler"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"External_10_IRQHandler"
.LASF27:
	.string	"External_19_IRQHandler"
.LASF29:
	.string	"External_17_IRQHandler"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/workdir/app"
.LASF0:
	.string	"../bsp/hal/riscv_hal_stubs.c"
	.ident	"GCC: (GNU) 13.1.0"
