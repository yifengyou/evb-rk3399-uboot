#!/bin/sh

export PATH=`realpath ../gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin`:$PATH
echo $PATH

echo    "******************************"
echo    "*     Clean Uboot Config     *"
echo    "******************************"
make distclean
echo "make distclean done! [$?]"

echo    "******************************"
echo    "*     Make Uboot Config      *"
echo    "******************************"
#make ARCH=arm  CROSS_COMPILE="aarch64-linux-gnu-" rk3399_linux_defconfig
./make.sh evb-rk3399
echo "make rk3399_linux_defconfig done! [$?]"

echo    "******************************"
echo    "*     Make AArch64 Uboot     *"
echo    "******************************"
#make ARCH=arm V=1 CROSS_COMPILE="aarch64-linux-gnu-" ARCHV=aarch64 --jobs=`nproc`
echo "make done! [$?]"

exit 0
