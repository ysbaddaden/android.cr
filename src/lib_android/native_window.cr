require "./rect"

lib LibAndroid
  enum WINDOW_FORMAT : Int32
    RGBA_8888 = 1
    RGBX_8888 = 2
    RGB_565   = 4
  end

  type NativeWindow = Void

  struct NativeWindow_Buffer
    width : Int32
    height : Int32
    stride : Int32
    format : Int32
    bits : Void*
    reserved : UInt32[6]
  end

  fun nativeWindow_acquire = ANativeWindow_acquire(window : NativeWindow*)
  fun nativeWindow_release = ANativeWindow_release(window : NativeWindow*)
  fun nativeWindow_getWidth = ANativeWindow_getWidth(window : NativeWindow*) : Int32
  fun nativeWindow_getHeight = ANativeWindow_getHeight(window : NativeWindow*) : Int32
  fun nativeWindow_getFormat = ANativeWindow_getFormat(window : NativeWindow*) : Int32
  fun nativeWindow_setBuffersGeometry = ANativeWindow_setBuffersGeometry(window : NativeWindow*, width : UInt32, height : UInt32, format : UInt32) : Int32
  fun nativeWindow_lock = ANativeWindow_lock(window : NativeWindow*, outBuffer : NativeWindow_Buffer*, inOutDirtyBounds : Rect*) : Int32
  fun nativeWindow_unlockAndPost = ANativeWindow_unlockAndPost(window : NativeWindow*) : Int32
end
