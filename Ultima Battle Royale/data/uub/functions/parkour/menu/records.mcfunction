execute unless score @s menu = #parkour.records menu run function uub:settings/ender_chest/clear
scoreboard players operation @s menu = #parkour.records menu

function uub:data/player/get_nbt

clear @s[gamemode=!creative] writable_book

replaceitem entity @s enderchest.11 structure_void{display:{Name:'{"text": "Back","color": "dark_aqua","bold": true,"italic": false}'}}

data modify storage uub:temp GlobalData set from storage uub:players Global.Parkour.manor
data modify storage uub:temp PlayerData set from storage uub:temp Player.Parkour.manor
function uub:parkour/menu/records/data
data modify block 0 0 0 Items[0].id set value "minecraft:dark_oak_planks"
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text": "Manor", "italic": false, "bold": true, "color": "red"}'
loot replace entity @s enderchest.5 1 mine 0 0 0

data modify storage uub:temp GlobalData set from storage uub:players Global.Parkour.woodlands
data modify storage uub:temp PlayerData set from storage uub:temp Player.Parkour.woodlands
function uub:parkour/menu/records/data
data modify block 0 0 0 Items[0].id set value "minecraft:spruce_leaves"
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text": "Woodlands", "italic": false, "bold": true, "color": "red"}'
loot replace entity @s enderchest.6 1 mine 0 0 0
