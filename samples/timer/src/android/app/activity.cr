# NOTE: THIS FILE WAS AUTOMATICALLY GENERATED, DO NOT EDIT MANUALLY OR YOUR
#       CHANGES MAY END UP BEING OVERWRITTEN.

require "java/jni"

module Android
  include JNI

  module App
    class Activity < JObject
      DEFAULT_KEYS_DIALER = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "DEFAULT_KEYS_DIALER", "I")
          ret = env.callStaticIntField(jclass, field_id)
          ret
        end
      end

      DEFAULT_KEYS_DISABLE = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "DEFAULT_KEYS_DISABLE", "I")
          ret = env.callStaticIntField(jclass, field_id)
          ret
        end
      end

      DEFAULT_KEYS_SEARCH_GLOBAL = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "DEFAULT_KEYS_SEARCH_GLOBAL", "I")
          ret = env.callStaticIntField(jclass, field_id)
          ret
        end
      end

      DEFAULT_KEYS_SEARCH_LOCAL = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "DEFAULT_KEYS_SEARCH_LOCAL", "I")
          ret = env.callStaticIntField(jclass, field_id)
          ret
        end
      end

      DEFAULT_KEYS_SHORTCUT = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "DEFAULT_KEYS_SHORTCUT", "I")
          ret = env.callStaticIntField(jclass, field_id)
          ret
        end
      end

      FOCUSED_STATE_SET = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "FOCUSED_STATE_SET", "[I")
          ret = env.callStaticObjectField(jclass, field_id)
          Array(JInt).new(ret)
        end
      end

      RESULT_CANCELED = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "RESULT_CANCELED", "I")
          ret = env.callStaticIntField(jclass, field_id)
          ret
        end
      end

      RESULT_FIRST_USER = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "RESULT_FIRST_USER", "I")
          ret = env.callStaticIntField(jclass, field_id)
          ret
        end
      end

      RESULT_OK = begin
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          field_id = env.getStaticFieldID(jclass, "RESULT_OK", "I")
          ret = env.callStaticIntField(jclass, field_id)
          ret
        end
      end

      def self.new
        JNI.lock do |env|
          jclass = env.findClass("android/app/Activity")
          method_id = env.getMethodID(jclass, "<init>", "()V")
          new env.newObjectA(jclass, method_id, Pointer(LibJNI::JValue).null)
        end
      end

      def get_intent
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getIntent", "()Landroid/content/Intent;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def set_intent(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setIntent", "(Landroid/content/Intent;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_application
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getApplication", "()Landroid/app/Application;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def is_child
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isChild", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def get_parent
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getParent", "()Landroid/app/Activity;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          Android::App::Activity.new(ret)
        end
      end

      def get_window_manager
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getWindowManager", "()Landroid/view/WindowManager;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def get_window
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getWindow", "()Landroid/view/Window;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def get_loader_manager
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getLoaderManager", "()Landroid/app/LoaderManager;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def get_current_focus
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getCurrentFocus", "()Landroid/view/View;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      protected def on_create(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreate", "(Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.os.PersistableBundle`
      def on_create(x0 : Android::Os::Bundle?, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreate", "(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      protected def on_restore_instance_state(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onRestoreInstanceState", "(Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.os.PersistableBundle`
      def on_restore_instance_state(x0 : Android::Os::Bundle?, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onRestoreInstanceState", "(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      protected def on_post_create(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onPostCreate", "(Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.os.PersistableBundle`
      def on_post_create(x0 : Android::Os::Bundle?, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onPostCreate", "(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      protected def on_start
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onStart", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      protected def on_restart
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onRestart", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def on_state_not_saved
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onStateNotSaved", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      protected def on_resume
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onResume", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      protected def on_post_resume
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onPostResume", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def is_voice_interaction
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isVoiceInteraction", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def is_voice_interaction_root
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isVoiceInteractionRoot", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def get_voice_interactor
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getVoiceInteractor", "()Landroid/app/VoiceInteractor;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      protected def on_new_intent(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onNewIntent", "(Landroid/content/Intent;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      protected def on_save_instance_state(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onSaveInstanceState", "(Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.os.PersistableBundle`
      def on_save_instance_state(x0 : Android::Os::Bundle?, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onSaveInstanceState", "(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      protected def on_pause
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onPause", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      protected def on_user_leave_hint
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onUserLeaveHint", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.graphics.Bitmap`
      # NOTE: *x1* is actually a `android.graphics.Canvas`
      def on_create_thumbnail(x0 : JObject, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreateThumbnail", "(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      def on_create_description
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onCreateDescription", "()Ljava/lang/CharSequence;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JNI.to_string(ret)
        end
      end

      def on_provide_assist_data(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onProvideAssistData", "(Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.app.assist.AssistContent`
      def on_provide_assist_content(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onProvideAssistContent", "(Landroid/app/assist/AssistContent;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def show_assist(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "showAssist", "(Landroid/os/Bundle;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      protected def on_stop
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onStop", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      protected def on_destroy
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onDestroy", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def report_fully_drawn
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "reportFullyDrawn", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.res.Configuration`
      def on_configuration_changed(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onConfigurationChanged", "(Landroid/content/res/Configuration;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_changing_configurations
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getChangingConfigurations", "()I")
          ret = env.callIntMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def get_last_non_configuration_instance
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getLastNonConfigurationInstance", "()Ljava/lang/Object;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def on_retain_non_configuration_instance
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onRetainNonConfigurationInstance", "()Ljava/lang/Object;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def on_low_memory
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onLowMemory", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def on_trim_memory(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "onTrimMemory", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_fragment_manager
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getFragmentManager", "()Landroid/app/FragmentManager;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.app.Fragment`
      def on_attach_fragment(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onAttachFragment", "(Landroid/app/Fragment;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.net.Uri`
      def managed_query(x0 : JObject, x1 : Array(String), x2 : String, x3 : Array(String), x4 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? env.newStringUTF(x2.to_unsafe) : NULL
          arg3 = LibJNI::JValue.new; arg3.l = x3 ? x3.to_unsafe : NULL
          arg4 = LibJNI::JValue.new; arg4.l = x4 ? env.newStringUTF(x4.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "managedQuery", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3, arg4].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.database.Cursor`
      def start_managing_cursor(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startManagingCursor", "(Landroid/database/Cursor;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.database.Cursor`
      def stop_managing_cursor(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "stopManagingCursor", "(Landroid/database/Cursor;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def find_view_by_id(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "findViewById", "(I)Landroid/view/View;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_action_bar
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getActionBar", "()Landroid/app/ActionBar;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.widget.Toolbar`
      def set_action_bar(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setActionBar", "(Landroid/widget/Toolbar;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_content_view(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setContentView", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.View`
      def set_content_view(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setContentView", "(Landroid/view/View;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.View`
      # NOTE: *x1* is actually a `android.view.ViewGroup$LayoutParams`
      def set_content_view(x0 : JObject, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setContentView", "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.View`
      # NOTE: *x1* is actually a `android.view.ViewGroup$LayoutParams`
      def add_content_view(x0 : JObject, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "addContentView", "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def get_content_transition_manager
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getContentTransitionManager", "()Landroid/transition/TransitionManager;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.transition.TransitionManager`
      def set_content_transition_manager(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setContentTransitionManager", "(Landroid/transition/TransitionManager;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_content_scene
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getContentScene", "()Landroid/transition/Scene;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def set_finish_on_touch_outside(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "setFinishOnTouchOutside", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_default_key_mode(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setDefaultKeyMode", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.view.KeyEvent`
      def on_key_down(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onKeyDown", "(ILandroid/view/KeyEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `android.view.KeyEvent`
      def on_key_long_press(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onKeyLongPress", "(ILandroid/view/KeyEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `android.view.KeyEvent`
      def on_key_up(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onKeyUp", "(ILandroid/view/KeyEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x2* is actually a `android.view.KeyEvent`
      def on_key_multiple(x0 : JInt, x1 : JInt, x2 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onKeyMultiple", "(IILandroid/view/KeyEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret == TRUE
        end
      end

      def on_back_pressed
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onBackPressed", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.view.KeyEvent`
      def on_key_shortcut(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onKeyShortcut", "(ILandroid/view/KeyEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.MotionEvent`
      def on_touch_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onTouchEvent", "(Landroid/view/MotionEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.MotionEvent`
      def on_trackball_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onTrackballEvent", "(Landroid/view/MotionEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.MotionEvent`
      def on_generic_motion_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onGenericMotionEvent", "(Landroid/view/MotionEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def on_user_interaction
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onUserInteraction", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.WindowManager$LayoutParams`
      def on_window_attributes_changed(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onWindowAttributesChanged", "(Landroid/view/WindowManager$LayoutParams;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def on_content_changed
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onContentChanged", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def on_window_focus_changed(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "onWindowFocusChanged", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def on_attached_to_window
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onAttachedToWindow", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def on_detached_from_window
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onDetachedFromWindow", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def has_window_focus
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "hasWindowFocus", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.KeyEvent`
      def dispatch_key_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.KeyEvent`
      def dispatch_key_shortcut_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "dispatchKeyShortcutEvent", "(Landroid/view/KeyEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.MotionEvent`
      def dispatch_touch_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.MotionEvent`
      def dispatch_trackball_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "dispatchTrackballEvent", "(Landroid/view/MotionEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.MotionEvent`
      def dispatch_generic_motion_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "dispatchGenericMotionEvent", "(Landroid/view/MotionEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.accessibility.AccessibilityEvent`
      def dispatch_populate_accessibility_event(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "dispatchPopulateAccessibilityEvent", "(Landroid/view/accessibility/AccessibilityEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def on_create_panel_view(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "onCreatePanelView", "(I)Landroid/view/View;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x1* is actually a `android.view.Menu`
      def on_create_panel_menu(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreatePanelMenu", "(ILandroid/view/Menu;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `android.view.View`
      # NOTE: *x2* is actually a `android.view.Menu`
      def on_prepare_panel(x0 : JInt, x1 : JObject, x2 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onPreparePanel", "(ILandroid/view/View;Landroid/view/Menu;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `android.view.Menu`
      def on_menu_opened(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onMenuOpened", "(ILandroid/view/Menu;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `android.view.MenuItem`
      def on_menu_item_selected(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onMenuItemSelected", "(ILandroid/view/MenuItem;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `android.view.Menu`
      def on_panel_closed(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onPanelClosed", "(ILandroid/view/Menu;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def invalidate_options_menu
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "invalidateOptionsMenu", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.Menu`
      def on_create_options_menu(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreateOptionsMenu", "(Landroid/view/Menu;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.Menu`
      def on_prepare_options_menu(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onPrepareOptionsMenu", "(Landroid/view/Menu;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.MenuItem`
      def on_options_item_selected(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def on_navigate_up
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onNavigateUp", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def on_navigate_up_from_child(x0 : Android::App::Activity?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onNavigateUpFromChild", "(Landroid/app/Activity;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.app.TaskStackBuilder`
      def on_create_navigate_up_task_stack(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreateNavigateUpTaskStack", "(Landroid/app/TaskStackBuilder;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.app.TaskStackBuilder`
      def on_prepare_navigate_up_task_stack(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onPrepareNavigateUpTaskStack", "(Landroid/app/TaskStackBuilder;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.Menu`
      def on_options_menu_closed(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onOptionsMenuClosed", "(Landroid/view/Menu;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def open_options_menu
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "openOptionsMenu", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def close_options_menu
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "closeOptionsMenu", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.ContextMenu`
      # NOTE: *x1* is actually a `android.view.View`
      # NOTE: *x2* is actually a `android.view.ContextMenu$ContextMenuInfo`
      def on_create_context_menu(x0 : JObject, x1 : JObject, x2 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreateContextMenu", "(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.View`
      def register_for_context_menu(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "registerForContextMenu", "(Landroid/view/View;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.View`
      def unregister_for_context_menu(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "unregisterForContextMenu", "(Landroid/view/View;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.View`
      def open_context_menu(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "openContextMenu", "(Landroid/view/View;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def close_context_menu
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "closeContextMenu", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.MenuItem`
      def on_context_item_selected(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onContextItemSelected", "(Landroid/view/MenuItem;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.view.Menu`
      def on_context_menu_closed(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onContextMenuClosed", "(Landroid/view/Menu;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      protected def on_create_dialog(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "onCreateDialog", "(I)Landroid/app/Dialog;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      protected def on_create_dialog(x0 : JInt, x1 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreateDialog", "(ILandroid/os/Bundle;)Landroid/app/Dialog;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x1* is actually a `android.app.Dialog`
      protected def on_prepare_dialog(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onPrepareDialog", "(ILandroid/app/Dialog;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.app.Dialog`
      protected def on_prepare_dialog(x0 : JInt, x1 : JObject, x2 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onPrepareDialog", "(ILandroid/app/Dialog;Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret
        end
      end

      def show_dialog(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "showDialog", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def show_dialog(x0 : JInt, x1 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "showDialog", "(ILandroid/os/Bundle;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      def dismiss_dialog(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "dismissDialog", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def remove_dialog(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "removeDialog", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.SearchEvent`
      def on_search_requested(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onSearchRequested", "(Landroid/view/SearchEvent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def on_search_requested
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onSearchRequested", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def get_search_event
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getSearchEvent", "()Landroid/view/SearchEvent;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def start_search(x0 : String, x1 : Bool, x2 : Android::Os::Bundle?, x3 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.z = x1 ? TRUE : FALSE
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          arg3 = LibJNI::JValue.new; arg3.z = x3 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "startSearch", "(Ljava/lang/String;ZLandroid/os/Bundle;Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3].to_unsafe)
          ret
        end
      end

      def trigger_search(x0 : String, x1 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "triggerSearch", "(Ljava/lang/String;Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def take_key_events(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "takeKeyEvents", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def request_window_feature(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "requestWindowFeature", "(I)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def set_feature_drawable_resource(x0 : JInt, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "setFeatureDrawableResource", "(II)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.net.Uri`
      def set_feature_drawable_uri(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setFeatureDrawableUri", "(ILandroid/net/Uri;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.graphics.drawable.Drawable`
      def set_feature_drawable(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setFeatureDrawable", "(ILandroid/graphics/drawable/Drawable;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def set_feature_drawable_alpha(x0 : JInt, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "setFeatureDrawableAlpha", "(II)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def get_layout_inflater
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getLayoutInflater", "()Landroid/view/LayoutInflater;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def get_menu_inflater
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getMenuInflater", "()Landroid/view/MenuInflater;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.content.res.Resources$Theme`
      protected def on_apply_theme_resource(x0 : JObject, x1 : JInt, x2 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.z = x2 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "onApplyThemeResource", "(Landroid/content/res/Resources$Theme;IZ)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret
        end
      end

      def request_permissions(x0 : Array(String), x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "requestPermissions", "([Ljava/lang/String;I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def on_request_permissions_result(x0 : JInt, x1 : Array(String), x2 : Array(JInt))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret
        end
      end

      def should_show_request_permission_rationale(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "shouldShowRequestPermissionRationale", "(Ljava/lang/String;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def start_activity_for_result(x0 : JObject, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "startActivityForResult", "(Landroid/content/Intent;I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def start_activity_for_result(x0 : JObject, x1 : JInt, x2 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActivityForResult", "(Landroid/content/Intent;ILandroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.IntentSender`
      # NOTE: *x2* is actually a `android.content.Intent`
      # NOTE: throws `android.content.IntentSender$SendIntentException`
      def start_intent_sender_for_result(x0 : JObject, x1 : JInt, x2 : JObject, x3 : JInt, x4 : JInt, x5 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          arg3 = LibJNI::JValue.new; arg3.i = x3
          arg4 = LibJNI::JValue.new; arg4.i = x4
          arg5 = LibJNI::JValue.new; arg5.i = x5
          method_id = env.getMethodID(jclass, "startIntentSenderForResult", "(Landroid/content/IntentSender;ILandroid/content/Intent;III)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3, arg4, arg5].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.IntentSender`
      # NOTE: *x2* is actually a `android.content.Intent`
      # NOTE: throws `android.content.IntentSender$SendIntentException`
      def start_intent_sender_for_result(x0 : JObject, x1 : JInt, x2 : JObject, x3 : JInt, x4 : JInt, x5 : JInt, x6 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          arg3 = LibJNI::JValue.new; arg3.i = x3
          arg4 = LibJNI::JValue.new; arg4.i = x4
          arg5 = LibJNI::JValue.new; arg5.i = x5
          arg6 = LibJNI::JValue.new; arg6.l = x6 ? x6.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startIntentSenderForResult", "(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3, arg4, arg5, arg6].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def start_activity(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActivity", "(Landroid/content/Intent;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def start_activity(x0 : JObject, x1 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActivity", "(Landroid/content/Intent;Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def start_activities(x0 : Array(JObject))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActivities", "([Landroid/content/Intent;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def start_activities(x0 : Array(JObject), x1 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActivities", "([Landroid/content/Intent;Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.IntentSender`
      # NOTE: *x1* is actually a `android.content.Intent`
      # NOTE: throws `android.content.IntentSender$SendIntentException`
      def start_intent_sender(x0 : JObject, x1 : JObject, x2 : JInt, x3 : JInt, x4 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.i = x3
          arg4 = LibJNI::JValue.new; arg4.i = x4
          method_id = env.getMethodID(jclass, "startIntentSender", "(Landroid/content/IntentSender;Landroid/content/Intent;III)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3, arg4].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.IntentSender`
      # NOTE: *x1* is actually a `android.content.Intent`
      # NOTE: throws `android.content.IntentSender$SendIntentException`
      def start_intent_sender(x0 : JObject, x1 : JObject, x2 : JInt, x3 : JInt, x4 : JInt, x5 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.i = x3
          arg4 = LibJNI::JValue.new; arg4.i = x4
          arg5 = LibJNI::JValue.new; arg5.l = x5 ? x5.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startIntentSender", "(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3, arg4, arg5].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def start_activity_if_needed(x0 : JObject, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "startActivityIfNeeded", "(Landroid/content/Intent;I)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def start_activity_if_needed(x0 : JObject, x1 : JInt, x2 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActivityIfNeeded", "(Landroid/content/Intent;ILandroid/os/Bundle;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def start_next_matching_activity(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startNextMatchingActivity", "(Landroid/content/Intent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def start_next_matching_activity(x0 : JObject, x1 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startNextMatchingActivity", "(Landroid/content/Intent;Landroid/os/Bundle;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `android.content.Intent`
      def start_activity_from_child(x0 : Android::App::Activity?, x1 : JObject, x2 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          method_id = env.getMethodID(jclass, "startActivityFromChild", "(Landroid/app/Activity;Landroid/content/Intent;I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.content.Intent`
      def start_activity_from_child(x0 : Android::App::Activity?, x1 : JObject, x2 : JInt, x3 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.l = x3 ? x3.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActivityFromChild", "(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.app.Fragment`
      # NOTE: *x1* is actually a `android.content.Intent`
      def start_activity_from_fragment(x0 : JObject, x1 : JObject, x2 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          method_id = env.getMethodID(jclass, "startActivityFromFragment", "(Landroid/app/Fragment;Landroid/content/Intent;I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.app.Fragment`
      # NOTE: *x1* is actually a `android.content.Intent`
      def start_activity_from_fragment(x0 : JObject, x1 : JObject, x2 : JInt, x3 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.l = x3 ? x3.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActivityFromFragment", "(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.content.IntentSender`
      # NOTE: *x3* is actually a `android.content.Intent`
      # NOTE: throws `android.content.IntentSender$SendIntentException`
      def start_intent_sender_from_child(x0 : Android::App::Activity?, x1 : JObject, x2 : JInt, x3 : JObject, x4 : JInt, x5 : JInt, x6 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.l = x3 ? x3.to_unsafe : NULL
          arg4 = LibJNI::JValue.new; arg4.i = x4
          arg5 = LibJNI::JValue.new; arg5.i = x5
          arg6 = LibJNI::JValue.new; arg6.i = x6
          method_id = env.getMethodID(jclass, "startIntentSenderFromChild", "(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3, arg4, arg5, arg6].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.content.IntentSender`
      # NOTE: *x3* is actually a `android.content.Intent`
      # NOTE: throws `android.content.IntentSender$SendIntentException`
      def start_intent_sender_from_child(x0 : Android::App::Activity?, x1 : JObject, x2 : JInt, x3 : JObject, x4 : JInt, x5 : JInt, x6 : JInt, x7 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.l = x3 ? x3.to_unsafe : NULL
          arg4 = LibJNI::JValue.new; arg4.i = x4
          arg5 = LibJNI::JValue.new; arg5.i = x5
          arg6 = LibJNI::JValue.new; arg6.i = x6
          arg7 = LibJNI::JValue.new; arg7.l = x7 ? x7.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startIntentSenderFromChild", "(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7].to_unsafe)
          ret
        end
      end

      def override_pending_transition(x0 : JInt, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "overridePendingTransition", "(II)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def set_result(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setResult", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.content.Intent`
      def set_result(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setResult", "(ILandroid/content/Intent;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def get_referrer
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getReferrer", "()Landroid/net/Uri;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def on_provide_referrer
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onProvideReferrer", "()Landroid/net/Uri;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def get_calling_package
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getCallingPackage", "()Ljava/lang/String;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JNI.to_string(ret)
        end
      end

      def get_calling_activity
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getCallingActivity", "()Landroid/content/ComponentName;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def set_visible(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "setVisible", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def is_finishing
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isFinishing", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def is_destroyed
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isDestroyed", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def is_changing_configurations
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isChangingConfigurations", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def recreate
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "recreate", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def finish
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "finish", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def finish_affinity
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "finishAffinity", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def finish_from_child(x0 : Android::App::Activity?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "finishFromChild", "(Landroid/app/Activity;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def finish_after_transition
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "finishAfterTransition", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def finish_activity(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "finishActivity", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def finish_activity_from_child(x0 : Android::App::Activity?, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "finishActivityFromChild", "(Landroid/app/Activity;I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def finish_and_remove_task
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "finishAndRemoveTask", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def release_instance
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "releaseInstance", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      # NOTE: *x2* is actually a `android.content.Intent`
      protected def on_activity_result(x0 : JInt, x1 : JInt, x2 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onActivityResult", "(IILandroid/content/Intent;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.content.Intent`
      def on_activity_reenter(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onActivityReenter", "(ILandroid/content/Intent;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.content.Intent`
      def create_pending_result(x0 : JInt, x1 : JObject, x2 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.i = x2
          method_id = env.getMethodID(jclass, "createPendingResult", "(ILandroid/content/Intent;I)Landroid/app/PendingIntent;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          JObject.new(ret)
        end
      end

      def set_requested_orientation(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setRequestedOrientation", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_requested_orientation
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getRequestedOrientation", "()I")
          ret = env.callIntMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def get_task_id
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getTaskId", "()I")
          ret = env.callIntMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def is_task_root
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isTaskRoot", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def move_task_to_back(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "moveTaskToBack", "(Z)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def get_local_class_name
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getLocalClassName", "()Ljava/lang/String;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JNI.to_string(ret)
        end
      end

      def get_component_name
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getComponentName", "()Landroid/content/ComponentName;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def get_preferences(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "getPreferences", "(I)Landroid/content/SharedPreferences;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_system_service(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getSystemService", "(Ljava/lang/String;)Ljava/lang/Object;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def set_title(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "setTitle", "(Ljava/lang/CharSequence;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_title(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setTitle", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_title_color(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setTitleColor", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_title
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getTitle", "()Ljava/lang/CharSequence;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JNI.to_string(ret)
        end
      end

      def get_title_color
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getTitleColor", "()I")
          ret = env.callIntMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      protected def on_title_changed(x0 : String, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "onTitleChanged", "(Ljava/lang/CharSequence;I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      protected def on_child_title_changed(x0 : Android::App::Activity?, x1 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? env.newStringUTF(x1.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "onChildTitleChanged", "(Landroid/app/Activity;Ljava/lang/CharSequence;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.app.ActivityManager$TaskDescription`
      def set_task_description(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setTaskDescription", "(Landroid/app/ActivityManager$TaskDescription;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_progress_bar_visibility(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "setProgressBarVisibility", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_progress_bar_indeterminate_visibility(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "setProgressBarIndeterminateVisibility", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_progress_bar_indeterminate(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "setProgressBarIndeterminate", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_progress(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setProgress", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_secondary_progress(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setSecondaryProgress", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def set_volume_control_stream(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "setVolumeControlStream", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_volume_control_stream
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getVolumeControlStream", "()I")
          ret = env.callIntMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.media.session.MediaController`
      def set_media_controller(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setMediaController", "(Landroid/media/session/MediaController;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_media_controller
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getMediaController", "()Landroid/media/session/MediaController;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `java.lang.Runnable`
      def run_on_ui_thread(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "runOnUiThread", "(Ljava/lang/Runnable;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.content.Context`
      # NOTE: *x2* is actually a `android.util.AttributeSet`
      def on_create_view(x0 : String, x1 : JObject, x2 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreateView", "(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.view.View`
      # NOTE: *x2* is actually a `android.content.Context`
      # NOTE: *x3* is actually a `android.util.AttributeSet`
      def on_create_view(x0 : JObject, x1 : String, x2 : JObject, x3 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? env.newStringUTF(x1.to_unsafe) : NULL
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          arg3 = LibJNI::JValue.new; arg3.l = x3 ? x3.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onCreateView", "(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x1* is actually a `java.io.FileDescriptor`
      # NOTE: *x2* is actually a `java.io.PrintWriter`
      def dump(x0 : String, x1 : JObject, x2 : JObject, x3 : Array(String))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          arg3 = LibJNI::JValue.new; arg3.l = x3 ? x3.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "dump", "(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3].to_unsafe)
          ret
        end
      end

      def is_immersive
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isImmersive", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def request_visible_behind(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "requestVisibleBehind", "(Z)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def on_visible_behind_canceled
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onVisibleBehindCanceled", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def on_enter_animation_complete
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "onEnterAnimationComplete", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def set_immersive(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "setImmersive", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.ActionMode$Callback`
      def start_action_mode(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "startActionMode", "(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.view.ActionMode$Callback`
      def start_action_mode(x0 : JObject, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "startActionMode", "(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.view.ActionMode$Callback`
      def on_window_starting_action_mode(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onWindowStartingActionMode", "(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.view.ActionMode$Callback`
      def on_window_starting_action_mode(x0 : JObject, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "onWindowStartingActionMode", "(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.view.ActionMode`
      def on_action_mode_started(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onActionModeStarted", "(Landroid/view/ActionMode;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.view.ActionMode`
      def on_action_mode_finished(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "onActionModeFinished", "(Landroid/view/ActionMode;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def should_up_recreate_task(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "shouldUpRecreateTask", "(Landroid/content/Intent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `android.content.Intent`
      def navigate_up_to(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "navigateUpTo", "(Landroid/content/Intent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `android.content.Intent`
      def navigate_up_to_from_child(x0 : Android::App::Activity?, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "navigateUpToFromChild", "(Landroid/app/Activity;Landroid/content/Intent;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      def get_parent_activity_intent
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getParentActivityIntent", "()Landroid/content/Intent;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.app.SharedElementCallback`
      def set_enter_shared_element_callback(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setEnterSharedElementCallback", "(Landroid/app/SharedElementCallback;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.app.SharedElementCallback`
      def set_exit_shared_element_callback(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setExitSharedElementCallback", "(Landroid/app/SharedElementCallback;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def postpone_enter_transition
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "postponeEnterTransition", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def start_postponed_enter_transition
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "startPostponedEnterTransition", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def start_lock_task
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "startLockTask", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def stop_lock_task
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "stopLockTask", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def show_lock_task_escape_message
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "showLockTaskEscapeMessage", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end
    end
  end
end
