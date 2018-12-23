DEVICE_PACKAGE_OVERLAYS += device/samsung/gts210ltexx/overlay
LOCAL_PATH := device/samsung/gts210ltexx

# Ramdisk
PRODUCT_PACKAGES += \
    init.baseband.rc

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts210ltexx/gts210ltexx-vendor.mk)
