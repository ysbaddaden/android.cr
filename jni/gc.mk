LOCAL_PATH := $(call my-dir)/gc-7.6.0
include $(CLEAR_VARS)

LOCAL_MODULE := gc
LOCAL_SRC_FILES := allchblk.c alloc.c blacklst.c checksums.c \
        dbg_mlc.c dyn_load.c finalize.c gc_dlopen.c gcj_mlc.c \
        headers.c malloc.c mallocx.c mark.c mark_rts.c misc.c \
        new_hblk.c obj_map.c os_dep.c pcr_interface.c ptr_chck.c \
        real_malloc.c reclaim.c specific.c stubborn.c typd_mlc.c \
        backgraph.c thread_local_alloc.c pthread_support.c \
        pthread_stop_world.c pthread_start.c \
		darwin_stop_world.c win32_threads.c mach_dep.c \
		libatomic_ops/src/atomic_ops.c

LOCAL_CFLAGS := \
  -I$(LOCAL_PATH)/include \
  -I$(LOCAL_PATH)/libatomic_ops/src \
  -DHAVE_CONFIG_H

include $(BUILD_STATIC_LIBRARY)

LOCAL_LDLIBS := -lpthread -ldl
