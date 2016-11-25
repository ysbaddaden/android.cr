require "./lib_jni"
require "./lib_android/native_activity.cr"
require "./lib_android/native_window.cr"
require "./lib_android/native_window_jni.cr"
require "./lib_android/window.cr"

@[Link("android")]
lib LibAndroid
  alias Int = LibC::Int
  alias SizeT = LibC::SizeT
  alias Float = LibC::Float
  alias Double = LibC::Double
  alias Char = LibC::Char
end
