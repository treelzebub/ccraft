require "files"
require "tables"
require "display"

printer = peripheral.wrap("bottom")
monitor = peripheral.find("monitor")
chest = peripheral.find("minecraft:chest")

ore_names = load_table("ore_names")
ore_counts = load_table("ore_counts")

function add_ore(ore_id, count)
  current = ore_counts[ore_id] or 0
  ore_counts = current + count
end

function 

--

init_display(monitor, 0.5)

printer.newPage()
for slot, item in pairs(chest.list()) do
  if has_key(ore_names, item.name) then
    monitor.write(ore_names[item.name] .. ": " .. item.count)
  else
    printer.write("Add to table: " .. item.name)
  end
end
printer.endPage()
