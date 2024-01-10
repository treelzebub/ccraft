require "files"
require "tables"

local filename = "count.txt"
local from_disk = get_lines(filename)

local printer = peripherals.find("printer")
local monitor = peripherals.find("monitor")
local chest = peripherals.find("minecraft:chest")

local table = {
  ["minecraft:coal_ore"] = "Coal";
  ["minecraft:iron_ore"] = "Iron";
  ["minecraft:gold_ore"] = "Gold";
  ["minecraft:copper_ore"] = "Copper";
  ["minecraft:redstone_ore"] = "Redstore";
  ["modern_industrialization:lignite_coal_ore"] = "Lignite Coal";
  ["modern_industrialization:tin_ore"] = "Tin";
  ["techreborn:silver_ore"] = "Silver";
  ["create:zinc_ore"] = "Zinc";
}

local function add(item)
  monitor.write(table[item.name] .. ": " .. item.count)
end

monitor.setCursorPos(1,1)

for slot, item in pairs(chest.items())
  local table = chest.items()
  if has_key(table, item.name) then
    add(item)
  else
    printer.write("Add to table: " .. item.name)
  end
end
