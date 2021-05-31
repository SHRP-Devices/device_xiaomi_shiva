#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/shiva

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := shiva

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_NTFS_3G := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SUPER_PARTITION_SIZE := 6012043264
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 6012043264
BOARD_MAIN_PARTITION_LIST := product vendor system
BOARD_USES_METADATA_PARTITION := true

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000

# Image
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_FLASH_BLOCK_SIZE := 131072

# Platform
TARGET_BOARD_PLATFORM := mt6768
TARGET_BOOTLOADER_BOARD_NAME := mt6768

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true 
TARGET_USES_MKE2FS := true
TW_EXCLUDE_TWRPAPP := true
TW_SKIP_COMPATIBILITY_CHECK := true

# System as root
BOARD_SUPPRESS_SECURE_ERASE := true

# Selinux
BOARD_SEPOLICY_VERS := 29.0.3
SEPOLICY_IGNORE_NEVERALLOWS := true
SELINUX_IGNORE_NEVERALLOWS := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# NOTE - Dont use '-' or blank spaces in flag values , otherwise it will create build errors or other bugs in recovery (Excluding SHRP_PATH,SHRP_REC). 
# Path of your SHRP Tree
SHRP_PATH := device/xiaomi/shiva
# Maintainer name *
SHRP_MAINTAINER := zubairk22
# Device codename *
SHRP_DEVICE_CODE := shiva
# Recovery Type (It can be treble,normal,SAR) [Only for About Section] *
SHRP_REC_TYPE := treble
# Recovery Type (It can be A/B or A_only) [Only for About Section] *
SHRP_DEVICE_TYPE := A_only
# Notch
SHRP_NOTCH := true
# EDL
SHRP_EDL_MODE := 1
SHRP_INTERNAL := /sdcard
SHRP_EXTERNAL := /external_sd
SHRP_OTG := /usb-otg
SHRP_FLASH := 1
# Path
SHRP_REC := /dev/block/platform/bootdevice/by-name/recovery
# Dark Mode
SHRP_DARK := true
# Magisk
INC_IN_REC_MAGISK := true
# Shrp official
SHRP_OFFICIAL := true

#SHRP Addons
SHRP_EXTERNAL_ADDON_PATH := "device/xiaomi/shiva/addon/"
SHRP_EXTERNAL_ADDON_1_NAME := "SELinux Permissiver"
SHRP_EXTERNAL_ADDON_1_INFO := "Makes SELinux Permissive"
SHRP_EXTERNAL_ADDON_1_FILENAME := "permissiver.zip"
SHRP_EXTERNAL_ADDON_1_BTN_TEXT := "Flash"
SHRP_EXTERNAL_ADDON_1_SUCCESSFUL_TEXT := "Flashed Successfully"
SHRP_INC_IN_REC_EXTERNAL_ADDON_1 := true
SHRP_EXTERNAL_ADDON_2_NAME := "SELinux Enforcer"
SHRP_EXTERNAL_ADDON_2_INFO := "Reverts Back to Enforcing SELinux"
SHRP_EXTERNAL_ADDON_2_FILENAME := "enforcer.zip"
SHRP_EXTERNAL_ADDON_2_BTN_TEXT := "Flash"
SHRP_EXTERNAL_ADDON_2_SUCCESSFUL_TEXT := "Flashed Successfully"
SHRP_INC_IN_REC_EXTERNAL_ADDON_2 := true
SHRP_EXTERNAL_ADDON_3_NAME := "[MAGISK] Safetynet Fix"
SHRP_EXTERNAL_ADDON_3_INFO := "A magisk module which attempts to fix Safetynet"
SHRP_EXTERNAL_ADDON_3_FILENAME := "safetynet-fix.zip"
SHRP_EXTERNAL_ADDON_3_BTN_TEXT := "Flash"
SHRP_EXTERNAL_ADDON_3_SUCCESSFUL_TEXT := "Flashed Successfully"
SHRP_INC_IN_REC_EXTERNAL_ADDON_3 := true
SHRP_EXTERNAL_ADDON_4_NAME := "[MAGISK] Blur Enabler"
SHRP_EXTERNAL_ADDON_4_INFO := "A magisk module which Enables Blur in System"
SHRP_EXTERNAL_ADDON_4_FILENAME := "blur-enabler.zip"
SHRP_EXTERNAL_ADDON_4_BTN_TEXT := "Install"
SHRP_EXTERNAL_ADDON_4_SUCCESSFUL_TEXT := "Installed"
SHRP_INC_IN_REC_EXTERNAL_ADDON_4 := true
SHRP_EXTERNAL_ADDON_5_NAME := "[MAGISK] Nav-Bar Space Remover"
SHRP_EXTERNAL_ADDON_5_INFO := "Removes Space Under Keyboard"
SHRP_EXTERNAL_ADDON_5_FILENAME := "navbareliminator.zip"
SHRP_EXTERNAL_ADDON_5_BTN_TEXT := "Install"
SHRP_EXTERNAL_ADDON_5_SUCCESSFUL_TEXT := "Installed"
SHRP_INC_IN_REC_EXTERNAL_ADDON_5 := true
INC_IN_REC_ADDON_1 := true
INC_IN_REC_ADDON_2 := true
INC_IN_REC_ADDON_3 := true
INC_IN_REC_ADDON_4 := true
