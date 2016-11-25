require "./android"
require "./native_activity"

fun aNativeActivity_onCreate = ANativeActivity_onCreate(activity : LibAndroid::NativeActivity*, saved_state : Void*, saved_state_size : LibC::SizeT) : Void
  GC.init

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
end
