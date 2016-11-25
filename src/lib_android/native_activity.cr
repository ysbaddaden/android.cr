require "../lib_jni"
require "./asset_manager"
require "./input"
require "./native_window"

lib LibAndroid
  struct NativeActivity
    callbacks : NativeActivityCallbacks*
    vm : LibJNI::JavaVM* # VM global handle
    env : LibJNI::Env* # WARNING: attached to the main thread only!
    clazz : LibJNI::JObject* # NativeActivity Java object handle
    internalDataPath : Char*
    externalDataPath : Char*
    sdkVersion : Int32
    instance : Void* # ???
    assetManager : AssetManager*
    obbPath : Char*
  end

  struct NativeActivityCallbacks
    onStart : (NativeActivity*) ->
    onResume : (NativeActivity*) ->
    onSaveInstanceState : (NativeActivity*, SizeT*) -> Void*
    onPause : (NativeActivity*) ->
    onStop : (NativeActivity*) ->
    onDestroy : (NativeActivity*) ->

    onWindowFocusChanged : (NativeActivity*, Int) ->
    onNativeWindowCreated : (NativeActivity*, NativeWindow*) ->
    onNativeWindowResized : (NativeActivity*, NativeWindow*) ->
    onNativeWindowRedrawNeeded : (NativeActivity*, NativeWindow*) ->
    onNativeWindowDestroyed : (NativeActivity*, NativeWindow*) ->

    onInputQueueCreated : (NativeActivity*, InputQueue*) ->
    onInputQueueDestroyed : (NativeActivity*, InputQueue*) ->
    onContentRectChanged : (NativeActivity*, Rect*) ->
    onConfigurationChanged : (NativeActivity*) ->
    onLowMemory : (NativeActivity*) ->
  end

  fun nativeActivity_finish(activity : NativeActivity*)
  fun nativeActivity_setWindowFormat(activity : NativeActivity*, format : WINDOW_FORMAT)
  fun nativeActivity_setWindowFlags(activity : NativeActivity*, addFlags : WINDOW_FORMAT, removeFlags : WINDOW_FORMAT)

  enum NATIVE_ACTIVITY_SHOW_SOFT_INPUT : UInt32
    IMPLICIT = 0x0001
    FORCED = 0x0002
  end
  fun nativeActivity_showSoftInput = ANativeActivity_showSoftInput(activity : NativeActivity*, flags : NATIVE_ACTIVITY_SHOW_SOFT_INPUT)

  enum NATIVE_ACTIVITY_HIDE_SOFT_INPUT : UInt32
    IMPLICIT_ONLY = 0x0001
    NOT_ALWAYS = 0x0002
  end
  fun nativeActivity_hideSoftInput = ANativeActivity_hideSoftInput(activity : NativeActivity*, flags : NATIVE_ACTIVITY_HIDE_SOFT_INPUT)
end
