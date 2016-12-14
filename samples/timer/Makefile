# CONFIGURATION

## NDK
NDK_HOME ?= /home/julien/bin/android-ndk-r13b
PLATFORM_VERSION ?= android-23

## JNI
BINDINGS := android.app.Activity android.os.Bundle android.os.Message android.os.Handler

## CRYSTAL
CRYSTAL_BIN ?= $(shell which crystal)
CRFLAGS := -Dwithout_pcre -Dwithout_sigfault_handler

## LD
LIBS := -ldl -lgc -levent2 -liconv -llog -landroid
CFLAGS := -shared $(LIBS)


# TARGETS

all: libs/armeabi/libtimer.so

.PHONY: bindings
bindings:
	./lib/java/bin/generator --output src --no-follow $(BINDINGS)

log:
	adb logcat 'crystal_app:V' 'libc:V' 'DEBUG:V' 'ActivityManager:I' '*:S'


## ARMEABI

# FIXME: target an installed toolchain, to improve cross platform support
PREBUILT_ARMEABI := $(NDK_HOME)/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
SYSROOT_ARMEABI := $(NDK_HOME)/platforms/$(PLATFORM_VERSION)/arch-arm
CC_ARMEABI := $(PREBUILT_ARMEABI)/bin/arm-linux-androideabi-gcc

libs/armeabi/libtimer.so: libs/armeabi obj/local/armeabi/libtimer.o
	$(CC_ARMEABI) obj/local/armeabi/libtimer.o \
		-o libs/armeabi/libtimer.so \
		$(CFLAGS) -Wl,-soname,libtimer.so \
		--sysroot=$(SYSROOT_ARMEABI) -L$(PWD)/../../obj/local/armeabi \

obj/local/armeabi/libtimer.o: bindings obj/local/armeabi src/*.cr
	$(CRYSTAL_BIN) build src/timer.cr -o obj/local/armeabi/libtimer \
		$(CRFLAGS) --cross-compile --target="arm-unknown-linux-androideabi"

obj/local/armeabi:
	mkdir -p obj/local/armeabi

libs/armeabi:
	mkdir -p libs/armeabi


## TODO: ARMEABI-V7A
## TODO: ARM64-V8A
## TODO: X86
## TODO: X86_64

