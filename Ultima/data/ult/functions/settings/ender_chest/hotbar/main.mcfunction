function ult:settings/ender_chest/clear
scoreboard players operation @s menu = menu.hotbar_main const
scoreboard players set @s hotbar_map 0

clear @s golden_apple
clear @s structure_void
clear @s emerald
clear @s #ult:map_icons

function ult:data/ender_chest/icons/all

replaceitem entity @s enderchest.13 structure_void{display: {Name:'{"text": "Back", "color": "dark_aqua", "bold": true, "italic": false}'}}
