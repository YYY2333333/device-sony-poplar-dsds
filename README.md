Device configuration for Sony Xperia XZ1 dual (poplar_dsds)
========================================================

Description
-----------

This repository is for exthm on Sony Xperia XZ1 dual (poplar_dsds).

How to build LineageOS
----------------------
*Initialize the exTHmUI source repository
repo init -u https://github.com/exthmui/android.git -b exthm-10

* Sync the repo:

        repo sync --force-sync --no-tags --no-clone-bundle

* Setup the environment

        . build/envsetup.sh
        lunch exthm_poplar_dsds-userdebug

* Build exthm
 make bacon

        
