require "files"
require "tables"

local filename = "count.txt"
local from_disk = get_lines(filename)

local table = {
    ["minecraft:coal_ore"] = "Coal Ore";
    ["minecraft:iron_ore"] = "Iron Ore";
    ["minecraft:gold_ore"] = "Gold Ore";
    ["minecraft:copper_ore"] = "Copper Ore";
    ["minecraft:redstone_ore"] = "Redstore Ore";
    ["modern_industrialization:lignite_coal_ore"] = "Lignite Coal Ore";
    ["modern_industrialization:tin_ore"] = "Tin Ore";
    ["techreborn:silver_ore"] = "Silver Ore";
    ["create:zinc_ore"] = "Zinc Ore";
    [""] = "";
    [""] = "";
    [""] = "";
}

print("Success!")