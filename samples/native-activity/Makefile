# NDK
NDK_HOME ?= /home/julien/bin/android-ndk-r13b
PREBUILT_ARMEABI = $(NDK_HOME)/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
SYSROOT_ARMEABI = $(NDK_HOME)/platforms/android-23/arch-arm
CC_ARMEABI := $(PREBUILT_ARMEABI)/bin/arm-linux-androideabi-gcc

# CRYSTAL
CRYSTAL_BIN ?= $(shell which crystal)
CRFLAGS := -Dwithout_pcre -Dwithout_sigfault_handler

# LD
LIBS := -ldl -lgc -levent2 -liconv -llog -landroid
CFLAGS := -shared $(LIBS)

all: libs/armeabi/libnative-activity.so

libs/armeabi/libnative-activity.so: libs/armeabi/libnative-activity.o
	$(CC_ARMEABI) libs/armeabi/libnative-activity.o \
		-o libs/armeabi/libnative-activity.so \
		$(CFLAGS) -Wl,-soname,libnative-activity.so \
		--sysroot=$(SYSROOT_ARMEABI) -L$(PWD)/../../obj/local/armeabi \

libs/armeabi/libnative-activity.o: libs/armeabi src/main.cr
	$(CRYSTAL_BIN) build src/main.cr -o libs/armeabi/libnative-activity \
		$(CRFLAGS) --cross-compile --target="arm-unknown-linux-androideabi"

libs/armeabi:
	mkdir -p libs/armeabi

log:
	adb logcat 'crystal_app:V' 'crystal_native_activity:V' 'libc:V' 'DEBUG:V' 'ActivityManager:I' '*:S'
