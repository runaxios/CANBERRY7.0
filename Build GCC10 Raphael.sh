#!/bin/bash
rm .version

clear
cd ~/cepheus-q-oss/
cp Makefile.gcc10 Makefile

# Resources
THREAD="-j8"
KERNEL="Image"
DTBIMAGE="dtb"


export CROSS_COMPILE=${HOME}/toolchains/aarch64-linux-elf/bin/aarch64-linux-elf-
export CROSS_COMPILE_ARM32=${HOME}/toolchains/arm32-gcc/bin/arm-eabi-
#export KBUILD_COMPILER_STRING=$(~/toolchains/clang/clang-r328903/bin/clang --version | head -n 1 | perl -pe 's/\(http.*?\)//gs' | sed -e 's/  */ /g' -e 's/[[:space:]]*$//')
#scons arch=$Arch extra_cxx_flags="-fPIC"
export CXXFLAGS="$CXXFLAGS -fPIC"
DEFCONFIG="raphael_user_defconfig"

# Paths
KERNEL_DIR=`pwd`
ZIMAGE_DIR="${HOME}/cepheus-q-oss/out/arch/arm64/boot/"

# Kernel Details
VER=".1.5"

# Vars
BASE_AK_VER="MOD"
AK_VER="$BASE_AK_VER$VER"
export LOCALVERSION=~`echo $AK_VER`
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER=MattoftheDead
export KBUILD_BUILD_HOST=Ubuntu18.04

DATE_START=$(date +"%s")

echo -e "${green}"
echo "-------------------"
echo "Making Kernel:"
echo "-------------------"
echo -e "${restore}"

echo
make ARCH=arm64 O=out9TP $DEFCONFIG
make ARCH=arm64 O=out9TP $THREAD 2>&1 | tee kernel.log

echo -e "${green}"
echo "-------------------"
echo "Build Completed in:"
echo "-------------------"
echo -e "${restore}"

DATE_END=$(date +"%s")
DIFF=$(($DATE_END - $DATE_START))
echo "Time: $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds."
echo
cd $ZIMAGE_DIR
ls -a
