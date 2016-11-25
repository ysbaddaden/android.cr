require "./lib_android/input"
require "./lib_android/keycodes"

module Android
  abstract class InputEvent
    protected def self.from(event : LibAndroid::InputEvent*)
      case LibAndroid.inputEvent_getType(event)
      when LibAndroid::INPUT_EVENT_TYPE::KEY
        KeyboardEvent.new(event)
      when LibAndroid::INPUT_EVENT_TYPE::MOTION
        MotionEvent.new(event)
      end
    end

    protected def initialize(@event : LibAndroid::InputEvent*)
    end

    def type
      LibAndroid.inputEvent_getType(self)
    end

    def device_id
      LibAndroid.inputEvent_getDeviceId(self)
    end

    def source
      LibAndroid.inputEvent_getSource(self)
    end

    def to_unsafe
      @event
    end
  end

  class KeyboardEvent < InputEvent
    alias Action = LibAndroid::KEY_EVENT_ACTION
    alias Flags = LibAndroid::KEY_EVENT_FLAG
    #alias Type = LibAndroid::INPUT_KEYBOARD_TYPE

    def action
      LibAndroid.keyEvent_getAction(self)
    end

    def flags
      LibAndroid.keyEvent_getFlags(self)
    end

    def key_code
      LibAndroid.keyEvent_getKeyCode(self)
    end

    def scan_code
      LibAndroid.keyEvent_getScanCode(self)
    end

    def meta_state
      LibAndroid.keyEvent_getMetaState(self)
    end

    def repeat_count
      LibAndroid.keyEvent_getRepeatCount(self)
    end

    def down_time
      LibAndroid.keyEvent_getDownTime(self)
    end

    def event_time
      LibAndroid.keyEvent_getEventTime(self)
    end

    def inspect(io)
      io << "#<" << self.class.name << ":0x" << object_id.to_s(16)
      io << " @action=#{action}"
      io << " @flags=#{flags}"
      io << " @key_code=#{key_code}"
      io << " @scan_code=#{scan_code}"
      io << " @meta_state=#{meta_state}"
      io << " @repeat_count=#{repeat_count}"
      io << " ...>"
    end
  end

  class MotionEvent < InputEvent
    alias Action = LibAndroid::MOTION_EVENT_ACTION
    alias Flags = LibAndroid::MOTION_EVENT_FLAG
    alias EdgeFlags = LibAndroid::MOTION_EVENT_EDGE_FLAG
    alias Axis = LibAndroid::MOTION_EVENT_AXIS
    alias Button = LibAndroid::MOTION_EVENT_BUTTON
    alias ToolType = LibAndroid::MOTION_EVENT_TOOL_TYPE

    def action
      value = LibAndroid.motionEvent_getAction(self)
      Action.new(value & 0x00ff)
    end

    # In case of a non primary pointer even (i.e., `POINTER_UP` and
    # `POINTER_DOWN`), returns the finger index for the event.
    def pointer_index
      LibAndroid.motionEvent_getAction(self) >> LibAndroid::MOTION_EVENT_ACTION_POINTER_INDEX_SHIFT
    end

    def flags
      LibAndroid.motionEvent_getFlags(self)
    end

    def meta_state
      LibAndroid.motionEvent_getMetaState(self)
    end

    def button_state
      LibAndroid.motionEvent_getButtonState(self)
    end

    def edge
      LibAndroid.motionEvent_getEdgeFlags(self)
    end

    def down_time
      LibAndroid.motionEvent_getDownTime(self)
    end

    def event_time
      LibAndroid.motionEvent_getEventTime(self)
    end

    def x_offset
      LibAndroid.motionEvent_getXOffset(self)
    end

    def y_offset
      LibAndroid.motionEvent_getYOffset(self)
    end

    def x_precision
      LibAndroid.motionEvent_getXPrecision(self)
    end

    def y_precision
      LibAndroid.motionEvent_getYPrecision(self)
    end

    def pointer_count
      LibAndroid.motionEvent_getPointerCount(self).to_i
    end

    def pointer_id(pointer = pointer_index)
      LibAndroid.motionEvent_getPointerId(self, pointer)
    end

    def tool_type(pointer = pointer_index)
      LibAndroid.motionEvent_getToolType(self, pointer)
    end

    def raw_x(pointer = pointer_index)
      LibAndroid.motionEvent_getRawX(self, pointer)
    end

    def raw_y(pointer = pointer_index)
      LibAndroid.motionEvent_getRawY(self, pointer)
    end

    def x(pointer = pointer_index)
      LibAndroid.motionEvent_getX(self, pointer)
    end

    def y(pointer = pointer_index)
      LibAndroid.motionEvent_getY(self, pointer)
    end

    def pressure(pointer = pointer_index)
      LibAndroid.motionEvent_getPressure(self, pointer)
    end

    def size(pointer = pointer_index)
      LibAndroid.motionEvent_getSize(self, pointer)
    end

    def touch_major(pointer = pointer_index)
      LibAndroid.motionEvent_getTouchMajor(self, pointer)
    end

    def touch_minor(pointer = pointer_index)
      LibAndroid.motionEvent_getTouchMinor(self, pointer)
    end

    def tool_major(pointer = pointer_index)
      LibAndroid.motionEvent_getToolMajor(self, pointer)
    end

    def tool_minor(pointer = pointer_index)
      LibAndroid.motionEvent_getToolMinor(self, pointer)
    end

    def orientation(pointer = pointer_index)
      LibAndroid.motionEvent_getOrientation(self, pointer)
    end

    def axis_value(axis : Axis, pointer = pointer_index)
      LibAndroid.motionEvent_getAxisValue(self, axis, pointer)
    end

    def history_size(history)
      LibAndroid.motionEvent_getHistorySize(self, history)
    end

    def historical_event_time(history)
      LibAndroid.motionEvent_getHistoricalEventTime(self, history)
    end

    def historical_raw_x(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalRawX(self, pointer, history)
    end

    def historical_raw_y(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalRawY(self, pointer, history)
    end

    def historical_x(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalX(self, pointer, history)
    end

    def historical_y(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalY(self, pointer, history)
    end

    def historical_pressure(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalPressure(self, pointer, history)
    end

    def historical_size(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalSize(self, pointer, history)
    end

    def historical_touch_major(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalTouchMajor(self, pointer, history)
    end

    def historical_touch_minor(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalTouchMinor(self, pointer, history)
    end

    def historical_tool_major(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalToolMajor(self, pointer, history)
    end

    def historical_tool_minor(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalToolMinor(self, pointer, history)
    end

    def historical_orientation(history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalOrientation(self, pointer, history)
    end

    def historical_axis_value(axis : Axis, history, pointer = pointer_index)
      LibAndroid.motionEvent_getHistoricalAxisValue(self, axis, pointer, history)
    end

    def inspect(io)
      io << "#<" << self.class.name << ":0x" << object_id.to_s(16)
      io << " action=#{action}"
      io << " flags=#{flags}"
      io << " edge=#{edge}"
      io << " pointer_index=#{pointer_index}"
      io << " pointer_count=#{pointer_count}"
      io << " pointers=["
      pointer_count.times do |pointer|
        io << " " unless pointer == 0
        io << "#{x(pointer)},#{y(pointer)}"
      end
      io << "] ...>"
    end
  end
end
