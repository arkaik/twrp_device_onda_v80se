DEVICE_PATH := device/onda/v80se

#For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

#Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

#Kernel
TARGET_IS_64_BIT := true
TARGET_PREBUILT_KERNEL := ${DEVICE_PATH}/prebuilt/kernel
BOARD_KERNEL_IMAGE_NAME := kernel
BOARD_KERNEL_BASE := 0x41078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x00f88000 --tags_offset 0xfff88100 --second_offset 0x00e88000

#Bootloader
TARGET_BOOTLOADER_BOARD_NAME := exdroid

#Platform
TARGET_BOARD_PLATFORM := tulip

#Recovery
TARGET_RECOVERY_FSTAB := ${DEVICE_PATH}/recovery/root/etc/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
SW_BOARD_TOUCH_RECOVERY := true

#Assert
TARGET_OTA_ASSERT_DEVICE = v80se,v80_se,v80

#TWRP
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLACK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
