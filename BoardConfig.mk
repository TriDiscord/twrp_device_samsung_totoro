#
# Copyright (C) 2022 TeamWin Recovery Project
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
#

LOCAL_PATH := device/samsung/totoro

include device/samsung/bcm21553-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_PLATFORM        := bcm21553
TARGET_BOOTLOADER_BOARD_NAME := totoro

# Kernel
TARGET_KERNEL_CONFIG    := cyanogenmod_totoro_defconfig
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/totoro/mkbootimg.mk

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 7357568
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7357568
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 261172480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 206831616

# Recovery
BOARD_LDPI_RECOVERY            := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"

# TeamWin Recovery
DEVICE_RESOLUTION := 240x320
