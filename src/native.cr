require "./android"
require "./native_activity"

module Android
  def self.main_running?
    !!@@main_running
  end

  def self.main_running!
    @@main_running = true
  end
end

fun aNativeActivity_onCreate = ANativeActivity_onCreate(activity : LibAndroid::NativeActivity*, saved_state : Void*, saved_state_size : LibC::SizeT) : Void
  return if Android.main_running?
  Android.main_running!

  Thread.new do
    GC.init

    JNI.vm = activity.value.vm
    Android.native_activity = activity

    if saved_state
      state = Slice(UInt8).new(saved_state_size)
      state.copy_from(saved_state.as(UInt8*), saved_state_size)
      Android.native_activity.saved_state = state
    end

    begin
      LibCrystalMain.__crystal_main(0, nil)
    rescue ex
      Android.logger.error ex.message.to_s
      ex.backtrace.each { |line| Android.logger.error "     #{line}" }
      #Android.native_activity.finish
    end
  end.join
end
