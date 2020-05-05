#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from sanders device
$(call inherit-product, device/motorola/sanders/device.mk)

# For Specific
$(call inherit-product, vendor/motorola/sanders/sanders-vendor.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sanders
PRODUCT_NAME := derp_sanders
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_MODEL := Moto G (5S) Plus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="sanders" \
    TARGET_DEVICE="sanders" \
    PRIVATE_BUILD_DESC="coral-user 10 QQ2A.200501.001.B2 6352890 release-keys"

# FINGERPRINT
BUILD_FINGERPRINT := google/coral/coral:10/QQ2A.200501.001.B2/6352890:user/release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# DerpFest Customs
DERP_BUILDTYPE := Official
BUILD_DATE := $(shell date +"%Y%m%d-%H%M%S")
IS_PHONE := true
DERP_BUILD_ZIP_TYPE := VANILLA

ifeq ($(DERP_BUILD_ZIP_TYPE), GAPPS)
TARGET_GAPPS_ARCH := arm64
endif
