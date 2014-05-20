LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	mlbin.c

LOCAL_C_INCLUDES := \
	external/libusb/libusb

LOCAL_SHARED_LIBRARIES := \
	libusb

LOCAL_REQUIRED_MODULES := \
	libusb

LOCAL_MODULE := mlbin
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
