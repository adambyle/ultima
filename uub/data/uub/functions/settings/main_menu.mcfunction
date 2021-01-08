function uub:settings/clear_ender_chest

replaceitem entity @s[tag=team_play] enderchest.10 lime_terracotta{display:{Name:'{"text": "Opted in","color": "green","bold": true,"italic": false}',Lore:['{"text": "Click to opt out.","color": "gray"}']}}
replaceitem entity @s[tag=team_spect] enderchest.10 blue_terracotta{display:{Name:'{"text": "Opted out","color": "blue","bold": true,"italic": false}',Lore:['{"text": "Click to opt in.","color": "gray"}']}}
replaceitem entity @s enderchest.12 gold_ingot{HideFlags:63,display:{Name:'{"text": "Trophy Case","color": "gold","bold": true,"italic": false}',Lore:['{"text": "Check all the Awards you\'ve collected.","color": "gray"}','{"text": "(Coming soon)","color": "white"}']}}
replaceitem entity @s enderchest.14 globe_banner_pattern{HideFlags:63,display:{Name:'{"text": "Stats","color": "red","bold": true,"italic": false}',Lore:['{"text": "Click to view your game statistics.","color": "gray"}']}}
replaceitem entity @s enderchest.16 diamond_sword{HideFlags:63,display:{Name:'{"text": "Hotbar Settings","color": "dark_purple","bold": true,"italic": false}',Lore:['{"text": "Manage the default positions of your items per map.","color": "gray"}','{"text": "(Coming soon)","color": "white"}']}}
execute at @s[tag=!menu.main] run playsound entity.item.pickup master @s

tag @s remove menu.stat
tag @s remove menu.hotbar
tag @s add menu.main

clear @s structure_void
clear @s diamond_sword
clear @s globe_banner_pattern
clear @s blue_terracotta
clear @s lime_terracotta
clear @s gold_ingot
