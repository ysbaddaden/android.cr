require "./native_window"
require "java/lib_jni"

lib LibAndroid
  fun nativeWindow_fromSurface = ANativeWindow_fromSurface(env : LibJNI::Env*, surface : LibJNI::JObject) : NativeWindow*
end
