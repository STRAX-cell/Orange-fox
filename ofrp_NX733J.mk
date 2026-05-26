#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nubia/NX733J

$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := NX733J
PRODUCT_NAME := ofrp_NX733J
PRODUCT_BRAND := nubia
PRODUCT_MANUFACTURER := nubia
PRODUCT_MODEL := Nubia Z70 Ultra

TARGET_OTA_ASSERT_DEVICE := NX733J,PQ84A01

BUILD_FINGERPRINT := nubia/PQ84A01-UN/PQ84A01:16/BQ2A.250705.001-BP2A.250605.031.A3/20260210.135030:user/release-keys

TW_STATUS_ICONS_ALIGN := center
