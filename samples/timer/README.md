# timer

An original sample that creates an Activity using Java, that is responsible to
handle the View (UI widgets) and start the Crystal application, which will run
in its own thread, then communicate using an `android.os.Handler` that Crystal
will use to tell the Java Activity what and when to update its UI widgets, which
will be done by the Java Activity, running in the main thread.

This sample allows to have a native user interface, specific to Android, but
using a portable Crystal 'backend'.

The JNI bindings that can be found in `src/android` were automatically generated
using the `java` project, which wraps verbose and complex JNI calls into a
Crystal API that matches the Java API.
