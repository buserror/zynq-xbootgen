zynq-xbootgen
=========

Tool to create a boot.bin file for linux on Xilinx Zync

The boot.bin file contains:
1) First Stage Boot Loader (fsbl).  This file does limited initialization
    of the ARM processor and also initializes the DRAM controller, giving access
    to RAM.  Note that the attached DRAM is different between zedboard/zc702.
    This is a binary file imported from a
    Xilinx tool release.  If you wish to build a new one for some reason,
    directions are at:
        http://www.wiki.xilinx.com/Build+FSBL
    (you need to use the Xilinx IDE to create a project and then use their
    Codesourcery gcc toolchain to compile).
2) u-boot.elf, as built from Xilinx git tree

This repo is a split from https://github.com/cambridgehackers/zynq-boot
who did all the hard work, the reason of this fork is to use the xcodegen
tool only for the use in minifs.
