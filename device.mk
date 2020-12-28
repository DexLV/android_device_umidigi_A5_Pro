#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay
    
# Overlay from mtk-telephony-ext
# include vendor/mediatek/hardware/telephony-ext/overlay.mk

# A/B
AB_OTA_UPDATER := false

PRODUCT_PACKAGES += \
    RcsService

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

# Camera
# PRODUCT_PACKAGES += \
#    Snap

# Enforce privapp-permissions whitelist
PRODUCT_PROPERTY_OVERRIDES += \
    ro.control_privapp_permissions=log


# Display
PRODUCT_PACKAGES += \
    libvulkan \
    libRSDriver_mtk
    
# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder \


# Init cripts
PRODUCT_PACKAGES += \
    fstab.enableswap \
    init.mt6763.rc \
    fstab.mt6763 \
    ueventd.mtk.rc

#Symbols
<<<<<<< HEAD
#PRODUCT_PACKAGES += \
=======
# PRODUCT_PACKAGES += \
>>>>>>> 85a3f23b60bdbd9b639f6b62dee05e00675560a8
#    libshim_showlogo

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
    $(LOCAL_PATH)/idc/mtk-pad.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-pad.idc \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# KPOC
PRODUCT_PACKAGES += \
    libsuspend

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/halium-overlay/vendor/lib/hw/audio.primary.mt6763.so:$(TARGET_COPY_OUT_SYSTEM)/lib/hw/audio.primary.mt6763.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/hw/audio.primary.mt6763.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/hw/audio.primary.mt6763.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/libcam.halsensor.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcam.halsensor.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/libcameracustom.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcameracustom.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/libmtk-ril.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmtk-ril.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/libmtkcam_metastore.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmtkcam_metastore.so \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml \
    $(LOCAL_PATH)/configs/audio/misound_res.bin:$(TARGET_COPY_OUT_VENDOR)/etc/misound_res.bin

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml



# LiveDisplay
PRODUCT_PACKAGES += \
    lineage.livedisplay@2.0-service-mediatek


# Telephony Jars
PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base \
    mediatek-ims-common \
    mediatek-telecom-common \
    mediatek-telephony-base \
    mediatek-telephony-common

# Inherit vendor
$(call inherit-product, vendor/UMIDIGI/A5_Pro/A5_Pro-vendor.mk)

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 28
PRODUCT_EXTRA_VNDK_VERSIONS := 29
