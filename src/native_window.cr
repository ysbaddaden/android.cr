require "./lib_android/native_window"
require "./lib_android/native_window_jni"

module Android
  class NativeWindow
    protected def initialize(@window : LibAndroid::NativeWindow*)
      @acquired = 0
    end

    def finalize
      @acquired.times { release }
    end

    def self.from(env : JNI::Env, surface : LibJNI::Object)
      new LibAndroid.nativeWindow_fromSurface(env, surface)
    end

    def acquire : Nil
      LibAndroid.nativeWindow_acquire(self)
      @acquired += 1
    end

    def acquire
      acquire
      begin
        yield
      ensure
        release
      end
    end

    def release : Nil
      LibAndroid.nativeWindow_release(self)
      @acquired -= 1
    end

    def format
      LibAndroid.nativeWindow_getFormat(self)
    end

    def height
      LibAndroid.nativeWindow_getHeight(self)
    end

    def width
      LibAndroid.nativeWindow_getWidth(self)
    end

    def lock(buffer)
      LibAndroid.nativeWindow_lock(self, buffer, out bounds)
      bounds
    end

    def lock
      bounds = lock
      begin
        yield bounds
      ensure
        unlock_and_post
      end
    end

    def unlock_and_post
      LibAndroid.nativeWindow_unlockAndPost(self)
    end

    def buffers_geometry=(width_height_format)
      LibAndroid.nativeWindow_setBuffersGeometry(self, width_height_format)
      width_height_format
    end

    def to_unsafe
      @window
    end
  end
end
