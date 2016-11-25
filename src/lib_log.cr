@[Link("log")]
lib LibLog
  alias Int = LibC::Int
  alias Char = LibC::Char

  enum Priority
    UNKNOWN = 0
    DEFAULT
    VERBOSE
    DEBUG
    INFO
    WARN
    ERROR
    FATAL
    SILENT
  end

  fun __android_log_write(prio : Priority, tag : Char*, text : Char*) : Int
  fun __android_log_print(prio : Priority, tag : Char*, fmt : Char*, ...) : Int
  #fun __android_log_vprint(prio : Priority, tag : Char*, fmt : Char*, ap : VaList) : Int
  fun __android_log_assert(cond : Char*, tag : Char*, fmt : Char*, ...)
end
