local function fetch(filename)
  local path = "https://www.treelzebub.net/minecraft/ccraft/"
  shell.run("rm " .. filename)
  shell.run("wget " .. path .. filename)
end

fetch("files.lua")
fetch("tables.lua")
fetch("count_chest_items.lua")

shell.run("count_chest_items")