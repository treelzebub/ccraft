function init_display(monitor, text_scale)
  monitor.setTextScale(text_scale)
  monitor.clear()
  monitor.setCursorPos(1,1)
end

function newline(monitor)
  x, y = monitor.getCursorPos()
  monitor.setCursorPos(1, y + 1)
end

function center(monitor, text)
  size_x, size_y = monitor.getSize()
  pos_x, pos_y = monitor.getCursorPos()
  monitor.setCursorPos(math.floor((x - #text) / 2), pos_y)
  monitor.write(text)
end
