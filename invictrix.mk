#
# Copyright 2013-2018 The Dirty Unicorns Project
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
#

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/invictrix/config/common.mk)

PRODUCT_NAME := invictrix_angler
PRODUCT_DEVICE := angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

# Invictrix maintainer
INVICTRIX_MAINTAINER := MikeCriggs

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    PRIVATE_BUILD_DESC="angler-user 8.1.0 OPM3.171019.019 4618994 release-keys"

BUILD_FINGERPRINT=google/angler/angler:8.1.0/OPM3.171019.019/4618994:user/release-keys
