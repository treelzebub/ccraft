local function fetch(filename)
  local path = "https://www.treelzebub.net/minecraft/ccraft/"
  shell.run("rm " .. filename)
  shell.run("wget " .. path .. filename)
end

shell.run("count_chest_items")