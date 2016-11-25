require "./lib_android/looper"
require "./input_event"

module Android
  def self.looper
    @@looper = Looper.new
  end

  def self.on_input(event)
    0
  end

  class Looper
    alias EVENT = LibAndroid::LOOPER_EVENT

    enum ID
      MAIN = 1
      INPUT = 2
      USER = 3
    end

    @input_cb : LibAndroid::Looper_callbackFunc
    @read : IO::FileDescriptor
    @write : IO::FileDescriptor

    def initialize
      @looper = LibAndroid.looper_prepare(LibAndroid::LOOPER_PREPARE::ALLOW_NON_CALLBACKS)

      # OPTIMIZE: use pollOnce / pollAll instead of callbacks?

      @input_cb = ->(fd : LibC::Int, events : LibC::Int, data : Void*) {
        queue = Box(LibAndroid::InputQueue*).unbox(data)

        while LibAndroid.inputQueue_getEvent(queue, out event) >= 0
          #Android.logger.verbose "New input event: type=#{LibAndroid.inputEvent_getType(event)}"

          if LibAndroid.inputQueue_preDispatchEvent(queue, event) == 0
            handled = 0
            if _event = InputEvent.from(event)
              handled = Android.on_input(_event)
            end
            LibAndroid.inputQueue_finishEvent(queue, event, handled)
          end
        end

        1 # keep calling the callback
      }

      # FIXME: do we need the file descriptors?
      @read, @write = IO.pipe
      LibAndroid.looper_addFd(self, @read.fd, ID::MAIN, EVENT::INPUT, nil, nil)
    end

    protected def attach(queue : LibAndroid::InputQueue*)
      acquire do
        if current_queue = @queue
          LibAndroid.inputQueue_detachLooper(current_queue)
        end
        LibAndroid.inputQueue_attachLooper(queue, self, ID::INPUT, @input_cb, Box.box(queue))
        @queue = queue
      end
    end

    protected def detach(queue : LibAndroid::InputQueue*)
      acquire do
        LibAndroid.inputQueue_detachLooper(queue)
        @queue = nil
      end
    end

    def acquire
      LibAndroid.looper_acquire(self)
      begin
        yield
      ensure
        LibAndroid.looper_release(self)
      end
    end

    def callback
      @callback
    end

    def to_unsafe
      @looper
    end
  end
end
