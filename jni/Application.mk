NDK_TOOLCHAIN_VERSION=4.9
APP_STL := gnustl_shared
APP_ABI := armeabi-v7a
APP_PLATFORM := android-19
APP_CPPFLAGS += -fexceptions 
APP_CPPFLAGS += -frtti -fPIC -fpic
APP_CPPFLAGS += -fpermissive
APP_CFLAGS += -Wno-error=format-security
APP_SHORT_COMMANDS := true
#GLOBAL_CFLAGS += -fvisibility=default
