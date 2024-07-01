# 0 "../bsp/hal/crt0.S"
# 1 "/workdir/app//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "../bsp/hal/crt0.S"
# 12 "../bsp/hal/crt0.S"
.global vector_table


.section .text.start
.global _start
.type _start, @function

_start:

.option push
.option norelax
1: auipc gp, %pcrel_hi(__global_pointer$)
 addi gp, gp, %pcrel_lo(1b)
.option pop





 la sp, __stack_end


 la a0, __vector_start
 ori a0, a0, 1
 csrw mtvec, a0


 la a0, _edata
 la a2, _end
 sub a2, a2, a0
 li a1, 0
 call memset


 la a0, __libc_fini_array
 call atexit
 call __libc_init_array







 li a0, 0
 li a1, 0
 li a2, 0

 call main
 tail exit

.size _start, .-_start

.global _init
.type _init, @function
.global _fini
.type _fini, @function
_init:
_fini:


 ret
.size _init, .-_init
.size _fini, .-_fini
