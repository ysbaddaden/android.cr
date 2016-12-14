require "./android/app/activity"
require "./android/os/handler"

module App
  def self.main_running?
    !!@@main_running
  end

  def self.main_running!
    @@main_running = true
  end

  def self.activity
    @@activity || raise "FATAL: App.activity was never set!"
  end

  def self.activity?
    @@activity
  end

  def self.activity=(activity)
    @@activity = Android::App::Activity.new(activity)
  end

  def self.handler
    @@handler || raise "FATAL: App.handler was never set!"
  end

  def self.handler?
    @@handler
  end

  def self.handler=(handler)
    @@handler = Android::Os::Handler.new(handler)
  end
end
