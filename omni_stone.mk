#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

PRODUCT_DEVICE := stone
PRODUCT_NAME := omni_stone
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := fox_stone
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_stone-eng 99.87.36 SP2A.220405.004 eng.runner.20260219.022623 test-keys"

BUILD_FINGERPRINT := Xiaomi/fox_stone/stone:99.87.36/SP2A.220405.004/runner02190223:eng/test-keys
