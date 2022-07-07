#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Import the bcm21553-common BoardConfigCommon.mk
include device/samsung/bcm21553-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/totoro

# Platform
TARGET_BOARD_PLATFORM				:= bcm21553
TARGET_ARCH					:= arm
TARGET_ARCH_LOWMEM				:= true
TARGET_ARCH_VARIANT				:= armv6-vfp
TARGET_CPU_ABI					:= armeabi
TARGET_CPU_ABI2					:= armeabi-v6l
TARGET_CPU_VARIANT				:= arm11
TARGET_ARCH_VARIANT_FPU				:= vfp
TARGET_ARCH_VARIANT_CPU				:= arm1136jf-s
TARGET_BOARD_PLATFORM_GPU			:= videocoreIV
ARCH_ARM_HAVE_TLS_REGISTER			:= true
TARGET_SPECIFIC_HEADER_PATH			:= $(DEVICE_PATH)/include
BCM21553_HARDWARE				:= true
BOARD_USES_BROADCOM_HARDWARE			:= true
COMMON_GLOBAL_CFLAGS				+= -DBCM_HARDWARE

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR	:= $(DEVICE_PATH)/bluetooth

# Board
TARGET_BOARD_PLATFORM				:= bcm21553
TARGET_BOOTLOADER_BOARD_NAME 			:= totoro

# Recovery
BOARD_BOOTIMAGE_PARTITION_SIZE			:= 7357568
BOARD_RECOVERYIMAGE_PARTITION_SIZE		:= 7357568
BOARD_SYSTEMIMAGE_PARTITION_SIZE		:= 261172480
BOARD_USERDATAIMAGE_PARTITION_SIZE		:= 206831616
BOARD_LDPI_RECOVERY				:= true
BOARD_USE_CUSTOM_RECOVERY_FONT			:= "<font_7x16.h>"

# Custom bootimg (recovery merged into boot ramdisk)
BOARD_CUSTOM_BOOTIMG_MK				:= $(DEVICE_PATH)/mkbootimg.mk
MINIGZIP					:= $(shell which lzma)

# Kernel config
TARGET_KERNEL_CONFIG				:= cyanogenmod_totoro_defconfig
BOARD_KERNEL_BASE				:= 0x81600000
BOARD_KERNEL_PAGESIZE				:= 4096
BOARD_NAND_PAGE_SIZE				:= 4096
BOARD_NAND_SPARE_SIZE				:= 128

BOARD_USE_LEGACY_TOUCHSCREEN			:= true

# gpu
BOARD_USE_MHEAP_SCREENSHOT			:= true
HWUI_COMPILE_FOR_PERF				:= true
TARGET_DOESNT_USE_FENCE_SYNC			:= true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK		:= true
USE_OPENGL_RENDERER				:= true
COMMON_GLOBAL_CFLAGS				+= -DEGL_NEEDS_FNW
BOARD_NO_PAGE_FLIPPING				:= tru

# OTA override
TARGET_OTA_ASSERT_DEVICE			:= totoro,GT-S5360,GT-S5360B,GT-S5360L,GT-S5369

# Recovery
BOARD_BML_BOOT					:= "/dev/block/bml7"
BOARD_BML_RECOVERY				:= "/dev/block/bml7"
BOARD_CUSTOM_RECOVERY_KEYMAPPING		:= ../../$(DEVICE_PATH)/recovery/bcm21553_recovery_keys.c
BOARD_FLASH_BLOCK_SIZE				:= 131072
BOARD_RECOVERY_HANDLES_MOUNT			:= true
TARGET_NO_SEPARATE_RECOVERY			:= true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH	        := \"/sys/class/backlight/aat1401-backlight/brightness\"
TARGET_RECOVERY_FSTAB                           := $(DEVICE_PATH)/recovery/recovery.fstab

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH			:= /sys/devices/lm-2/gadget/lun0/file
BOARD_UMS_LUNFILE				:= "/sys/devices/lm-2/gadget/lun0/file"

# TWRP
DEVICE_RESOLUTION := 240x320
TW_CUSTOM_CPU_TEMP_PATH                         := /sys/class/power_supply/battery/batt_temp
TW_BRIGHTNESS_PATH                              := "/sys/devices/platform/aat1401-backlight.0/backlight/aat1401-backlight/brightness"
TARGET_RECOVERY_PIXEL_FORMAT                    := "BGRA_8888"
TW_CUSTOM_POWER_BUTTON                          := 116
TW_EXCLUDE_MTP                                  := true
TW_EXCLUDE_SUPERSU                              := true
TW_EXCLUDE_ENCRYPTED_BACKUPS                    := true
TW_HAS_NO_RECOVERY_PARTITION                    := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID          := true
TW_NO_REBOOT_BOOTLOADER                         := true
RECOVERY_GRAPHICS_USE_LINELENGTH                := true
BOARD_HAS_NO_REAL_SDCARD                        := true
TW_FLASH_FROM_STORAGE                           := true
HAVE_SELINUX                                    := true
TARGET_USERIMAGES_USE_EXT4                      := true
SMALLER_FONT_FOOTPRINT				:= true
BOARD_HAS_NO_SELECT_BUTTON                      := true
BOARD_USES_BML_OVER_MTD                         := true

# Charger
BOARD_CHARGER_RES				:= device/samsung/bcm21553-common/prebuilt/res/charger
BOARD_CHARGING_CMDLINE_NAME			:= "BOOT_MODE"
BOARD_CHARGING_CMDLINE_VALUE			:= "1"
BOARD_CHARGING_CMDLINE_RECOVERY_VALUE		:= "4"
