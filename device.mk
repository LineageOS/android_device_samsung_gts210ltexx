LOCAL_PATH := device/samsung/gts210ltexx

# Ramdisk
PRODUCT_PACKAGES += \
    init.baseband.rc

# Tinyalsa
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts210ltexx/gts210ltexx-vendor.mk)
