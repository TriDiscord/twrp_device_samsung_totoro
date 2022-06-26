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

$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

$(call inherit-product, build/target/product/languages_small.mk)

$(call inherit-product, device/samsung/bcm21553-common/common.mk)

PRODUCT_AAPT_CONFIG      := normal ldpi mdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := ldpi
TARGET_SCREEN_HEIGHT     := 320
TARGET_SCREEN_WIDTH      := 240
$(call inherit-product, device/ldpi-common/ldpi.mk)

PRODUCT_DEVICE       := totoro
PRODUCT_NAME         := omni_totoro
PRODUCT_BRAND        := samsung
PRODUCT_MODEL        := GT-S5360
PRODUCT_MANUFACTURER := samsung
