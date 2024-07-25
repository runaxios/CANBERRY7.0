This is the public repo for MOD 1.5Q.  

Data loss I blame for lack of commit history.  Some have complained that my repo is missing the history, I apologize, but if you want history, you'll have to recreate it.  The finished product is here, all authors of added features are listed, you can find them all easily on GitHub.

The original code source is from here: https://github.com/MiCode/Xiaomi_Kernel_OpenSource/tree/cepheus-q-oss

My original commits are also here which allow the Xiaomi source to compile, with full history: https://github.com/mrslezak/Cepheus-Raphael-Q-GCC10

Changes added to the kernel can be found by searching GitHub repos for the features listed below in the kernel.  Search the author name and the name of the feature, for example, adrenoboost flar2, click under commits, you will find the commit that was merged.  Do a diff with my source code if you'd like to see my modifications.  If an author isn't listed, it's generic items like defconfig entries or my customizations.

Or just build as is, it compiles directly using the scripts in the repo.

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
Sorry, but Xiaomi.eu 11.0.5 and MOD 1.5 work very very well together.  Face Unlock works great.

Features:
835mhz GPU, Adreno Boost (flar2), Dynamic Fsync (Faux123), Lord Boeffla WL blocker (andip71) (better battery idle), 
F2FS optimizations, LZ4 ZRAM.  EXFAT USB/SDCard support added. Sultan Boost (SultanXDA) + PapaSmurf's (pappschlumpf) Op7Pro tweaks, 
Dynamic Overclocking + Underclocking with frequency boost for smooth, fast, clean performance and fluid scaling.  

Many thanks to PapaSmurf who greatly influenced this kernel; portions are ported from his Op7 Pro Repo:
https://github.com/pappschlumpf/SmurfKernelOP7

Mi9T Pro version also reported to work on AOSP ROMs using the original FOD implementation (Derpfest, MSM, CRDroid, Havoc, LOS).

Just use the Magisk Module it installs for you automatically when you flash the zip from TWRP, likely the best results will be obtained.  
SmartPack can be installed to choose between profiles under Performance Tweaks - battery / balanced / performance / gaming, 
although the default installed Magisk module is highly recommended by itself for optimal performance and good battery drain.
