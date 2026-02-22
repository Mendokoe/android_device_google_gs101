#
# SPDX-FileCopyrightText: 2020 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

include device/google/gs101/device.mk

# Telephony
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.carrierlock.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.carrierlock.xml

# Android Verified Boot
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml

# ZramWriteback
-include hardware/google/pixel/mm/device_gki.mk

# Set thermal warm reset
PRODUCT_PRODUCT_PROPERTIES += \
    ro.thermal_warmreset = true

# Trigger fsck on upgrade (305658663)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.preventative_fsck = 1
