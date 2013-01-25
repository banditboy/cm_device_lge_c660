-include vendor/lge/c660/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_muscat_defconfig

TARGET_BOOTLOADER_BOARD_NAME := c660
TARGET_OTA_ASSERT_DEVICE := muscat,c660

BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=c660
BOARD_KERNEL_BASE := 0x02800000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_LDPI_RECOVERY := true
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_CUSTOM_GRAPHICS           := ../../../device/lge/c660/recovery/graphics.c

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0cd00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0b280000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WEXT_NO_COMBO_SCAN	:= true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

# FM Radio
BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO

USE_CAMERA_STUB := true
