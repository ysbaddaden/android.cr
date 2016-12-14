# hello-jni

Adaptation of the official `hello-jni` sample from the Android NDK.

This isn't a very interesting example by itself, since it means running Crystal
functions that will block the main thread, and these functions can't start any
fiber, since returning from the function would mean leaving a Crystal context,
thus blocking the whole event loop.

The example is still interesting to start working on a Java to Crystal
communication, with Crystal main running in its own thread for example, and
using a thread-safe queue to communicate.
