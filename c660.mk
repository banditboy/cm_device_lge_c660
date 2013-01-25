PRODUCT_AAPT_CONFIG := normal mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/c660/c660-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/c660/overlay

PRODUCT_COPY_FILES += \
# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/kbd_pp2106.kl:system/usr/keylayout/kbd_pp2106.kl \
    $(LOCAL_PATH)/configs/kbd_pp2106.kcm.bin:system/usr/keychars/kbd_pp2106.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.kl:system/usr/keylayout/touch_mcs6000.kl \
    $(LOCAL_PATH)/configs/muscat_keypad.kl:system/usr/keylayout/muscat_keypad.kl \
    $(LOCAL_PATH)/configs/synaptics-rmi-ts.idc:system/usr/idc/synaptics-rmi-ts.idc \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \

# p690 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.c660.rc:root/init.c660.rc \
    $(LOCAL_PATH)/ueventd.c660.rc:root/ueventd.c660.rc

# Wi-Fi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# P690 Audio
PRODUCT_PACKAGES += \
    audio_policy.c660 \
    audio.primary.c660 \
    camera.msm7x27 \

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := c660
PRODUCT_DEVICE := c660
PRODUCT_MODEL := LG Optimus Pro
