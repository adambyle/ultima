function uub:settings/ender_chest/clear
scoreboard players operation @s menu = #hotbar menu

clear @s golden_apple
clear @s lava_bucket
clear @s emerald
execute if score #server map matches 1 run function uub:settings/ender_chest/hotbar/maps/manor
execute if score #server map matches 2 run function uub:settings/ender_chest/hotbar/maps/woodlands
execute if score #server map matches 3 run function uub:settings/ender_chest/hotbar/maps/dungeon
execute if score #server map matches 4 run function uub:settings/ender_chest/hotbar/maps/abyss
execute if score #server map matches 5 run function uub:settings/ender_chest/hotbar/maps/citadel
execute if score #server map matches 13 run function uub:settings/ender_chest/hotbar/maps/reflection
execute if score #server map matches 14 run function uub:settings/ender_chest/hotbar/maps/dracula
execute if score #server map matches 15 run function uub:settings/ender_chest/hotbar/maps/avanto

replaceitem entity @s enderchest.2 emerald{display:{Name:'{"text": "Confirm","color": "green","bold": true,"italic": false}'}}
replaceitem entity @s enderchest.3 structure_void{display:{Name:'{"text": "Back","color": "dark_aqua","bold": true,"italic": false}'}}
replaceitem entity @s enderchest.4 lava_bucket{display:{Name:'{"text": "Reset Icons","color": "red","bold": true,"italic": false}'}}
