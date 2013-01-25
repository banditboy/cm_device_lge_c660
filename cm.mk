# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for c660.
$(call inherit-product, device/lge/c660/c660.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#include qcom opensource features
$(call inherit-product, vendor/qcom/opensource/omx/mm-core/Android.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-video/Android.mk)

# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

PRODUCT_NAME := cm_c660
PRODUCT_BRAND := lge
PRODUCT_DEVICE := c660
PRODUCT_MODEL := LG Optimus Pro
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_c660 \
    BUILD_FINGERPRINT="lge/muscat/muscat:2.3.3/GRI40/LG-C660-V10c.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="muscat-user 2.3.3 GRI40 LG-C660-V10c.19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusPro
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
