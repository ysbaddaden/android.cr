#! /usr/bin/env

cd jni

git clone https://github.com/ventureresearch/libevent.git
mv libevent libevent-2.0.20
# TODO: patch to disable call to arc4random_addrandom()

git clone https://github.com/ironsteel/iconv-android.git
mv iconv-android iconv-1.13

wget http://www.hboehm.info/gc/gc_source/gc-7.6.0.tar.gz
tar zxf gc-7.6.0.tar.gz
cp gc_config.h gc-7.6.0/include/config.h
# TODO: patch include/private/gcconfig.h to NOT set USE_TKILL_ON_ANDROID

wget http://www.hboehm.info/gc/gc_source/libatomic_ops-7.4.4.tar.gz
tar zxf libatomic_ops-7.4.4.tar.gz
mv libatomic_ops-7.4.4 gc-7.6.0/libatomic_ops
cp libatomic_ops_config.h gc-7.6.0/libatomic_ops/src/config.h

# TODO: download and install PCRE
