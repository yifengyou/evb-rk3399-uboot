#!/bin/sh

export PATH=`realpath ../gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin`:$PATH
echo $PATH

echo    "******************************"
echo    "*     Clean Uboot Config     *"
echo    "******************************"
make distclean
echo "make distclean done! [$?]"

echo    "******************************"
echo    "*     Make Uboot             *"
echo    "******************************"
#./make.sh evb-rk3399 | tee log.build_evb-rk3399
./make.sh rk3399pro | tee log.build_rk3399pro
echo "make rk3399pro done! [$?]"

ls -alh *.img rk3399_loader*

exit 0