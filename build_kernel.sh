#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$PATH:$HOME/arm-eabi-4.8/bin/arm-eabi-
export PATH=$PATH:$HOME/arm-eabi-4.8/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_j5lte_kor_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
