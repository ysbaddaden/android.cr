require "./keycodes"
require "./looper"

lib LibAndroid
  enum KEY_STATE
    UNKNOWN = -1
    UP = 0
    DOWN = 1
    VIRTUAL = 2
  end

  @[Flags]
  enum META
    NONE = 0
    ALT_ON = 0x02
    ALT_LEFT_ON = 0x10
    ALT_RIGHT_ON = 0x20
    SHIFT_ON = 0x01
    SHIFT_LEFT_ON = 0x40
    SHIFT_RIGHT_ON = 0x80
    SYM_ON = 0x04
    FUNCTION_ON = 0x08
    CTRL_ON = 0x1000
    CTRL_LEFT_ON = 0x2000
    CTRL_RIGHT_ON = 0x4000
    META_ON = 0x10000
    META_LEFT_ON = 0x20000
    META_RIGHT_ON = 0x40000
    CAPS_LOCK_ON = 0x100000
    NUM_LOCK_ON = 0x200000
    SCROLL_LOCK_ON = 0x400000
  end

  type InputEvent = Void

  enum INPUT_EVENT_TYPE
    KEY = 1
    MOTION = 2
  end

  enum KEY_EVENT_ACTION
    DOWN = 0
    UP = 1
    MULTIPLE = 2
  end

  @[Flags]
  enum KEY_EVENT_FLAG
    WOKE_HERE = 0x1
    SOFT_KEYBOARD = 0x2
    KEEP_TOUCH_MODE = 0x4
    FROM_SYSTEM = 0x8
    EDITOR_ACTION = 0x10
    CANCELED = 0x20
    VIRTUAL_HARD_KEY = 0x40
    LONG_PRESS = 0x80
    CANCELED_LONG_PRESS = 0x100
    TRACKING = 0x200
    FALLBACK = 0x400
  end

  MOTION_EVENT_ACTION_MASK = 0xff
  MOTION_POINTER_INDEX_MASK  = 0xff00
  MOTION_EVENT_ACTION_POINTER_INDEX_SHIFT = 8

  enum MOTION_EVENT_ACTION
    DOWN = 0
    UP = 1
    MOVE = 2
    CANCEL = 3
    OUTSIDE = 4
    POINTER_DOWN = 5
    POINTER_UP = 6
    HOVER_MOVE = 7
    SCROLL = 8
    HOVER_ENTER = 9
    HOVER_EXIT = 10
  end

  @[Flags]
  enum MOTION_EVENT_FLAG
    WINDOW_IS_OBSCURED = 0x1
  end

  @[Flags]
  enum MOTION_EVENT_EDGE_FLAG
    NONE = 0
    TOP = 0x01
    BOTTOM = 0x02
    LEFT = 0x04
    RIGHT = 0x08
  end

  enum MOTION_EVENT_AXIS
    X = 0
    Y = 1
    PRESSURE = 2
    SIZE = 3
    TOUCH_MAJOR = 4
    TOUCH_MINOR = 5
    TOOL_MAJOR = 6
    TOOL_MINOR = 7
    ORIENTATION = 8
    VSCROLL = 9
    HSCROLL = 10
    Z = 11
    RX = 12
    RY = 13
    RZ = 14
    HAT_X = 15
    HAT_Y = 16
    LTRIGGER = 17
    RTRIGGER = 18
    THROTTLE = 19
    RUDDER = 20
    WHEEL = 21
    GAS = 22
    BRAKE = 23
    DISTANCE = 24
    TILT = 25
    GENERIC_1 = 32
    GENERIC_2 = 33
    GENERIC_3 = 34
    GENERIC_4 = 35
    GENERIC_5 = 36
    GENERIC_6 = 37
    GENERIC_7 = 38
    GENERIC_8 = 39
    GENERIC_9 = 40
    GENERIC_10 = 41
    GENERIC_11 = 42
    GENERIC_12 = 43
    GENERIC_13 = 44
    GENERIC_14 = 45
    GENERIC_15 = 46
    GENERIC_16 = 47
  end

  enum MOTION_EVENT_BUTTON
    PRIMARY = 1 << 0
    SECONDARY = 1 << 1
    TERTIARY = 1 << 2
    BACK = 1 << 3
    FORWARD = 1 << 4
  end

  enum MOTION_EVENT_TOOL_TYPE
    UNKNOWN = 0
    FINGER = 1
    STYLUS = 2
    MOUSE = 3
    ERASER = 4
  end

  enum INPUT_SOURCE_CLASS
    MASK = 0x000000ff
    NONE = 0x00000000
    BUTTON = 0x00000001
    POINTER = 0x00000002
    NAVIGATION = 0x00000004
    POSITION = 0x00000008
    JOYSTICK = 0x00000010
  end

  enum INPUT_SOURCE : UInt32
    UNKNOWN = 0x00000000

    KEYBOARD         = 0x00000100 | 0x00000001 # INPUT_SOURCE_CLASS::BUTTON
    DPAD             = 0x00000200 | 0x00000001 # INPUT_SOURCE_CLASS::BUTTON
    GAMEPAD          = 0x00000400 | 0x00000001 # INPUT_SOURCE_CLASS::BUTTON
    TOUCHSCREEN      = 0x00001000 | 0x00000002 # INPUT_SOURCE_CLASS::POINTER
    MOUSE            = 0x00002000 | 0x00000002 # INPUT_SOURCE_CLASS::POINTER
    STYLUS           = 0x00004000 | 0x00000002 # INPUT_SOURCE_CLASS::POINTER
    TRACKBALL        = 0x00010000 | 0x00000004 # INPUT_SOURCE_CLASS::NAVIGATION
    TOUCHPAD         = 0x00100000 | 0x00000008 # INPUT_SOURCE_CLASS::POSITION
    TOUCH_NAVIGATION = 0x00200000 | 0x00000000 # INPUT_SOURCE_CLASS::NONE
    JOYSTICK         = 0x01000000 | 0x00000010 # INPUT_SOURCE_CLASS::JOYSTICK

    ANY = 0xffffff00
  end

  enum INPUT_KEYBOARD_TYPE
    NONE = 0
    NON_ALPHABETIC = 1
    ALPHABETIC = 2
  end

  fun inputEvent_getType = AInputEvent_getType(event : InputEvent*) : INPUT_EVENT_TYPE
  fun inputEvent_getDeviceId = AInputEvent_getDeviceId(event : InputEvent*) : Int32
  fun inputEvent_getSource = AInputEvent_getSource(event : InputEvent*) : INPUT_SOURCE

  fun keyEvent_getAction = AKeyEvent_getAction(key_event : InputEvent*) : KEY_EVENT_ACTION
  fun keyEvent_getFlags = AKeyEvent_getFlags(key_event : InputEvent*) : KEY_EVENT_FLAG
  fun keyEvent_getKeyCode = AKeyEvent_getKeyCode(key_event : InputEvent*) : KEYCODE
  fun keyEvent_getScanCode = AKeyEvent_getScanCode(key_event : InputEvent*) : Int32
  fun keyEvent_getMetaState = AKeyEvent_getMetaState(key_event : InputEvent*) : META
  fun keyEvent_getRepeatCount = AKeyEvent_getRepeatCount(key_event : InputEvent*) : Int32
  fun keyEvent_getDownTime = AKeyEvent_getDownTime(key_event : InputEvent*) : Int64
  fun keyEvent_getEventTime = AKeyEvent_getEventTime(key_event : InputEvent*) : Int64

  fun motionEvent_getAction = AMotionEvent_getAction(motion_event : InputEvent*) : Int32
  fun motionEvent_getFlags = AMotionEvent_getFlags(motion_event : InputEvent*) : MOTION_EVENT_FLAG
  fun motionEvent_getMetaState = AMotionEvent_getMetaState(motion_event : InputEvent*) : META
  fun motionEvent_getButtonState = AMotionEvent_getButtonState(motion_event : InputEvent*) : MOTION_EVENT_BUTTON
  fun motionEvent_getEdgeFlags = AMotionEvent_getEdgeFlags(motion_event : InputEvent*) : MOTION_EVENT_EDGE_FLAG
  fun motionEvent_getDownTime = AMotionEvent_getDownTime(motion_event : InputEvent*) : Int64
  fun motionEvent_getEventTime = AMotionEvent_getEventTime(motion_event : InputEvent*) : Int64
  fun motionEvent_getXOffset = AMotionEvent_getXOffset(motion_event : InputEvent*) : Float
  fun motionEvent_getYOffset = AMotionEvent_getYOffset(motion_event : InputEvent*) : Float
  fun motionEvent_getXPrecision = AMotionEvent_getXPrecision(motion_event : InputEvent*) : Float
  fun motionEvent_getYPrecision = AMotionEvent_getYPrecision(motion_event : InputEvent*) : Float
  fun motionEvent_getPointerCount = AMotionEvent_getPointerCount(motion_event : InputEvent*) : SizeT
  fun motionEvent_getPointerId = AMotionEvent_getPointerId(motion_event : InputEvent*, pointer_index : SizeT) : Int32
  fun motionEvent_getToolType = AMotionEvent_getToolType(motion_event : InputEvent*, pointer_index : SizeT) : MOTION_EVENT_TOOL_TYPE
  fun motionEvent_getRawX = AMotionEvent_getRawX(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getRawY = AMotionEvent_getRawY(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getX = AMotionEvent_getX(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getY = AMotionEvent_getY(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getPressure = AMotionEvent_getPressure(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getSize = AMotionEvent_getSize(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getTouchMajor = AMotionEvent_getTouchMajor(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getTouchMinor = AMotionEvent_getTouchMinor(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getToolMajor = AMotionEvent_getToolMajor(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getToolMinor = AMotionEvent_getToolMinor(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getOrientation = AMotionEvent_getOrientation(motion_event : InputEvent*, pointer_index : SizeT) : Float
  fun motionEvent_getAxisValue = AMotionEvent_getAxisValue(motion_event : InputEvent*, axis : Int32, pointer_index : SizeT) : Float
  fun motionEvent_getHistorySize = AMotionEvent_getHistorySize(motion_event : InputEvent*) : SizeT
  fun motionEvent_getHistoricalEventTime =  AMotionEvent_getHistoricalEventTime(motion_event : InputEvent*, history_index : SizeT) : Int64
  fun motionEvent_getHistoricalRawX = AMotionEvent_getHistoricalRawX(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalRawY = AMotionEvent_getHistoricalRawY(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalX = AMotionEvent_getHistoricalX(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalY = AMotionEvent_getHistoricalY(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalPressure = AMotionEvent_getHistoricalPressure(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalSize = AMotionEvent_getHistoricalSize(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalTouchMajor = AMotionEvent_getHistoricalTouchMajor(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalTouchMinor = AMotionEvent_getHistoricalTouchMinor(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalToolMajor = AMotionEvent_getHistoricalToolMajor(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalToolMinor = AMotionEvent_getHistoricalToolMinor(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalOrientation = AMotionEvent_getHistoricalOrientation(motion_event : InputEvent*, pointer_index : SizeT, history_index : SizeT) : Float
  fun motionEvent_getHistoricalAxisValue = AMotionEvent_getHistoricalAxisValue(motion_event : InputEvent*, axis : Int32, pointer_index : SizeT, history_index : SizeT) : Float

  type InputQueue = Void

  fun inputQueue_attachLooper = AInputQueue_attachLooper(queue : InputQueue*, looper : Looper*, ident : Int, callback : Looper_callbackFunc, data : Void*)
  fun inputQueue_detachLooper = AInputQueue_detachLooper(queue : InputQueue*)
  fun inputQueue_hasEvents = AInputQueue_hasEvents(queue : InputQueue*) : Int32
  fun inputQueue_getEvent = AInputQueue_getEvent(queue : InputQueue*,  outEvent : InputEvent**) : Int32
  fun inputQueue_preDispatchEvent = AInputQueue_preDispatchEvent(queue : InputQueue*, event : InputEvent*) : Int32
  fun inputQueue_finishEvent = AInputQueue_finishEvent(queue : InputQueue*, event : InputEvent*, handled : Int)
end
