# OS-development
Learning about Operating Systems by creating my own OS with the following [tutorial](https://www.youtube.com/watch?v=9t-SPC7Tczc&list=PLFjM7v6KGMpiH2G-kT781ByCNC_0pKpPN&index=1&ab_channel=nanobyte) by nanobyte on YouTube. For reference, I am using a MacBookAir. 
## Tools to Install:
- Micro Text Editor
- Make
- NASM
- qemu
## Command to Run OS::
```bash
make && qemu-system-i386 -fda build/main_floppy.img 
```
## What Each File Does
src/main.asm
- A minimal bootloader that halts the CPU or enters an infinite loop (a bootloader is a program that starts a computer by loading it into memory)

Makefile
- Assembles bootloader program (main.asm) and packages it into a floppy disk image 
