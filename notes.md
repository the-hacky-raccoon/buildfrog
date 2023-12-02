# Buildroot notes

Buildroot manual: https://buildroot.org/downloads/manual/manual.html#_about_buildroot
Buildroot guides:
* https://www.linuxjournal.com/article/10795

## Configuration for Zynq XC7Z010

Zynq XC7Z010 has a dual core ARM Cortex-A9 processor.
Cortex A9 TRM: https://developer.arm.com/documentation/ddi0388/i/?lang=en
* Instructions are always treated as little-endian

Target options:
* Target Architecture: ARM (little endian)
* Target Binary Format: ELF
* Target Architecture Variant: cortex-A9
* Target ABI: EABI
* Enable NEON SIMD extension support: Yes
* Floating point strategy: Soft float
* ARM instruction set: ARM

-> IMPORTANT: Target Architecture Variant refers to the exact CPU you are using
-> NOTE: in the linuxjournal guide says that for ARM we should use EABI
