#
# Copyright (C) 2017-2018 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/tbltechn/tbltechn-vendor.mk)

# mixer_paths.xml workaround
PRODUCT_COPY_FILES += \
    device/samsung/tblte-common/audio/mixer_paths_tblte_eur.xml:system/vendor/etc/mixer_paths.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/tbltechn/overlay

# Fingerprint
$(call inherit-product, device/samsung/tblte-common/fingerprint/product.mk)

# NFC
$(call inherit-product, device/samsung/tblte-common/nfc/s3fwrn5/product.mk)

# common tblte
$(call inherit-product, device/samsung/tblte-common/tblte.mk)
