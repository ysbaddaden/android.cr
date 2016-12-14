require "./lib_android"
require "./asset/manager"
require "./native_activity"
require "./native_window"
require "java/jni"

module Android
  include JNI
end
