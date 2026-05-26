$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression_with_xor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, vendor/crDroid/config/common.mk)
$(call inherit-product, vendor/nubia/nx733j/device-vendor.mk)

# API
BOARD_SHIPPING_API_LEVEL := 35
PRODUCT_SHIPPING_API_LEVEL := 35
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Device name
PRODUCT_NAME := crDroid_nx733j
PRODUCT_DEVICE := nx733j
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Nubia Z70 Ultra
PRODUCT_MANUFACTURER := nubia
PRODUCT_SYSTEM_NAME := NX733J
PRODUCT_PRODUCT_NAME := NX733J

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# Soong
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# APEX
PRODUCT_APEX_SYSTEM_SERVER_JARS += com.android.crashrecovery:service-crashrecovery

# Packages
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    init.recovery.usb.rc

# fstab
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery.fstab:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.sun

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml
