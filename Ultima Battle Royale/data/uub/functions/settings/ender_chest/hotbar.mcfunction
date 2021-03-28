function uub:settings/ender_chest/clear
scoreboard players operation @s menu = #hotbar_menu menu

clear @s golden_apple
clear @s structure_void
clear @s #uub:map_icons

function uub:data/ender_chest/icons/all

data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot: 15b}]
data modify block 0 0 0 Items[0].tag.display.Lore append value '{"text": "Map coming soon!", "color": "gray"}'
##loot replace entity @s enderchest.15 1 mine 0 0 0

replaceitem entity @s enderchest.13 structure_void{display:{Name:'{"text": "Back","color": "dark_aqua","bold": true,"italic": false}'}}
