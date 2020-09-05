# SimpleOS
Bare minimum operating system which simply says "Hello World!" and lists the alphabet.

You can run this operating system under a virtual machine. One such VM is qemu. If you wish to use qemu to run (only tested on Linux) then using terminal cd into the directory holding the boot.bin file, then enter qemu-system-x86_64 boot.bin

If you wish to build the binaries yourself, using terminal cd into the directory holding the boot.asm file, then enter nasm -f bin boot.asm -o boot.bin
