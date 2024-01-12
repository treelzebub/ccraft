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

function save_table(table, filename)
  file = fs.open(filename, "w")
  file.write(textutils.serialize(table))
  file.close()
end

function load_table(filename)
  file = fs.open(filename, "r")
  table = textutils.unserialize(file.readAll())
  file.close()
  return table
end