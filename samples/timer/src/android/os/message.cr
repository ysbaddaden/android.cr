# NOTE: THIS FILE WAS AUTOMATICALLY GENERATED, DO NOT EDIT MANUALLY OR YOUR
#       CHANGES MAY END UP BEING OVERWRITTEN.

require "java/jni"

module Android
  include JNI

  module Os
    class Message < JObject
      CREATOR = begin
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          field_id = env.getStaticFieldID(jclass, "CREATOR", "Landroid/os/Parcelable$Creator;")
          ret = env.callStaticObjectField(jclass, field_id)
          JObject.new(ret)
        end
      end

      def self.new
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          method_id = env.getMethodID(jclass, "<init>", "()V")
          new env.newObjectA(jclass, method_id, Pointer(LibJNI::JValue).null)
        end
      end

      def self.obtain
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          method_id = env.getStaticMethodID(jclass, "obtain", "()Landroid/os/Message;")
          ret = env.callStaticObjectMethodA(jclass, method_id, Pointer(LibJNI::JValue).null)
          Android::Os::Message.new(ret)
        end
      end

      def self.obtain(x0 : Android::Os::Message?)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getStaticMethodID(jclass, "obtain", "(Landroid/os/Message;)Landroid/os/Message;")
          ret = env.callStaticObjectMethodA(jclass, method_id, StaticArray[arg0].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      def self.obtain(x0 : Android::Os::Handler?)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getStaticMethodID(jclass, "obtain", "(Landroid/os/Handler;)Landroid/os/Message;")
          ret = env.callStaticObjectMethodA(jclass, method_id, StaticArray[arg0].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      # NOTE: *x1* is actually a `java.lang.Runnable`
      def self.obtain(x0 : Android::Os::Handler?, x1 : JObject)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getStaticMethodID(jclass, "obtain", "(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;")
          ret = env.callStaticObjectMethodA(jclass, method_id, StaticArray[arg0, arg1].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      def self.obtain(x0 : Android::Os::Handler?, x1 : JInt)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getStaticMethodID(jclass, "obtain", "(Landroid/os/Handler;I)Landroid/os/Message;")
          ret = env.callStaticObjectMethodA(jclass, method_id, StaticArray[arg0, arg1].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      # NOTE: *x2* is actually a `java.lang.Object`
      def self.obtain(x0 : Android::Os::Handler?, x1 : JInt, x2 : JObject)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.l = x2 ? x2.to_unsafe : NULL
          method_id = env.getStaticMethodID(jclass, "obtain", "(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;")
          ret = env.callStaticObjectMethodA(jclass, method_id, StaticArray[arg0, arg1, arg2].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      def self.obtain(x0 : Android::Os::Handler?, x1 : JInt, x2 : JInt, x3 : JInt)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.i = x3
          method_id = env.getStaticMethodID(jclass, "obtain", "(Landroid/os/Handler;III)Landroid/os/Message;")
          ret = env.callStaticObjectMethodA(jclass, method_id, StaticArray[arg0, arg1, arg2, arg3].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      # NOTE: *x4* is actually a `java.lang.Object`
      def self.obtain(x0 : Android::Os::Handler?, x1 : JInt, x2 : JInt, x3 : JInt, x4 : JObject)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Message")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          arg2 = LibJNI::JValue.new; arg2.i = x2
          arg3 = LibJNI::JValue.new; arg3.i = x3
          arg4 = LibJNI::JValue.new; arg4.l = x4 ? x4.to_unsafe : NULL
          method_id = env.getStaticMethodID(jclass, "obtain", "(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;")
          ret = env.callStaticObjectMethodA(jclass, method_id, StaticArray[arg0, arg1, arg2, arg3, arg4].to_unsafe)
          Android::Os::Message.new(ret)
        end
      end

      def recycle
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "recycle", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def copy_from(x0 : Android::Os::Message?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "copyFrom", "(Landroid/os/Message;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_when
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getWhen", "()J")
          ret = env.callLongMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def set_target(x0 : Android::Os::Handler?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setTarget", "(Landroid/os/Handler;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_target
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getTarget", "()Landroid/os/Handler;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          Android::Os::Handler.new(ret)
        end
      end

      def get_callback
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getCallback", "()Ljava/lang/Runnable;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def get_data
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getData", "()Landroid/os/Bundle;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          Android::Os::Bundle.new(ret)
        end
      end

      def peek_data
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "peekData", "()Landroid/os/Bundle;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          Android::Os::Bundle.new(ret)
        end
      end

      def set_data(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setData", "(Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def send_to_target
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "sendToTarget", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def is_asynchronous
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "isAsynchronous", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def set_asynchronous(x0 : Bool)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.z = x0 ? TRUE : FALSE
          method_id = env.getMethodID(jclass, "setAsynchronous", "(Z)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
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

      def describe_contents
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "describeContents", "()I")
          ret = env.callIntMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      # NOTE: *x0* is actually a `android.os.Parcel`
      def write_to_parcel(x0 : JObject, x1 : JInt)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          arg1 = LibJNI::JValue.new; arg1.i = x1
          method_id = env.getMethodID(jclass, "writeToParcel", "(Landroid/os/Parcel;I)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end
    end
  end
end
