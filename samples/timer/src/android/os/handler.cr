# NOTE: THIS FILE WAS AUTOMATICALLY GENERATED, DO NOT EDIT MANUALLY OR YOUR
#       CHANGES MAY END UP BEING OVERWRITTEN.

require "java/jni"

module Android
  include JNI

  module Os
    class Handler < JObject
      def self.new
        JNI.lock do |env|
          jclass = env.findClass("android/os/Handler")
          method_id = env.getMethodID(jclass, "<init>", "()V")
          new env.newObjectA(jclass, method_id, Pointer(LibJNI::JValue).null)
        end
      end

      # NOTE: *x0* is actually a `android.os.Handler$Callback`
      def self.new(x0 : JObject)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Handler")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "<init>", "(Landroid/os/Handler$Callback;)V")
          new env.newObjectA(jclass, method_id, StaticArray[arg0].to_unsafe)
        end
      end

      # NOTE: *x0* is actually a `android.os.Looper`
      def self.new(x0 : JObject)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Handler")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "<init>", "(Landroid/os/Looper;)V")
          new env.newObjectA(jclass, method_id, StaticArray[arg0].to_unsafe)
        end
      end

      # NOTE: *x0* is actually a `android.os.Looper`
      # NOTE: *x1* is actually a `android.os.Handler$Callback`
      def self.new(x0 : JObject, x1 : JObject)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Handler")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "<init>", "(Landroid/os/Looper;Landroid/os/Handler$Callback;)V")
          new env.newObjectA(jclass, method_id, StaticArray[arg0, arg1].to_unsafe)
        end
      end

      def handle_message(x0 : Android::Os::Message?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "handleMessage", "(Landroid/os/Message;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def dispatch_message(x0 : Android::Os::Message?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "dispatchMessage", "(Landroid/os/Message;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_message_name(x0 : Android::Os::Message?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "getMessageName", "(Landroid/os/Message;)Ljava/lang/String;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JNI.to_string(ret)
        end
      end

      def obtain_message
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "obtainMessage", "()Landroid/os/Message;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          Android::Os::Message.new(ret)
        end
      end

      def obtain_message(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "obtainMessage", "(I)Landroid/os/Message;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      # NOTE: *x1* is actually a `java.lang.Object`
      def obtain_message(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "obtainMessage", "(ILjava/lang/Object;)Landroid/os/Message;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      def obtain_message(x0 : JInt, x1 : JInt, x2 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.i = x2
          method_id = env.getMethodID(jclass, "obtainMessage", "(III)Landroid/os/Message;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      # NOTE: *x3* is actually a `java.lang.Object`
      def obtain_message(x0 : JInt, x1 : JInt, x2 : JInt, x3 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.l = x3 ? x3.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "obtainMessage", "(IIILjava/lang/Object;)Landroid/os/Message;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1, arg2, arg3].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      # NOTE: *x0* is actually a `java.lang.Runnable`
      def post(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "post", "(Ljava/lang/Runnable;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `java.lang.Runnable`
      def post_at_time(x0 : JObject, x1 : JLong)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.j = x1
          method_id = env.getMethodID(jclass, "postAtTime", "(Ljava/lang/Runnable;J)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `java.lang.Runnable`
      # NOTE: *x1* is actually a `java.lang.Object`
      def post_at_time(x0 : JObject, x1 : JObject, x2 : JLong)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          arg2 = LibJNI::JValue.new; arg2.j = x2
          method_id = env.getMethodID(jclass, "postAtTime", "(Ljava/lang/Runnable;Ljava/lang/Object;J)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `java.lang.Runnable`
      def post_delayed(x0 : JObject, x1 : JLong)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.j = x1
          method_id = env.getMethodID(jclass, "postDelayed", "(Ljava/lang/Runnable;J)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `java.lang.Runnable`
      def post_at_front_of_queue(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "postAtFrontOfQueue", "(Ljava/lang/Runnable;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x0* is actually a `java.lang.Runnable`
      def remove_callbacks(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "removeCallbacks", "(Ljava/lang/Runnable;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `java.lang.Runnable`
      # NOTE: *x1* is actually a `java.lang.Object`
      def remove_callbacks(x0 : JObject, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "removeCallbacks", "(Ljava/lang/Runnable;Ljava/lang/Object;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def send_message(x0 : Android::Os::Message?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "sendMessage", "(Landroid/os/Message;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def send_empty_message(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "sendEmptyMessage", "(I)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def send_empty_message_delayed(x0 : JInt, x1 : JLong)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.j = x1
          method_id = env.getMethodID(jclass, "sendEmptyMessageDelayed", "(IJ)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      def send_empty_message_at_time(x0 : JInt, x1 : JLong)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.j = x1
          method_id = env.getMethodID(jclass, "sendEmptyMessageAtTime", "(IJ)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      def send_message_delayed(x0 : Android::Os::Message?, x1 : JLong)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.j = x1
          method_id = env.getMethodID(jclass, "sendMessageDelayed", "(Landroid/os/Message;J)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      def send_message_at_time(x0 : Android::Os::Message?, x1 : JLong)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.j = x1
          method_id = env.getMethodID(jclass, "sendMessageAtTime", "(Landroid/os/Message;J)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      def send_message_at_front_of_queue(x0 : Android::Os::Message?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "sendMessageAtFrontOfQueue", "(Landroid/os/Message;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      def remove_messages(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "removeMessages", "(I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `java.lang.Object`
      def remove_messages(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "removeMessages", "(ILjava/lang/Object;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x0* is actually a `java.lang.Object`
      def remove_callbacks_and_messages(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "removeCallbacksAndMessages", "(Ljava/lang/Object;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def has_messages(x0 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "hasMessages", "(I)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret == TRUE
        end
      end

      # NOTE: *x1* is actually a `java.lang.Object`
      def has_messages(x0 : JInt, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.i = x0
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "hasMessages", "(ILjava/lang/Object;)Z")
          ret = env.callBooleanMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret == TRUE
        end
      end

      def get_looper
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getLooper", "()Landroid/os/Looper;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      # NOTE: *x0* is actually a `android.util.Printer`
      def dump(x0 : JObject, x1 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? env.newStringUTF(x1.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def to_string
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "toString", "()Ljava/lang/String;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JNI.to_string(ret)
        end
      end
    end
  end
end
