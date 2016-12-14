require "java/jni"
require "../../../src/log"
require "./app"

fun jni_onload = JNI_OnLoad(vm : LibJNI::JavaVM*, reserved : Void*) : JNI::JInt
  JNI.vm = vm
  JNI.version
end

# Main entry point from the java Activity into the Crystal activity.
fun helloJni_crystalMain = Java_com_example_timer_Timer_crystalMain(env : LibJNI::Env*, this : LibJNI::JObject, handler : LibJNI::JObject) : Void
  # we replace the activity and handler references, because Activity#onCreate
  # is called whenever the orientation changes, for example.
  App.activity = this
  App.handler = handler

  # break if crystal main is already running
  return if App.main_running?
  App.main_running!

  # we run crystal main in its own thread, separated from the main Java thread,
  # so we don't block the main UI thread. this requires to communication with
  # the main thread with an `Android::Os::Handler` object, though.
  Thread.new do
    GC.init

    begin
      LibCrystalMain.__crystal_main(0, nil)
    rescue ex
      Android.logger.error ex.message.to_s
      ex.backtrace.each { |line| Android.logger.error "     #{line}" }
    end
  end
end

# FIXME: main must be required AFTER the above fun definitions (?)
require "./main"
