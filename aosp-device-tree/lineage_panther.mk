#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from panther device
$(call inherit-product, device/google/panther/device.mk)

PRODUCT_DEVICE := panther
PRODUCT_NAME := lineage_panther
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="panther_beta-user UpsideDownCake UPB2.230407.014 10064957 release-keys"

BUILD_FINGERPRINT := google/panther_beta/panther:UpsideDownCake/UPB2.230407.014/10064957:user/release-keys
