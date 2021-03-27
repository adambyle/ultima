function uub:settings/ender_chest/clear
scoreboard players operation @s menu = #spectate menu

clear @s ender_eye
clear @s red_bed
clear @s skeleton_skull
clear @s dragon_egg
clear @s gray_stained_glass_pane
clear @s blue_stained_glass_pane
clear @s crafting_table

replaceitem entity @s enderchest.0 structure_void{display:{Name:'{"text": "Save and Exit","color": "dark_aqua","bold": true,"italic": false}'}}

replaceitem entity @s enderchest.2 dragon_egg{display: {Name: '{"text": "Joining World", "bold": true, "italic": false, "color": "white"}'}}
replaceitem entity @s enderchest.4 skeleton_skull{display: {Name: '{"text": "Death", "bold": true, "italic": false, "color": "white"}'}}
replaceitem entity @s enderchest.6 red_bed{display: {Name: '{"text": "Opting Out", "bold": true, "italic": false, "color": "white"}'}}

replaceitem entity @s enderchest.9 ender_eye{display: {Name: '{"text": "Spectate Current Game", "bold": true, "italic": false, "color": "white"}', Lore: ['{"text": "Use the panels to the right!", "color": "gray"}']}}
replaceitem entity @s enderchest.18 crafting_table{display: {Name: '{"text": "Go to Lobby", "bold": true, "italic": false, "color": "white"}', Lore: ['{"text": "Use the panels to the right!", "color": "gray"}']}}

replaceitem entity @s enderchest.11 gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
replaceitem entity @s enderchest.20 gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
replaceitem entity @s enderchest.13 gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
replaceitem entity @s enderchest.22 gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
replaceitem entity @s enderchest.15 gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}
replaceitem entity @s enderchest.24 gray_stained_glass_pane{display: {Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}', Lore: ['{"text": "Click to enable", "color": "gray"}']}}

execute unless score @s y.spect_death matches 1.. run scoreboard players set @s y.spect_death 1
execute unless score @s y.spect_lobby matches 1.. run scoreboard players set @s y.spect_lobby 1
execute unless score @s y.spect_opt matches 1.. run scoreboard players set @s y.spect_opt 1

execute if score @s y.spect_death matches 1 run replaceitem entity @s enderchest.13 blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_death matches 2 run replaceitem entity @s enderchest.22 blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_lobby matches 1 run replaceitem entity @s enderchest.11 blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_lobby matches 2 run replaceitem entity @s enderchest.20 blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_opt matches 1 run replaceitem entity @s enderchest.15 blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
execute if score @s y.spect_opt matches 2 run replaceitem entity @s enderchest.24 blue_stained_glass_pane{display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
