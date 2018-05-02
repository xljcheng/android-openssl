LOCAL_PATH := $(call my-dir)

SSL_INSTALL :=  $(LOCAL_PATH)/openssl
SSL_INCLUDES := $(SSL_INSTALL)/include

COMMON_CPPFLAGS := \
    -frtti \
    -fexceptions \
    -std=c++11

COMMON_CFLAGS := \
    -D__STDC_CONSTANT_MACROS \
    -D__STDC_FORMAT_MACROS \


##############################################################
include $(LOCAL_PATH)/openssl/Android.mk