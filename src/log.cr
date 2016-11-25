require "./lib_log"

module Android
  def self.logger
    Logger.new("crystal_app")
  end

  class Logger
    alias Priority = LibLog::Priority

    property tag

    def initialize(@tag : String)
    end

    {% for prio in Priority.constants %}
      def {{prio.downcase.id}}(text) : Nil
        LibLog.__android_log_write(Priority::{{prio.id}}, tag, text)
      end

      def {{prio.downcase.id}}(fmt, *args) : Nil
        LibLog.__android_log_print(Priority::{{prio.id}}, tag, fmt, *args)
      end
    {% end %}

    # Log an assertion failure and SIGTRAP the process to have a change to
    # inspect it, if a debugger is attached. This uses the FATAL priority.
    def assert(cond, fmt, *args)
      LibLog.__android_log_assert(cond, tag, fmt, *args)
    end
  end
end
