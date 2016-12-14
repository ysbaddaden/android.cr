require "../../../src/jni/onload"

fun helloJni_stringFromJNI = Java_com_example_hellojni_HelloJni_stringFromJNI(env : JNI::Env, this : JNI::JClass) : JNI::JString
  env.value.functions.value.newStringUTF.call(env, "Hello from JNI !".to_unsafe)
end
