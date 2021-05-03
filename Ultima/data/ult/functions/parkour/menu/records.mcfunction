execute unless score @s menu = #parkour.records menu run function ult:settings/ender_chest/clear
scoreboard players operation @s menu = #parkour.records menu

function ult:data/player/get_nbt

clear @s[gamemode=!creative] writable_book
clear @s[gamemode=!creative] #ult:map_icons

replaceitem entity @s enderchest.11 structure_void{display:{Name:'{"text": "Back","color": "dark_aqua","bold": true,"italic": false}'}}

data modify storage ult:temp GlobalData set from storage ult:players Global.Parkour.manor
data modify storage ult:temp PlayerData set from storage ult:temp Player.Parkour.manor
function ult:parkour/menu/records/data
data modify block 0 0 0 Items[0].id set value "minecraft:dark_oak_planks"
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text": "Manor", "italic": false, "bold": true, "color": "red"}'
loot replace entity @s enderchest.5 1 mine 0 0 0

data modify storage ult:temp GlobalData set from storage ult:players Global.Parkour.woodlands
data modify storage ult:temp PlayerData set from storage ult:temp Player.Parkour.woodlands
function ult:parkour/menu/records/data
data modify block 0 0 0 Items[0].id set value "minecraft:spruce_leaves"
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text": "Woodlands", "italic": false, "bold": true, "color": "red"}'
loot replace entity @s enderchest.6 1 mine 0 0 0
