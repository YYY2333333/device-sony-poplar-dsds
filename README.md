Device configuration for Sony Xperia XZ1 dual (poplar_dsds)
========================================================

Description
-----------

This repository is for DerpFest-10 on Sony Xperia XZ1 dual (poplar_dsds).

How to build LineageOS
----------------------

* Make a workspace:

        mkdir -p ~/derpfest
        cd ~/derpfest

* Initialize the repo:

        repo init -u git://github.com/DerpLab/platform_manifest.git -b ten

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <!-- SONY -->
            <project name="Benya9669/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-17.1" />
            <project name="Benya9669/android_device_sony_common-treble" path="device/sony/common-treble" remote="github" revision="derpfest-10" />
            <project name="Benya9669/android_device_sony_yoshino" path="device/sony/yoshino" remote="github" revision="derpfest-10" />
            <project name="Benya9669/android_device_sony_poplar_dsds" path="device/sony/poplar_dsds" remote="github" revision="derpfest-10" />

            <!-- Pinned blobs for poplar_dsds -->
            <project name="Benya9669/android_vendor_sony_poplar_dsds" path="vendor/sony/poplar_dsds" remote="github" revision="derpfest-10" />
        </manifest>

* Sync the repo:

        repo sync --force-sync --no-tags --no-clone-bundle

* Setup the environment

        . build/envsetup.sh
        lunch derp_poplar_dsds-userdebug
		
* Apply camerakey patch (Thx Russel5)
		
		cp camerakey.patch ../../../frameworks/base	
		cd ../../../frameworks/base
		git apply camerakey.patch

* Build DerpFest

        time mka kronic
