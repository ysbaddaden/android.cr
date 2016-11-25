module Android
  class NativeActivity
    abstract struct Command
      getter type : Symbol

      def initialize(@type)
      end

      struct State < Command
      end

      struct Focus < Command
        getter focus

        def initialize(@type, @focus : Bool)
        end
      end

      #struct SaveInstanceState < Command
      #  getter size

      #  def initialize(@type, @size : LibC::SizeT)
      #  end
      #end

      struct Window < Command
        getter queue

        def initialize(@type, @window : NativeWindow)
        end
      end

      #struct InputQueue < Command
      #  getter queue

      #  def initialize(@type, @queue : ::Android::InputQueue)
      #  end
      #end

      struct ContentRect < Command
        getter rect

        def initialize(@type, @rect : LibAndroid::Rect)
        end
      end
    end
  end
end
