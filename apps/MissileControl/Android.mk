LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	$(call all-java-files-under, src)

LOCAL_JAVA_LIBRARIES := \
	com.fe.android.backend

LOCAL_REQUIRED_MODULES := \
	com.fe.android.backend

LOCAL_PACKAGE_NAME := MissileControl

LOCAL_MODULE_TAGS := optional

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
