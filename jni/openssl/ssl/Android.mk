LOCAL_PATH:= $(call my-dir)

NDK_PROJECT_PATH :=  $(call my-dir)/../

local_c_includes := \
	$(NDK_PROJECT_PATH) \
	$(NDK_PROJECT_PATH)/include \
	$(NDK_PROJECT_PATH)/crypto

local_src_files:= \
	pqueue.c \
	packet.c \
	statem/statem_srvr.c \
	statem/statem_clnt.c \
	s3_lib.c \
	s3_enc.c \
	record/rec_layer_s3.c \
	statem/statem_lib.c \
	statem/extensions.c \
	statem/extensions_srvr.c \
	statem/extensions_clnt.c \
	statem/extensions_cust.c \
	s3_cbc.c \
	s3_msg.c \
	methods.c \
	t1_lib.c \
	t1_enc.c \
	tls13_enc.c \
	d1_lib.c \
	record/rec_layer_d1.c \
	d1_msg.c \
	statem/statem_dtls.c \
	d1_srtp.c \
	ssl_lib.c \
	ssl_cert.c \
	ssl_sess.c \
	ssl_ciph.c \
	ssl_stat.c \
	ssl_rsa.c \
	ssl_asn1.c \
	ssl_txt.c \
	ssl_init.c \
	ssl_conf.c \
	ssl_mcnf.c \
	bio_ssl.c \
	ssl_err.c \
	tls_srp.c \
	t1_trce.c \
	ssl_utst.c \
	record/ssl3_buffer.c \
	record/ssl3_record.c \
	record/dtls1_bitmap.c \
	statem/statem.c \
	record/ssl3_record_tls13.c

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../android-config.mk
LOCAL_SRC_FILES += $(local_src_files)
LOCAL_C_INCLUDES += $(local_c_includes)
LOCAL_SHARED_LIBRARIES += libcrypto
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libssl
include $(BUILD_SHARED_LIBRARY)

ifeq ($(WITH_HOST_DALVIK),true)
    include $(CLEAR_VARS)
    include $(LOCAL_PATH)/../android-config.mk
    LOCAL_SRC_FILES += $(local_src_files)
    LOCAL_C_INCLUDES += $(local_c_includes)
    LOCAL_SHARED_LIBRARIES += libcrypto
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE:= libssl
    include $(BUILD_SHARED_LIBRARY)
endif

