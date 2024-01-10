function get_lines(filename)
  local file = fs.open(filename, "r")
  if file then
    local lines = io.lines(filename)
    file.close()
    return lines
  else
    print("File does not exist!")
    return {}
  end
end
