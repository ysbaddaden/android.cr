require "./lib_android/native_activity"
require "./lib_android/native_window"
require "./native_activity/commands"
require "./native_window"
require "./looper"
require "./asset/manager"

module Android
  module Window
    alias Flags = LibAndroid::WINDOW_FLAG
    alias Format = LibAndroid::WINDOW_FORMAT
  end

  def self.native_activity
    @@native_activity.not_nil!
  end

  def self.native_activity=(activity : LibAndroid::NativeActivity*)
    raise "FATAL: Android.native_activity has already been defined!" if @@native_activity
    @@native_activity = NativeActivity.new(activity)
  end

  class NativeActivity
    alias ShowSoftInput = LibAndroid::NATIVE_ACTIVITY_SHOW_SOFT_INPUT
    alias HideSoftInput = LibAndroid::NATIVE_ACTIVITY_HIDE_SOFT_INPUT

    enum State
      START
      STOP
      PAUSE
      RESUME
    end

    getter channel

    #@clazz : LibJNI::JObject

    protected def initialize(@activity : LibAndroid::NativeActivity*)
      #env = @activity.value.env
      #@clazz = env.value.functions.value.newGlobalRef.call(env, @activity.value.clazz)

      @channel = Channel::Buffered(Command).new

      @activity.value.callbacks.value.onStart = ->(activity : LibAndroid::NativeActivity*) {
        Android.logger.verbose("callbacks.onStart()")
        Android.native_activity.channel.send Command::State.new(:start)
      }
      @activity.value.callbacks.value.onStop = ->(activity : LibAndroid::NativeActivity*) {
        Android.logger.verbose("callbacks.onStop()")
        Android.native_activity.channel.send Command::State.new(:stop)
      }
      @activity.value.callbacks.value.onPause = ->(activity : LibAndroid::NativeActivity*) {
        Android.logger.verbose("callbacks.onPause()")
        Android.native_activity.channel.send Command::State.new(:pause)
      }
      @activity.value.callbacks.value.onResume = ->(activity : LibAndroid::NativeActivity*) {
        Android.logger.verbose("callbacks.onResume()")
        Android.native_activity.channel.send Command::State.new(:resume)
      }
      @activity.value.callbacks.value.onConfigurationChanged = ->(activity : LibAndroid::NativeActivity*) {
        Android.logger.verbose("callbacks.onConfigurationChanged()")
        Android.native_activity.channel.send Command::State.new(:configuration)
      }
      @activity.value.callbacks.value.onLowMemory = ->(activity : LibAndroid::NativeActivity*) {
        Android.logger.verbose("callbacks.onLowMemory()")
        Android.native_activity.channel.send Command::State.new(:low_memory)
      }

      @activity.value.callbacks.value.onDestroy = ->(activity : LibAndroid::NativeActivity*) {
        Android.logger.verbose("callbacks.onDestroy()")
        Android.native_activity.channel.send Command::State.new(:destroy)
      }

      @activity.value.callbacks.value.onSaveInstanceState = ->(activity : LibAndroid::NativeActivity*, out_size : LibC::SizeT*) {
        Android.logger.verbose("callbacks.onSaveInstanceState()")
        #Android.native_activity.channel.send Command::SaveInstanceState.new(:save, size)

        # TODO: return the state to save
        out_size.value = 0_u32
        Pointer(Void).null
      }

      @activity.value.callbacks.value.onNativeWindowCreated = ->(activity : LibAndroid::NativeActivity*, window : LibAndroid::NativeWindow*) {
        Android.logger.verbose("callbacks.onNativeWindowCreated(#{window})")
        Android.native_activity.channel.send Command::Window.new(:created, NativeWindow.new(window))
      }
      @activity.value.callbacks.value.onNativeWindowResized = ->(activity : LibAndroid::NativeActivity*, window : LibAndroid::NativeWindow*) {
        Android.logger.verbose("callbacks.onNativeWindowResized(#{window})")
        Android.native_activity.channel.send Command::Window.new(:resized, NativeWindow.new(window))
      }
      @activity.value.callbacks.value.onNativeWindowRedrawNeeded = ->(activity : LibAndroid::NativeActivity*, window : LibAndroid::NativeWindow*) {
        Android.logger.verbose("callbacks.onNativeWindowRedrawNeeded(#{window})")
        Android.native_activity.channel.send Command::Window.new(:redraw_needed, NativeWindow.new(window))
      }
      @activity.value.callbacks.value.onNativeWindowDestroyed = ->(activity : LibAndroid::NativeActivity*, window : LibAndroid::NativeWindow*) {
        Android.logger.verbose("callbacks.onNativeWindowDestroyed(#{window})")
        Android.native_activity.channel.send Command::Window.new(:destroyed, NativeWindow.new(window))
      }
      @activity.value.callbacks.value.onWindowFocusChanged = ->(activity : LibAndroid::NativeActivity*, has_focus : Int32) {
        Android.logger.verbose("callbacks.onWindowFocusChanged(#{has_focus})")
        Android.native_activity.channel.send Command::Focus.new(:changed, has_focus == 1)
      }

      @activity.value.callbacks.value.onInputQueueCreated = ->(activity : LibAndroid::NativeActivity*, queue : LibAndroid::InputQueue*) {
        Android.logger.verbose("callbacks.onInputQueueCreated(#{queue})")
        Android.looper.attach(queue)
      }

      @activity.value.callbacks.value.onInputQueueDestroyed = ->(activity : LibAndroid::NativeActivity*, queue : LibAndroid::InputQueue*) {
        Android.logger.verbose("callbacks.onInputQueueDestroyed(#{queue})")
        Android.looper.detach(queue)
      }

      @activity.value.callbacks.value.onContentRectChanged = ->(activity : LibAndroid::NativeActivity*, rect : LibAndroid::Rect*) {
        r = rect.value
        Android.logger.verbose("callbacks.onContentRectChanged(#{r.left}, #{r.top}, #{r.right}, #{r.bottom})")
        Android.native_activity.channel.send Command::ContentRect.new(:changed, rect.value)
      }
    end

    def finish
      LibAndroid.nativeActivity_finish(self)
    end

    # Global JavaVM* handle. Valid for the whole program.
    def vm
      @activity.value.vm
    end

    # NOTE: misnamed, it's actually a `jobject` reference to the `android.app.NativeActivity` instance, not a `jclass` reference.
    def clazz
      #@clazz
      @activity.value.clazz
    end

    def internal_data_path
      @activity.value.internalDataPath
    end

    def external_data_path
      @activity.value.externalDataPath
    end

    def sdk_version
      @activity.value.sdk_version
    end

    def asset_manager
      @asset_manager ||= Asset::Manager.new(@activity.value.asset_manager)
    end

    def obb_path
      String.new(@activity.value.obb_path)
    end

    def saved_state
      @saved_state
    end

    def saved_state=(slice : Slice(UInt8)? = nil)
      @saved_state = slice
    end

    def show_soft_input(flags : ShowSoftInput)
      LibAndroid.nativeActivity_showSoftInput(self, flags)
    end

    def hide_soft_input(flags : HideSoftInput)
      LibAndroid.nativeActivity_hideSoftInput(self, flags)
    end

    def set_window_flags(add : Window::Flags, remove : Window::Flags)
      LibAndroid.set_window_flags(self, add, remove)
    end

    def set_window_format(format : Window::Format)
      LibAndroid.set_window_format(self, format)
    end

    def to_unsafe
      @activity
    end
  end
end
