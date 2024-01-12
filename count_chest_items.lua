require "files"
require "tables"

local filename = "count.txt"
local from_disk = io.read(filename)

local printer = peripheral.wrap("bottom")
local monitor = peripheral.find("monitor")
local chest = peripheral.find("minecraft:chest")

local ore_names = {
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
  print(ore_names[item.name] .. ": " .. item.count)
end




monitor.setTextScale(0.5)
term.redirect(monitor)
term.clear()
term.setCursorPos(1,1)

printer.newPage()
for slot, item in pairs(chest.list()) do
  if has_key(ore_names, item.name) then
    add(item)
  else
    printer.write("Add to table: " .. item.name)
  end
end
printer.endPage()
