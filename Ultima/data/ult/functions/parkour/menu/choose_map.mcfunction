execute unless score @s menu = #parkour.map menu run function ult:settings/ender_chest/clear
scoreboard players operation @s menu = #parkour.map menu

function ult:data/player/get_nbt

clear @s[gamemode=!creative] filled_map

item replace entity @s enderchest.11 with structure_void{display: {Name:'{"text": "Back", "color": "dark_aqua", "bold": true, "italic": false}'}}

loot replace entity @s enderchest.5 loot ult:map_icon/manor
loot replace entity @s enderchest.6 loot ult:map_icon/woodlands
