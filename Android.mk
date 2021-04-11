LOCAL_PATH := $(call-my-dir)

ifeq ($(TARGET-DEVICE), v80se)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
