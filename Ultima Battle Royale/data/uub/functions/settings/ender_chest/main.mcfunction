execute unless score @s menu = #main menu run function uub:settings/ender_chest/clear
scoreboard players operation @s menu = #main menu

execute unless score @s y.ready matches 1.. run scoreboard players set @s y.ready 1
execute unless score @s y.afk matches 1.. run scoreboard players set @s y.afk 2

clear @s red_terracotta
clear @s gray_terracotta

clear @s golden_apple
clear @s emerald

clear @s stone_sword
clear @s golden_sword
clear @s netherite_sword

clear @s player_head
clear @s zombie_head
clear @s skeleton_skull
clear @s wither_skeleton_skull

clear @s structure_void

clear @s #uub:all

replaceitem entity @s[tag=player] enderchest.4 red_terracotta{display:{Name:'{"text": "Opted in","color": "red","italic": false,"bold": true}',Lore:['{"text": "Click to opt out.","color": "gray"}']}}
replaceitem entity @s[tag=spectator] enderchest.4 gray_terracotta{display:{Name:'{"text": "Opted out","color": "dark_gray","italic": false,"bold": true}',Lore:['{"text": "Click to opt in.","color": "gray"}']}}

execute unless score #flag map = #select map run replaceitem entity @s enderchest.19 golden_apple{display:{Name:'{"text": "Hotbar Settings","color": "yellow","bold": true,"italic": false}',Lore:['{"text": "You need to select a specific map to change your hotbar settings.","color": "gray"}']},HideFlags:63}

replaceitem entity @s[scores={y.ready=1}] enderchest.23 stone_sword{display:{Name:'{"text": "Never Auto-Ready","color": "gray","bold": true,"italic": false}',Lore:['{"text": "Control when the game automatically makes you ready.","color": "gray"}']},HideFlags:63}
replaceitem entity @s[scores={y.ready=2}] enderchest.23 golden_sword{display:{Name:'{"text": "Auto-Ready When Not AFK","color": "gold","bold": true,"italic": false}',Lore:['{"text": "Control when the game automatically makes you ready.","color": "gray"}']},HideFlags:63}
replaceitem entity @s[scores={y.ready=3}] enderchest.23 netherite_sword{display:{Name:'{"text": "Always Auto-Ready","color": "dark_red","bold": true,"italic": false}',Lore:['{"text": "Control when the game automatically makes you ready.","color": "gray"}']},HideFlags:63}

replaceitem entity @s[scores={y.afk=1}] enderchest.25 player_head{display: {Name: '{"text": "AFK after 5 seconds", "bold": true, "color": "dark_aqua", "italic": false}', Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}']}}
replaceitem entity @s[scores={y.afk=2}] enderchest.25 zombie_head{display: {Name: '{"text": "AFK after 10 seconds", "bold": true, "color": "dark_green", "italic": false}', Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}']}}
replaceitem entity @s[scores={y.afk=3}] enderchest.25 skeleton_skull{display: {Name: '{"text": "AFK after 15 seconds", "bold": true, "color": "gray", "italic": false}', Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}']}}
replaceitem entity @s[scores={y.afk=4}] enderchest.25 wither_skeleton_skull{display: {Name: '{"text": "Never AFK", "bold": true, "color": "dark_gray", "italic": false}', Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}']}}

replaceitem entity @s enderchest.21 ender_eye{display: {Name: '{"text": "Spectator Settings", "bold": true, "color": "dark_aqua", "italic": false}', Lore: ['[{"text": "Control when the game makes you a spectator. ", "color": "gray"}, {"text": "(Coming soon)", "color": "white"}]']}}

scoreboard players operation #temp map = #server map
function uub:data/get_map_name
execute if score #flag map = #select map run loot replace entity @s enderchest.19 loot uub:hotbar_settings
