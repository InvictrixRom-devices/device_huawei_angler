# Copyright (C) 2016 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
# Override current defaut animation
#PRODUCT_COPY_FILES += \
#    device/huawei/angler/Android_bootanimation.zip:system/media/bootanimation.zip

# Inherit some common stuff.
$(call inherit-product, vendor/invictrix/config/common.mk)

# Inherit AOSP device configuration for angler
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Override AOSP build properties
PRODUCT_NAME := invictrix_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei
INV_MAINTAINER := NepoRood

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:8.1.0/OPM3.171019.014/4503998:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 8.1.0 OPM3.171019.014 4503998 release-keys"

