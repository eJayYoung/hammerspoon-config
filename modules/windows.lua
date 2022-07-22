-- 使用【Option + Q】在不同屏幕之间移动鼠标
hs.hotkey.bind({'option'}, 'Q', function()
  local screen = hs.mouse.getCurrentScreen()
  local nextScreen = screen:next()
  local rect = nextScreen:fullFrame()
  local center = hs.geometry.rectMidPoint(rect)
  hs.mouse.absolutePosition(center)
end)

-- 使用【Option + W】在不同屏幕之间移动窗口
hs.hotkey.bind({'option'}, 'W', function()
  -- get the focused window
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)
