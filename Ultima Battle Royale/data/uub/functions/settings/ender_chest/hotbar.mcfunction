function uub:settings/ender_chest/clear
scoreboard players operation @s menu = #hotbar_menu menu
scoreboard players set @s hotbar_map 0

clear @s golden_apple
clear @s structure_void
clear @s #uub:map_icons

function uub:data/ender_chest/icons/all

data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot: 16b}]
data modify block 0 0 0 Items[0].Slot set value 0b
data modify block 0 0 0 Items[0].tag.display.Lore append value '{"text": "Map coming soon...", "color": "gray"}'
loot replace entity @s enderchest.16 1 mine 0 0 0

data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot: 17b}]
data modify block 0 0 0 Items[0].Slot set value 0b
data modify block 0 0 0 Items[0].tag.display.Lore append value '{"text": "Map coming soon...", "color": "gray"}'
loot replace entity @s enderchest.17 1 mine 0 0 0

data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot: 23b}]
data modify block 0 0 0 Items[0].Slot set value 0b
data modify block 0 0 0 Items[0].tag.display.Lore append value '{"text": "Map coming soon...", "color": "gray"}'
loot replace entity @s enderchest.23 1 mine 0 0 0

data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot: 24b}]
data modify block 0 0 0 Items[0].Slot set value 0b
data modify block 0 0 0 Items[0].tag.display.Lore append value '{"text": "Map coming soon...", "color": "gray"}'
loot replace entity @s enderchest.24 1 mine 0 0 0

data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot: 25b}]
data modify block 0 0 0 Items[0].Slot set value 0b
data modify block 0 0 0 Items[0].tag.display.Lore append value '{"text": "Map coming soon...", "color": "gray"}'
loot replace entity @s enderchest.25 1 mine 0 0 0

data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot: 26b}]
data modify block 0 0 0 Items[0].Slot set value 0b
data modify block 0 0 0 Items[0].tag.display.Lore append value '{"text": "Map coming soon...", "color": "gray"}'
loot replace entity @s enderchest.26 1 mine 0 0 0

replaceitem entity @s enderchest.13 structure_void{display:{Name:'{"text": "Back","color": "dark_aqua","bold": true,"italic": false}'}}
