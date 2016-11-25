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

all: libs/armeabi/libhello-jni.so

libs/armeabi/libhello-jni.so: libs/armeabi obj/local/armeabi/libhello-jni.o
	$(CC_ARMEABI) obj/local/armeabi/libhello-jni.o \
		-o libs/armeabi/libhello-jni.so \
		$(CFLAGS) -Wl,-soname,libhello-jni.so \
		--sysroot=$(SYSROOT_ARMEABI) -L$(PWD)/../../obj/local/armeabi \

obj/local/armeabi/libhello-jni.o: obj/local/armeabi src/hello-jni.cr
	$(CRYSTAL_BIN) build src/hello-jni.cr -o obj/local/armeabi/libhello-jni \
		$(CRFLAGS) --cross-compile --target="arm-unknown-linux-androideabi"

obj/local/armeabi:
	mkdir -p obj/local/armeabi

libs/armeabi:
	mkdir -p libs/armeabi

log:
	adb logcat 'crystal_app:V' 'libc:V' 'DEBUG:V' 'ActivityManager:I' '*:S'
