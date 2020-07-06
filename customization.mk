CUST_PATH := device/sony/poplar_dsds

# Use Vulkan for UI rendering
#PRODUCT_PROPERTY_OVERRIDES += \
#    debug.hwui.renderer=skiavk

# Camera Configuration
PRODUCT_COPY_FILES += \
    $(CUST_PATH)/vendor/etc/camera/camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_config.xml \
    $(CUST_PATH)/vendor/etc/camera/imx258_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx258_chromatix.xml \
    $(CUST_PATH)/vendor/etc/camera/imx400_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx400_chromatix.xml

PRODUCT_COPY_FILES += \
  	$(CUST_PATH)/vendor/etc/permissions/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml \
	$(CUST_PATH)/vendor/etc/permissions/android.hardware.camera.external.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.external.xml \
	$(CUST_PATH)/vendor/etc/permissions/android.hardware.camera.manual_postprocessing.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.manual_postprocessing.xml \
	$(CUST_PATH)/vendor/etc/permissions/android.hardware.camera.manual_sensor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.manual_sensor.xml \
	$(CUST_PATH)/vendor/etc/permissions/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
	$(CUST_PATH)/vendor/etc/permissions/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
	$(CUST_PATH)/vendor/etc/permissions/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml
	
# Limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-threads=2 \
    dalvik.vm.image-dex2oat-threads=4

#AR config
PRODUCT_COPY_FILES += \
    $(CUST_PATH)/vendor/etc/permissions/android.hardware.camera.ar.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.ar.xml

#VoLTE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1  \
    persist.dbg.wfc_avail_ovr=1 \
    persist.vendor.ims.dropset_feature=0 \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.force_on_dc=true \
    persist.radio.custom_ecc=1 \
    persist.radio.data_con_rprt=1 \
    persist.radio.data_ltd_sys_ind=1 \
    persist.radio.ignore_dom_time=10 \
    persist.radio.rat_on=combine \
    persist.radio.sib16_support=1 \
    persist.radio.RATE_ADAPT_ENABLE=1 \
    persist.radio.ROTATION_ENABLE=1 \
    persist.radio.VT_ENABLE=1 \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.radio.is_wps_enabled=true \
    persist.radio.videopause.mode=1 \
    persist.radio.sap_silent_pin=1 \
    persist.radio.always_send_plmn=true \
    persist.rcs.supported=0 \
    persist.dbg.ims_volte_enable=1 \
    persist.radio.calls.on.ims=1
    
# IMS
PRODUCT_PACKAGES += \
	ims-ext-common_system \
	ims-ext-common

#include device/sony/poplar_dsds/prebuilts/prebuilts.mk
	
# USB debugging at boot
# PRODUCT_PROPERTY_OVERRIDES += \
#    persist.sys.usb.config=mtp,adb \
#    ro.adb.secure=0 \
#    ro.secure=0 \
#    ro.debuggable=1
    
#PRODUCT_COPY_FILES += \
#    device/sony/poplar_dsds/permissions/poplar-sysconfig.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/poplar-sysconfig.xml
