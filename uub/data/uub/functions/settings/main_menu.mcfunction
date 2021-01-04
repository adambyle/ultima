replaceitem entity @s[tag=team_play] enderchest.10 lime_terracotta{display:{Name:'{"text": "Opted in","color": "green","bold": true,"italic": false}',Lore:['{"text": "Click to opt out.","color": "gray"}']}}
replaceitem entity @s[tag=team_spect] enderchest.10 blue_terracotta{display:{Name:'{"text": "Opted out","color": "blue","bold": true,"italic": false}',Lore:['{"text": "Click to opt in.","color": "gray"}']}}
replaceitem entity @s enderchest.13 globe_banner_pattern{HideFlags:63,display:{Name:'{"text": "Stats","color": "red","bold": true,"italic": false}',Lore:['{"text": "Click to view your game statistics.","color": "gray"}']}}
replaceitem entity @s enderchest.16 diamond_sword{HideFlags:63,display:{Name:'{"text": "Hotbar Settings","color": "gold","bold": true,"italic": false}',Lore:['{"text": "Manage the default positions of your items per map.","color": "gray"}','{"text": "(Coming soon)","color": "white"}']}}
execute at @s[tag=!menu.main] run playsound entity.item.pickup master @s

replaceitem entity @s enderchest.12 air
replaceitem entity @s enderchest.14 air
replaceitem entity @s enderchest.5 air
replaceitem entity @s enderchest.6 air
replaceitem entity @s enderchest.7 air
replaceitem entity @s enderchest.8 air
replaceitem entity @s enderchest.14 air
replaceitem entity @s enderchest.15 air
replaceitem entity @s enderchest.17 air
replaceitem entity @s enderchest.23 air
replaceitem entity @s enderchest.24 air
replaceitem entity @s enderchest.25 air
replaceitem entity @s enderchest.26 air


tag @s remove menu.stat
tag @s remove menu.hotbar
tag @s add menu.main

clear @s barrier
clear @s diamond_sword
clear @s globe_banner_pattern
clear @s blue_terracotta
clear @s lime_terracotta
