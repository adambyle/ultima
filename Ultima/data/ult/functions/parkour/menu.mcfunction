execute unless score @s menu = menu.parkour const run function ult:settings/ender_chest/clear
scoreboard players operation @s menu = menu.parkour const

clear @s[gamemode=!creative] structure_void
clear @s[gamemode=!creative] writable_book
clear @s[gamemode=!creative] filled_map

replaceitem entity @s enderchest.10 structure_void{display: {Name: '{"text": "Exit Parkour", "color": "dark_red", "bold": true, "italic": false}'}}
replaceitem entity @s enderchest.13 writable_book{display: {Name: '{"text": "Records", "color": "#7A3200", "bold": true, "italic": false}', Lore: ['[{"text": "Check your best times for each course. ", "color": "gray"}]']}}
replaceitem entity @s enderchest.16 filled_map{display: {Name: '{"text": "Choose Map", "color": "white", "bold": true, "italic": false}', Lore: ['[{"text": "Select your course.", "color": "gray"}]']}, HideFlags: 63}
