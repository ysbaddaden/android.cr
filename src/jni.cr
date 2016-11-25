# See:
# https://gist.github.com/sfackler/5c036006f8d58a1d38887ba014759f74
# https://github.com/sfackler/rust-jni-sys

require "./lib_jni"
require "./log"

module JNI
  alias Env = LibJNI::Env*
  alias JClass = LibJNI::JClass
  alias JString = LibJNI::JString

  def self.vm=(@@vm : LibJNI::JavaVM*)
  end

  def self.vm
    @@vm
  end
end

fun jni_onload = JNI_OnLoad(vm : LibJNI::JavaVM*, reserved : Void*) : LibJNI::JInt
  GC.init
  #Android.logger.info "JNI_OnLoad"

  JNI.vm = vm

  begin
    LibCrystalMain.__crystal_main(0, nil)
  rescue ex
    Android.logger.error ex.message.to_s
    ex.backtrace.each { |line| Android.logger.error "     #{line}" }
  end

  LibJNI::VERSION_1_6
end

#fun onUnload = JNI_OnUnload(vm : LibJNI::JavaVM*, reserved : Void*) : Void
#  Android.logger.info "JNI_OnUnload"
#end
