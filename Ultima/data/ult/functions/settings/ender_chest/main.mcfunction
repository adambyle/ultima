execute unless score @s menu = #main menu run function ult:settings/ender_chest/clear
scoreboard players operation @s menu = #main menu

execute unless score @s y.ready matches 1.. run scoreboard players set @s y.ready 1
execute unless score @s y.voteskip matches 1.. run scoreboard players set @s y.voteskip 1
execute unless score @s y.afk matches 1.. run scoreboard players set @s y.afk 2

clear @s lime_terracotta
clear @s gray_terracotta

clear @s golden_apple
clear @s emerald
clear @s ender_eye
clear @s book

clear @s stone_sword
clear @s golden_sword
clear @s netherite_sword

clear @s paper
clear @s jukebox
clear @s barrier

clear @s player_head
clear @s zombie_head
clear @s skeleton_skull
clear @s wither_skeleton_skull

clear @s structure_void

clear @s #ult:all

replaceitem entity @s[tag=player] enderchest.1 lime_terracotta{display:{Name:'{"text": "Opted in","color": "dark_green","italic": false,"bold": true}',Lore:['{"text": "Click to opt out.","color": "gray"}']}}
replaceitem entity @s[tag=spectator] enderchest.1 gray_terracotta{display:{Name:'{"text": "Opted out","color": "dark_gray","italic": false,"bold": true}',Lore:['{"text": "Click to opt in.","color": "gray"}']}}

replaceitem entity @s enderchest.24 book{display: {Name: '{"text": "Choose Class", "color": "#7A3200", "bold": true, "italic": false}', Lore: ['[{"text": "Control which items are buffed in Ultimate mode. ", "color": "gray"}, {"text": "(Coming soon)", "color": "white"}]']}}

replaceitem entity @s enderchest.20 golden_apple{display:{Name:'{"text": "Hotbar Settings","color": "yellow","bold": true,"italic": false}'},HideFlags:63}

replaceitem entity @s[scores={y.ready=1}] enderchest.3 stone_sword{display:{Name:'{"text": "Never Auto-Ready","color": "gray","bold": true,"italic": false}',Lore:['{"text": "Control when the game automatically makes you ready.","color": "gray"}']},HideFlags:63}
replaceitem entity @s[scores={y.ready=2}] enderchest.3 golden_sword{display:{Name:'{"text": "Auto-Ready When Not AFK","color": "gold","bold": true,"italic": false}',Lore:['{"text": "Control when the game automatically makes you ready.","color": "gray"}']},HideFlags:63}
replaceitem entity @s[scores={y.ready=3}] enderchest.3 netherite_sword{display:{Name:'{"text": "Always Auto-Ready","color": "dark_red","bold": true,"italic": false}',Lore:['{"text": "Control when the game automatically makes you ready.","color": "gray"}']},HideFlags:63}

replaceitem entity @s[scores={y.afk=1}] enderchest.5 player_head{display: {Name: '{"text": "AFK after 5 seconds", "bold": true, "color": "dark_aqua", "italic": false}', Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}']}}
replaceitem entity @s[scores={y.afk=2}] enderchest.5 zombie_head{display: {Name: '{"text": "AFK after 10 seconds", "bold": true, "color": "dark_green", "italic": false}', Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}']}}
replaceitem entity @s[scores={y.afk=3}] enderchest.5 skeleton_skull{display: {Name: '{"text": "AFK after 15 seconds", "bold": true, "color": "gray", "italic": false}', Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}']}}
replaceitem entity @s[scores={y.afk=4}] enderchest.5 wither_skeleton_skull{display: {Name: '{"text": "Never AFK", "bold": true, "color": "dark_gray", "italic": false}', Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}']}}

replaceitem entity @s[scores={y.voteskip=1}] enderchest.7 paper{display: {Name: '{"text": "Require Voting", "bold": true, "color": "white", "italic": false}', Lore: ['{"text": "Control when the game makes you vote.", "color": "gray"}']}}
replaceitem entity @s[scores={y.voteskip=2}] enderchest.7 jukebox{display: {Name: '{"text": "Skip Voting When AFK (Only With Always Auto-Ready)", "bold": true, "color": "#7A3200", "italic": false}', Lore: ['{"text": "Control when the game makes you vote.", "color": "gray"}']}}
replaceitem entity @s[scores={y.voteskip=3}] enderchest.7 barrier{display: {Name: '{"text": "Always Skip Voting", "bold": true, "color": "red", "italic": false}', Lore: ['{"text": "Control when the game makes you vote.", "color": "gray"}']}}

replaceitem entity @s enderchest.22 ender_eye{display: {Name: '{"text": "Spectator Settings", "bold": true, "color": "dark_aqua", "italic": false}', Lore: ['{"text": "Control when the game makes you a spectator. ", "color": "gray"}']}}

scoreboard players operation #temp map = #server map
function ult:data/get_map_name
