lib LibAndroid
  type Looper = Void

  fun looper_forThread = ALooper_forThread()

  enum LOOPER_PREPARE
    ALLOW_NON_CALLBACKS = 1 << 0
  end

  fun looper_prepare = ALooper_prepare(opts : Int) : Looper*

  enum LOOPER_POLL
    WAKE = -1
    CALLBACK = -2
    TIMEOUT = -3
    ERROR = -4
  end

  fun looper_acquire = ALooper_acquire(looper : Looper*)
  fun looper_release = ALooper_release(looper : Looper*)

  enum LOOPER_EVENT
    INPUT = 1 << 0
    OUTPUT = 1 << 1
    ERROR = 1 << 2
    HANGUP = 1 << 3
    INVALID = 1 << 4
  end

  # (fd, events, data) ->
  alias Looper_callbackFunc = (Int, Int, Void*) -> Int

  fun looper_pollOnce = ALooper_pollOnce(timeoutMillis : Int, outFd : Int*, outEvents : Int*, outData : Void**) : Int
  fun looper_pollAll = ALooper_pollAll(timeoutMillis : Int, outFd : Int*, outEvents : Int*, outData : Void**) : Int
  fun looper_wake = ALooper_wake(looper : Looper*)
  fun looper_addFd = ALooper_addFd(looper : Looper*, fd : Int, ident : Int, events : Int, callback : Looper_callbackFunc , data : Void*) : Int
  fun looper_removeFd = ALooper_removeFd(looper : Looper*, fd : Int) : Int
end
