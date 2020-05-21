This is the public repo for MOD 1.5Q.  Data loss I blame for lack of commit history.  

Author names are given so if you want to port the added features, just search GitHub under commits and you'll find them.
 
The original code was forked from https://github.com/MiCode/Xiaomi_Kernel_OpenSource, branch umi-q-oss.

Changes added to the kernel can be found by searching on various GitHub repos for the features listed in the kernel.  Or just build as is, it compiles directly 
using the scripts in the repo.

MIUI 11 Mi9/ Mi 9T Pro MOD 1.5

MOD-Q 1.5 is for stable MIUI 11 variants for Mi9 only - Xiaomi.eu 11.0.5 stable is what it was built for, runs best on, just use it.  

The Mi9T Pro version supports MIUI 11 variants plus many AOSP builds.  If you use an official MIUI 11 Xiaomi version you will get a 
warning message "Contact device manufacturer."  You can ignore that, it means nothing.  But I highly suggest using Xiaomi.eu 11.0.5, 
or another MIUI 11 variant like MiRoom or some use Revolution OS. 

***DO NOT USE ANY PERFORMANCE (CPU/GPU/ETC) MAGISK MODULES WITH THIS FOR BEST PERFORMANCE!!!  
IT INSTALLS IT'S OWN OPTIMIZED MAGISK MODULE AUTOMATICALLY***

FP scanner will only work up to 11.0.5.  Xiaomi keeps changing the code and not releasing it to made Dev builds not work.  
There were "patches" that worked until a few weeks back, but Xiaomi has yet again changed their FP scanner code.  
So I will not update the FP code, do not ask, it is a complete waste of time.  
Sorry, but Xiaomi.eu 11.0.5 and MOD 1.5 work very very well together.  FaceUnlock works great.

Features:
835mhz GPU, Adreno Boost (SultanXDA), Dynamic Fsync (Faux123), Boeffla WL blocker (Lord Boeffla) (better battery idle), 
F2FS optimizations, LZ4 ZRAM.  EXFAT USB/SDCard support added. Sultan Boost (SultanXDA) + PapaSmurf's Op7Pro tweaks, 
Dynamic Overclocking + Underclocking with frequency boost for smooth, fast, clean performance and fluid scaling.  

Many thanks to PapaSmurf who greatly influenced this kernel; portions are ported from his Op7 Pro Repo.
https://github.com/pappschlumpf/SmurfKernelOP7

Mi9T Pro version also reported to work on AOSP ROMs using the original FOD implementation (Derpfest, MSM, CRDroid, Havoc, LOS).

Just use the Magisk Module it installs for you automatically when you flash the zip from TWRP, likely the best results will be obtained.  
SmartPack can be installed to choose between profiles under Performance Tweaks - battery / balanced / performance / gaming, 
although the default installed Magisk module is highly recommended by itself for optimal performance and good battery drain.