LOCAL_PATH := $(call my-dir)/libevent-2.0.20

include $(CLEAR_VARS)

LOCAL_MODULE := event2
#LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
    buffer.c \
    bufferevent.c \
    bufferevent_filter.c \
    bufferevent_pair.c \
    bufferevent_ratelim.c \
    bufferevent_sock.c \
    epoll.c \
    epoll_sub.c \
    evdns.c \
    event.c \
    event_tagging.c \
    evmap.c \
    evrpc.c \
    evthread.c \
    evthread_pthread.c \
    evutil.c \
    evutil_rand.c \
    http.c \
    listener.c \
    log.c \
    poll.c \
    select.c \
    signal.c \
    strlcpy.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/android \
    $(LOCAL_PATH)/include

#external/openssl/include
#bufferevent_openssl.c

LOCAL_CFLAGS := -DHAVE_CONFIG_H -DANDROID -fvisibility=hidden \
	-D__ARCH_WANT_SYSCALL_NO_FLAGS \
	-D__ARCH_WANT_SYSCALL_DEPRECATED

include $(BUILD_STATIC_LIBRARY)
