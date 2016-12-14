require "./android/os/bundle"
require "./android/os/message"

module App::UI
  def self.set_text(str)
    bundle = Android::Os::Bundle.new
    bundle.put_char_sequence("action", "setText")
    bundle.put_char_sequence("message", str)

    message = Android::Os::Message.new
    message.set_data(bundle)

    #handler = Android::Os::Handler.new(App.handler)
    App.handler.send_message(message)
  end
end

loop do
  break if App.handler?
  Android.logger.verbose "MAIN: waiting for App.handler..."
  sleep 1
end

loop do
  sleep 1

  JNI.lock do |env|
    Android.logger.verbose "LOOP: #{Time.now}"
    App::UI.set_text("Hello from JNI #{Time.now}")
  end
end
