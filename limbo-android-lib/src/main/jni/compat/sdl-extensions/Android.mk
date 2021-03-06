LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

$(warning NDK_TOOLCHAIN_VERSION = $(NDK_TOOLCHAIN_VERSION))

LOCAL_ARM_MODE:= $(APP_ARM_MODE)

LOCAL_SRC_FILES := \
	SDL_limbomouse.c

LOCAL_MODULE := compat-SDL2-ext

LOCAL_C_INCLUDES :=			\
	$(LOCAL_PATH)/../../SDL2 \
	$(LOCAL_PATH)/../../SDL2/src \
	$(LOCAL_PATH)/../../SDL2/include

LOCAL_CFLAGS += $(ARCH_CFLAGS)
LOCAL_CFLAGS += -include $(LOGUTILS)
LOCAL_ARM_MODE := $(ARM_MODE)
LOCAL_LDFLAGS += $(ARCH_LD_FLAGS)

LOCAL_CFLAGS +=
LOCAL_STATIC_LIBRARIES +=

LOCAL_SHARED_LIBRARIES += SDL2

LOCAL_CFLAGS +=

LOCAL_LDLIBS := -ldl -llog

include $(BUILD_SHARED_LIBRARY)

