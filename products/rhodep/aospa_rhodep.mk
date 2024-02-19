#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_rhodep,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/motorola/rhodep/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := rhodep
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := moto g82 5G
PRODUCT_NAME := aospa_rhodep

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rhodep_g

endif
