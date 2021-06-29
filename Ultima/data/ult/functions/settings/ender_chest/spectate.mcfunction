function ult:settings/ender_chest/clear
scoreboard players operation @s menu = menu.spectator const

clear @s ender_eye
clear @s red_bed
clear @s skeleton_skull
clear @s dragon_egg
clear @s gray_stained_glass_pane
clear @s blue_stained_glass_pane
clear @s crafting_table

item replace entity @s enderchest.0 with structure_void{display: {Name: '{"text": "Save and Exit", "color": "dark_aqua", "bold": true, "italic": false}'}}

item replace entity @s enderchest.2 with dragon_egg{display: {Name: '{"text": "Joining World", "bold": true, "italic": false, "color": "white"}'}}
item replace entity @s enderchest.4 with skeleton_skull{display: {Name: '{"text": "Death", "bold": true, "italic": false, "color": "white"}'}}
item replace entity @s enderchest.6 with red_bed{display: {Name: '{"text": "Opting Out", "bold": true, "italic": false, "color": "white"}'}}
item replace entity @s enderchest.8 with diamond_sword{display: {Name: '{"text": "Game Start", "bold": true, "italic": false, "color": "white"}'}, HideFlags: 63}

item replace entity @s enderchest.9 with ender_eye{display: {Name: '{"text": "Spectate Current Game", "bold": true, "italic": false, "color": "white"}', Lore: ['{"text": "Use the panels to the right!", "color": "gray"}']}}
item replace entity @s enderchest.18 with crafting_table{display: {Name: '{"text": "Go to Lobby", "bold": true, "italic": false, "color": "white"}', Lore: ['{"text": "Use the panels to the right!", "color": "gray"}']}}

item replace entity @s enderchest.11 with gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
item replace entity @s enderchest.17 with gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
item replace entity @s enderchest.26 with gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}

execute unless score @s y.spect_death matches 1.. run scoreboard players set @s y.spect_death 1
execute unless score @s y.spect_lobby matches 1.. run scoreboard players set @s y.spect_lobby 1
execute unless score @s y.spect_opt matches 1.. run scoreboard players set @s y.spect_opt 1
execute unless score @s y.spect_game matches 1.. run scoreboard players set @s y.spect_game 1

execute if score @s y.spect_death matches 1 run item replace entity @s enderchest.13 with blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_death matches 2 run item replace entity @s enderchest.22 with blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_lobby matches 1 run item replace entity @s enderchest.11 with blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_lobby matches 2 run item replace entity @s enderchest.20 with blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_opt matches 1 run item replace entity @s enderchest.15 with blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_opt matches 2 run item replace entity @s enderchest.24 with blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_game matches 1 run item replace entity @s enderchest.17 with blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_game matches 2 run item replace entity @s enderchest.26 with blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
