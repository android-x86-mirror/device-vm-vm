LOCAL_PATH := $(call my-dir)
LOCAL_FIRMWARES :=
TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/vm_info
TARGET_PREBUILT_APPS := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/app/*))
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/vm_defconfig

PRODUCT_COPY_FILES += $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

include $(GENERIC_X86_ANDROID_MK)
