require "../../../src/native"
require "../../../src/log"

module Android
  def self.on_input(event : MotionEvent)
    Android.logger.verbose event.inspect
    0
  end
end

activity = Android.native_activity
state = activity.saved_state

Android.logger.tag = "crystal_native_activity"
Android.logger.verbose "android_main(#{activity.inspect}, #{state.inspect})"

