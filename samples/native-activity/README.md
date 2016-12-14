# native-activity

In progress adaptation of the official `native-activity` sample from the Android
NDK. More work is required to initialize the EGL context (i.e., port C code from
the official sample).

This is an interesting sample to initiate an ANativeActivity that don't need any
Java; an OpenGL game for example, or an application using C widgets, or more
likely C bindings to a C++ library (e.g., QT).
