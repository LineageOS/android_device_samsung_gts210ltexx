LOCAL_PATH := device/samsung/gts210ltexx

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := cm_exynos5433-gts210lte_defconfig

# RIL
BOARD_MODEM_TYPE := ss333

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts210lte,gts210ltexx

# Inherit common board flags
include device/samsung/gts2-common/BoardConfigCommon.mk
