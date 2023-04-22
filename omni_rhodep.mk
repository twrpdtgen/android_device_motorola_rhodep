#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rhodep device
$(call inherit-product, device/motorola/rhodep/device.mk)

PRODUCT_DEVICE := rhodep
PRODUCT_NAME := omni_rhodep
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g82 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rhodep_g-user 11 S1SUS32.73-112-22-2 59224d release-keys"

BUILD_FINGERPRINT := motorola/rhodep_g/rhodep:11/S1SUS32.73-112-22-2/59224d:user/release-keys
