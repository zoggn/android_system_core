LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        dhcpclient.c \
        dhcpmsg.c \
        dhcp_utils.c \
        ifc_utils.c \
        packet.c

ifeq ($(TARGET_BOARD_PLATFORM),mt6589)
LOCAL_SRC_FILES += MediatekHacks.cpp
endif


LOCAL_SHARED_LIBRARIES := \
        libcutils \
        liblog

LOCAL_MODULE:= libnetutils

include $(BUILD_SHARED_LIBRARY)
