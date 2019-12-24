#
# Copyright (C) 2019 The LineageOS Project
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

# call the proprietary setup
$(call inherit-product-if-exists, vendor/xiaomi/willow/willow-vendor.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_willow

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc \
    com.nxp.nfc.nq \
    jcos_nq_client \
    libnqnfc-nci \
    libnqnfc_nci_jni \
    libp61-jcop-kit \
    nfc_nci.nqx.default \
    nqnfcee_access.xml \
    nqnfcse_access.xml \

PRODUCT_PACKAGES += \
    NQNfcNci \
    SecureElement \
    Tag

# NFC Main HALs
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0 \
    android.hardware.nfc@1.1:64 \
    vendor.nxp.hardware.nfc@1.0 \
    vendor.nxp.nxpese@1.0 \
    vendor.nxp.nxpnfc@1.0 \
    vendor.nxp.hardware.nfc@1.1-service

# NFC config files
PRODUCT_COPY_FILES += \
    device/xiaomi/willow/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    device/xiaomi/willow/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    device/xiaomi/willow/nfc/libnfc-nxp-pnscr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp-pnscr.conf

# Inherit from sm6125-common
$(call inherit-product, device/xiaomi/sm6125-common/sm6125-common.mk)
