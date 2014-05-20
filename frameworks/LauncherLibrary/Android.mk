LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	$(call all-java-files-under, java)

LOCAL_REQUIRED_MODULES := \
	com.fe.android.backend.xml \
	liblauncher_jni

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= com.fe.android.backend

include $(BUILD_JAVA_LIBRARY)



include $(CLEAR_VARS)

LOCAL_MODULE := com.fe.android.backend.xml

LOCAL_SRC_FILES := \
	$(LOCAL_MODULE)

LOCAL_MODULE_PATH := \
	$(TARGET_OUT_ETC)/permissions

LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_TAGS := optional

include $(BUILD_PREBUILT)



include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	jni/libml.c

LOCAL_C_INCLUDES += \
	$(JNI_H_INCLUDE) \
	external/libusb/libusb

LOCAL_SHARED_LIBRARIES := \
	libusb \
	libcutils \
	libutils

LOCAL_REQUIRED_MODULES := \
	libusb

LOCAL_MODULE := liblauncher_jni
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
