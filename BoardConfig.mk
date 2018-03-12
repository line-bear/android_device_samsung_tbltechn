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

# inherit from common tbltechn
include device/samsung/tblte-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := tbltechn

# Camera
TARGET_FIXUP_PREVIEW := true

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_tblte_eur_defconfig

# Fingerprint
include $(COMMON_PATH)/fingerprint/board.mk

# Init
TARGET_INIT_VENDOR_LIB := libinit_apq8084
TARGET_LIBINIT_APQ8084_DEFINES_FILE := device/samsung/tbltechn/init/init_tblte.cpp

# NFC
include $(COMMON_PATH)/nfc/s3fwrn5/board.mk

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# inherit from the proprietary version
include vendor/samsung/tbltechn/BoardConfigVendor.mk