LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
    LOCAL_MODULE := lahaina_kernel_recovery
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_CLASS := ETC
    LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)
    LOCAL_POST_INSTALL_CMD += \
        mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/1.1; \
        cp -rf $(LOCAL_PATH)/modules/1.1/adsp_loader_dlkm.ko $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/1.1/; \
        cp -rf $(LOCAL_PATH)/modules/1.1/apr_dlkm.ko $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/1.1/; \
        cp -rf $(LOCAL_PATH)/modules/1.1/msm_drm.ko $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/1.1/; \
        cp -rf $(LOCAL_PATH)/modules/1.1/q6_dlkm.ko $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/1.1/; \
        cp -rf $(LOCAL_PATH)/modules/1.1/q6_notifier_dlkm.ko $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/1.1/; \
        cp -rf $(LOCAL_PATH)/modules/1.1/q6_pdr_dlkm.ko $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/1.1/; \
        cp -rf $(LOCAL_PATH)/modules.load.recovery $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/1.1/;
include $(BUILD_PHONY_PACKAGE)
