#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/willow/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_willow
PRODUCT_DEVICE := willow
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="willow-user 9 PKQ1.190616.001 V10.3.1.0.PCXMIXM release-keys" \
    PRODUCT_NAME="willow" \
    TARGET_DEVICE="willow"

BUILD_FINGERPRINT := "xiaomi/willow/willow:9/PKQ1.190616.001/V10.3.1.0.PCXMIXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
