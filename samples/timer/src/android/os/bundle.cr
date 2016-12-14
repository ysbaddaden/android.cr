# NOTE: THIS FILE WAS AUTOMATICALLY GENERATED, DO NOT EDIT MANUALLY OR YOUR
#       CHANGES MAY END UP BEING OVERWRITTEN.

require "java/jni"

module Android
  include JNI

  module Os
    class Bundle < JObject
      CREATOR = begin
        JNI.lock do |env|
          jclass = env.findClass("android/os/Bundle")
          field_id = env.getStaticFieldID(jclass, "CREATOR", "Landroid/os/Parcelable$Creator;")
          ret = env.callStaticObjectField(jclass, field_id)
          JObject.new(ret)
        end
      end

      EMPTY = begin
        JNI.lock do |env|
          jclass = env.findClass("android/os/Bundle")
          field_id = env.getStaticFieldID(jclass, "EMPTY", "Landroid/os/Bundle;")
          ret = env.callStaticObjectField(jclass, field_id)
          Android::Os::Bundle.new(ret)
        end
      end

      def self.new
        JNI.lock do |env|
          jclass = env.findClass("android/os/Bundle")
          method_id = env.getMethodID(jclass, "<init>", "()V")
          new env.newObjectA(jclass, method_id, Pointer(LibJNI::JValue).null)
        end
      end

      # NOTE: *x0* is actually a `java.lang.ClassLoader`
      def self.new(x0 : JObject)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Bundle")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "<init>", "(Ljava/lang/ClassLoader;)V")
          new env.newObjectA(jclass, method_id, StaticArray[arg0].to_unsafe)
        end
      end

      def self.new(x0 : JInt)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Bundle")
          arg0 = LibJNI::JValue.new; arg0.i = x0
          method_id = env.getMethodID(jclass, "<init>", "(I)V")
          new env.newObjectA(jclass, method_id, StaticArray[arg0].to_unsafe)
        end
      end

      def self.new(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Bundle")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "<init>", "(Landroid/os/Bundle;)V")
          new env.newObjectA(jclass, method_id, StaticArray[arg0].to_unsafe)
        end
      end

      # NOTE: *x0* is actually a `android.os.PersistableBundle`
      def self.new(x0 : JObject)
        JNI.lock do |env|
          jclass = env.findClass("android/os/Bundle")
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "<init>", "(Landroid/os/PersistableBundle;)V")
          new env.newObjectA(jclass, method_id, StaticArray[arg0].to_unsafe)
        end
      end

      # NOTE: *x0* is actually a `java.lang.ClassLoader`
      def set_class_loader(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "setClassLoader", "(Ljava/lang/ClassLoader;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_class_loader
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "getClassLoader", "()Ljava/lang/ClassLoader;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def clone
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "clone", "()Ljava/lang/Object;")
          ret = env.callObjectMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          JObject.new(ret)
        end
      end

      def clear
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "clear", "()V")
          ret = env.callVoidMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret
        end
      end

      def put_all(x0 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putAll", "(Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def has_file_descriptors
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          method_id = env.getMethodID(jclass, "hasFileDescriptors", "()Z")
          ret = env.callBooleanMethodA(this, method_id, Pointer(LibJNI::JValue).null)
          ret == TRUE
        end
      end

      def put_byte(x0 : String, x1 : JByte)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.b = x1
          method_id = env.getMethodID(jclass, "putByte", "(Ljava/lang/String;B)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_char(x0 : String, x1 : JChar)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.c = x1
          method_id = env.getMethodID(jclass, "putChar", "(Ljava/lang/String;C)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_short(x0 : String, x1 : JShort)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.s = x1
          method_id = env.getMethodID(jclass, "putShort", "(Ljava/lang/String;S)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_float(x0 : String, x1 : JFloat)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.f = x1
          method_id = env.getMethodID(jclass, "putFloat", "(Ljava/lang/String;F)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_char_sequence(x0 : String, x1 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? env.newStringUTF(x1.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "putCharSequence", "(Ljava/lang/String;Ljava/lang/CharSequence;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.os.Parcelable`
      def put_parcelable(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putParcelable", "(Ljava/lang/String;Landroid/os/Parcelable;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.util.Size`
      def put_size(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putSize", "(Ljava/lang/String;Landroid/util/Size;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.util.SizeF`
      def put_size_f(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putSizeF", "(Ljava/lang/String;Landroid/util/SizeF;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_parcelable_array(x0 : String, x1 : Array(JObject))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putParcelableArray", "(Ljava/lang/String;[Landroid/os/Parcelable;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `java.util.ArrayList<?`
      def put_parcelable_array_list(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putParcelableArrayList", "(Ljava/lang/String;Ljava/util/ArrayList;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.util.SparseArray<?`
      def put_sparse_parcelable_array(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putSparseParcelableArray", "(Ljava/lang/String;Landroid/util/SparseArray;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `java.util.ArrayList<java.lang.Integer>`
      def put_integer_array_list(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putIntegerArrayList", "(Ljava/lang/String;Ljava/util/ArrayList;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `java.util.ArrayList<java.lang.String>`
      def put_string_array_list(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putStringArrayList", "(Ljava/lang/String;Ljava/util/ArrayList;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `java.util.ArrayList<java.lang.CharSequence>`
      def put_char_sequence_array_list(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putCharSequenceArrayList", "(Ljava/lang/String;Ljava/util/ArrayList;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `java.io.Serializable`
      def put_serializable(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putSerializable", "(Ljava/lang/String;Ljava/io/Serializable;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_byte_array(x0 : String, x1 : Array(JByte))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putByteArray", "(Ljava/lang/String;[B)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_short_array(x0 : String, x1 : Array(JShort))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putShortArray", "(Ljava/lang/String;[S)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_char_array(x0 : String, x1 : Array(JChar))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putCharArray", "(Ljava/lang/String;[C)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_float_array(x0 : String, x1 : Array(JFloat))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putFloatArray", "(Ljava/lang/String;[F)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_char_sequence_array(x0 : String, x1 : Array(String))
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putCharSequenceArray", "(Ljava/lang/String;[Ljava/lang/CharSequence;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def put_bundle(x0 : String, x1 : Android::Os::Bundle?)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putBundle", "(Ljava/lang/String;Landroid/os/Bundle;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      # NOTE: *x1* is actually a `android.os.IBinder`
      def put_binder(x0 : String, x1 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? x1.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "putBinder", "(Ljava/lang/String;Landroid/os/IBinder;)V")
          ret = env.callVoidMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def get_byte(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getByte", "(Ljava/lang/String;)B")
          ret = env.callByteMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_byte(x0 : String, x1 : JByte)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.b = x1
          method_id = env.getMethodID(jclass, "getByte", "(Ljava/lang/String;B)Ljava/lang/Byte;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_char(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getChar", "(Ljava/lang/String;)C")
          ret = env.callCharMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_char(x0 : String, x1 : JChar)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.c = x1
          method_id = env.getMethodID(jclass, "getChar", "(Ljava/lang/String;C)C")
          ret = env.callCharMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def get_short(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getShort", "(Ljava/lang/String;)S")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JShort.new(ret)
        end
      end

      def get_short(x0 : String, x1 : JShort)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.s = x1
          method_id = env.getMethodID(jclass, "getShort", "(Ljava/lang/String;S)S")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          JShort.new(ret)
        end
      end

      def get_float(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getFloat", "(Ljava/lang/String;)F")
          ret = env.callFloatMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          ret
        end
      end

      def get_float(x0 : String, x1 : JFloat)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.f = x1
          method_id = env.getMethodID(jclass, "getFloat", "(Ljava/lang/String;F)F")
          ret = env.callFloatMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          ret
        end
      end

      def get_char_sequence(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getCharSequence", "(Ljava/lang/String;)Ljava/lang/CharSequence;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JNI.to_string(ret)
        end
      end

      def get_char_sequence(x0 : String, x1 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          arg1 = LibJNI::JValue.new; arg1.l = x1 ? env.newStringUTF(x1.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getCharSequence", "(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0, arg1].to_unsafe)
          JNI.to_string(ret)
        end
      end

      def get_size(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getSize", "(Ljava/lang/String;)Landroid/util/Size;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_size_f(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getSizeF", "(Ljava/lang/String;)Landroid/util/SizeF;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_bundle(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getBundle", "(Ljava/lang/String;)Landroid/os/Bundle;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          Android::Os::Bundle.new(ret)
        end
      end

      def get_parcelable(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getParcelable", "(Ljava/lang/String;)Landroid/os/Parcelable;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_parcelable_array(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getParcelableArray", "(Ljava/lang/String;)[Landroid/os/Parcelable;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          Array(JObject).new(ret)
        end
      end

      def get_parcelable_array_list(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getParcelableArrayList", "(Ljava/lang/String;)Ljava/util/ArrayList;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_sparse_parcelable_array(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getSparseParcelableArray", "(Ljava/lang/String;)Landroid/util/SparseArray;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_serializable(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getSerializable", "(Ljava/lang/String;)Ljava/io/Serializable;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_integer_array_list(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getIntegerArrayList", "(Ljava/lang/String;)Ljava/util/ArrayList;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_string_array_list(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getStringArrayList", "(Ljava/lang/String;)Ljava/util/ArrayList;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_char_sequence_array_list(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getCharSequenceArrayList", "(Ljava/lang/String;)Ljava/util/ArrayList;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
        end
      end

      def get_byte_array(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getByteArray", "(Ljava/lang/String;)[B")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          Array(JByte).new(ret)
        end
      end

      def get_short_array(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getShortArray", "(Ljava/lang/String;)[S")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          Array(JShort).new(ret)
        end
      end

      def get_char_array(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getCharArray", "(Ljava/lang/String;)[C")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          Array(JChar).new(ret)
        end
      end

      def get_float_array(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getFloatArray", "(Ljava/lang/String;)[F")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          Array(JFloat).new(ret)
        end
      end

      def get_char_sequence_array(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getCharSequenceArray", "(Ljava/lang/String;)[Ljava/lang/CharSequence;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          Array(String).new(ret)
        end
      end

      def get_binder(x0 : String)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? env.newStringUTF(x0.to_unsafe) : NULL
          method_id = env.getMethodID(jclass, "getBinder", "(Ljava/lang/String;)Landroid/os/IBinder;")
          ret = env.callObjectMethodA(this, method_id, StaticArray[arg0].to_unsafe)
          JObject.new(ret)
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

      # NOTE: *x0* is actually a `android.os.Parcel`
      def read_from_parcel(x0 : JObject)
        JNI.lock do |env|
          jclass = env.getObjectClass(this)
          arg0 = LibJNI::JValue.new; arg0.l = x0 ? x0.to_unsafe : NULL
          method_id = env.getMethodID(jclass, "readFromParcel", "(Landroid/os/Parcel;)V")
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
    end
  end
end
