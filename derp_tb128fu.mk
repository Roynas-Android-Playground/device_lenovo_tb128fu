#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

WITH_GMS := true
TARGET_DISABLE_EPPE := true

# Inherit some common Evolution-X stuff.
$(call inherit-product, vendor/derp/config/common_full_tablet_wifionly.mk)

# Inherit from tb128fu device
$(call inherit-product, device/lenovo/tb128fu/device.mk)

PRODUCT_NAME := derp_tb128fu
PRODUCT_DEVICE := tb128fu
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := XiaoXin Pad 2022

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list,"qssi-user 12 SKQ1.220119.001 13.5.476_220805 release-keys")

BUILD_FINGERPRINT := Lenovo/P89990JA1/TB128FU:12/SKQ1.220119.001/13.5.476_220805:user/release-keys
