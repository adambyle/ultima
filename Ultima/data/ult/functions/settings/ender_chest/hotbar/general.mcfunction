function ult:settings/ender_chest/clear
scoreboard players operation @s menu = menu.hotbar const

clear @s golden_apple
clear @s lava_bucket
clear @s emerald
clear @s #ult:map_icons

execute if score @s hotbar_map = flag.map.manor const run function ult:settings/ender_chest/hotbar/maps/manor
execute if score @s hotbar_map = flag.map.woodlands const run function ult:settings/ender_chest/hotbar/maps/woodlands
execute if score @s hotbar_map = flag.map.dungeon const run function ult:settings/ender_chest/hotbar/maps/dungeon
execute if score @s hotbar_map = flag.map.abyss const run function ult:settings/ender_chest/hotbar/maps/abyss
execute if score @s hotbar_map = flag.map.citadel const run function ult:settings/ender_chest/hotbar/maps/citadel
execute if score @s hotbar_map = flag.map.wasteland const run function ult:settings/ender_chest/hotbar/maps/wasteland
execute if score @s hotbar_map = flag.map.town_square const run function ult:settings/ender_chest/hotbar/maps/town_square
execute if score @s hotbar_map = flag.map.last_stand const run function ult:settings/ender_chest/hotbar/maps/last_stand
execute if score @s hotbar_map = flag.map.permafrost const run function ult:settings/ender_chest/hotbar/maps/permafrost
execute if score @s hotbar_map = flag.map.shroom const run function ult:settings/ender_chest/hotbar/maps/shroom
execute if score @s hotbar_map = flag.map.hellscape const run function ult:settings/ender_chest/hotbar/maps/hellscape
execute if score @s hotbar_map = flag.map.frontier const run function ult:settings/ender_chest/hotbar/maps/frontier
execute if score @s hotbar_map = flag.map.reflection const run function ult:settings/ender_chest/hotbar/maps/reflection
execute if score @s hotbar_map = flag.map.reflection const run function ult:settings/ender_chest/hotbar/maps/reflection
execute if score @s hotbar_map = flag.map.dracula const run function ult:settings/ender_chest/hotbar/maps/dracula
execute if score @s hotbar_map = flag.map.avanto const run function ult:settings/ender_chest/hotbar/maps/avanto
execute if score @s hotbar_map = flag.map.boxing const run function ult:settings/ender_chest/hotbar/maps/boxing
execute if score @s hotbar_map = flag.map.ancient const run function ult:settings/ender_chest/hotbar/maps/ancient
execute if score @s hotbar_map = flag.map.marooned const run function ult:settings/ender_chest/hotbar/maps/marooned

item replace entity @s enderchest.2 with emerald{display: {Name: '{"text": "Confirm", "color": "green", "bold": true, "italic": false}'}}
item replace entity @s enderchest.3 with structure_void{display: {Name: '{"text": "Back", "color": "dark_aqua", "bold": true, "italic": false}'}}
item replace entity @s enderchest.4 with lava_bucket{display: {Name: '{"text": "Reset Icons", "color": "red", "bold": true, "italic": false}'}}
