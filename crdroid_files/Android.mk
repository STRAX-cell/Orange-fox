LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),nx733j)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
