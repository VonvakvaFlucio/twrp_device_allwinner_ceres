LOCAL_PATH := $(call my-dir)

ifneq ($(filter ML_SO0R_M7_WIFI,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
