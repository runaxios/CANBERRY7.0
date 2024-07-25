#!/bin/bash

Start=$(date +"%s")

VER=".7.0"
BASE_AK_VER="CANBERRY"
AK_VER="$BASE_AK_VER$VER"

export LOCALVERSION=~`echo $AK_VER`
export ARCH=arm64
export SUBARCH=arm64
export DTC_EXT=${HOME}/toolchain/dtc/dtc-1.4.4/prebuilt/dtc
export KBUILD_BUILD_USER="Runaxios"
export KBUILD_BUILD_HOST="Ubuntu20.04"
make O=${HOME}/cepheusx/out ARCH=arm64 cepheus_user_defconfig

make -j1  O=${HOME}/cepheusx/out \
PATH="${HOME}/toolchain/clang/LLVM-10.0.9/bin:${HOME}/toolchain/gcc/aarch64-linux-android-4.9/bin:${PATH}" \
                                ARCH=arm64 \
                                CC=clang \
                                CXX=clang++ \
                                CROSS_COMPILE=aarch64-linux-android- \
#                                CROSS_COMPILE_ARM32= \
                                CLANG_TRIPLE=aarch64-linux-gnu- | tee ${HOME}/cepheusx/out/kernel.log
End=$(date +"%s")
Diff=$(($End - $Start))
echo -e "$gre << Build completed in $(($Diff / 60)) minutes and $(($Diff % 60)) seconds >> \n $white"
