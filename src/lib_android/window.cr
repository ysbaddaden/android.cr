lib LibAndroid
  enum WINDOW_FLAG : UInt32
    ALLOW_LOCK_WHILE_SCREEN_ON = 0x00000001
    DIM_BEHIND                 = 0x00000002
    BLUR_BEHIND                = 0x00000004
    NOT_FOCUSABLE              = 0x00000008
    NOT_TOUCHABLE              = 0x00000010
    NOT_TOUCH_MODAL            = 0x00000020
    TOUCHABLE_WHEN_WAKING      = 0x00000040
    KEEP_SCREEN_ON             = 0x00000080
    LAYOUT_IN_SCREEN           = 0x00000100
    LAYOUT_NO_LIMITS           = 0x00000200
    FULLSCREEN                 = 0x00000400
    FORCE_NOT_FULLSCREEN       = 0x00000800
    DITHER                     = 0x00001000
    SECURE                     = 0x00002000
    SCALED                     = 0x00004000
    IGNORE_CHEEK_PRESSES       = 0x00008000
    LAYOUT_INSET_DECOR         = 0x00010000
    ALT_FOCUSABLE_IM           = 0x00020000
    WATCH_OUTSIDE_TOUCH        = 0x00040000
    SHOW_WHEN_LOCKED           = 0x00080000
    SHOW_WALLPAPER             = 0x00100000
    TURN_SCREEN_ON             = 0x00200000
    DISMISS_KEYGUARD           = 0x00400000
  end
end
