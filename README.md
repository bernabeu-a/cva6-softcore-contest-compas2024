# COMPAS 2024 CVA6 Contest Hands-On

Welcome to the **COMPAS** repository for the RISCV contest Hands-on

Few files need modification in order to run the **LATAM-V** solution of the 4th RISCV Contest.

Regarding the design, the coprocessor core need some fixing:
[cvxif_example_coprocessor_to_complete](./core/cvxif_example/cvxif_example_coprocessor_to_complete.sv)

In the mnist app some functions need also fixing:
[NetworkPropagate](./sw/app/mnist/NetworkPropagate.c)

Good Luck :)

## Toolchain Modification

Start Docker image:
```sh
sudo docker run -ti --privileged -v `realpath sw`:/workdir sw-docker:v1
```
Password is *useruser*

Install an editor **in the container**:
```sh
sudo apt install nano
```

Modify the riscv-opc.c file under _/util/gcc-toolchain-builder/src/binutils-gdb/opcodes/riscv-opc.c_
```sh
sudo nano /util/gcc-toolchain-builder/src/binutils-gdb/opcodes/riscv-opc.c
```
Add the 2 custom instructions after /* Basic RVI instruction and aliases. */ (line 321)
```
/* Basic RVI instruction and aliases. */
{"custom1", 	0, INSN_CLASS_I, "d,s,t", 	MATCH_CUSTOM1, MASK_CUSTOM1, match_opcode, 0},
{"custom2", 	0, INSN_CLASS_I, "d,s,t", 	MATCH_CUSTOM2, MASK_CUSTOM2, match_opcode, 0},
```
Don't forget to **save and quit** (**ctrl+o** to save with nano and **ctrl+x** to quit)

Modify the riscv-opc.h file under _/util/gcc-toolchain-builder/src/binutils-gdb/include/opcodes/riscv-opc.h_

```sh
sudo nano /util/gcc-toolchain-builder/src/binutils-gdb/include/opcode/riscv-opc.h
```
Add instruction macros (line 24)
```
/* Instruction opcode macros.  */
#define MATCH_CUSTOM1 0x2b
#define MASK_CUSTOM1 0xfe00707f
#define MATCH_CUSTOM2 0x5b
#define MASK_CUSTOM2 0xfe00707f
```
And Declare INSN (line 2790)

```
DECLARE_INSN(custom1, MATCH_CUSTOM1, MASK_CUSTOM1)
DECLARE_INSN(custom2, MATCH_CUSTOM2, MASK_CUSTOM2)
```
Again, don't forget to **save and quit** (**ctrl+o** to save with nano and **ctrl+x** to quit)

Finally, we recompile the toolchain with the modification

```sh
cd /util/gcc-toolchain-builder

export RISCV=riscv_toolchain

sudo bash ./build-toolchain.sh $RISCV

PATH="$PATH:/util/gcc-toolchain-builder/riscv_toolchain/bin"
```

## Compiling and Debugging Application

Within the docker image:

```sh
cd /workdir/app

make mnist
```

To debug, still within the docker image:
```sh
openocd -f openocd_diligent_hs2.cfg &

riscv-non-elf-gdb mnist.riscv
```

Within GDB:
```sh
tar ext :3333

load

# breakpoint after inference
b main.c:71

c
```
Then you can check output with GDB command

```sh
# Expected value
p expectedOutputBuffer
# Predicted value 
p predictedOutputBuffer
# Number of instruction done
p instret
# Number of cycle done
p cycles
```

## Original Readme

The access to the original and unchanged readme file it is [here](/README_original.md)
