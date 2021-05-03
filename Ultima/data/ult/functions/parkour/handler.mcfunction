scoreboard players operation #time _var = @s timer
function ult:data/ender_chest/time
scoreboard players operation #temp map = @s parkour
function ult:data/get_map_name
title @s actionbar [{"text": "Running ", "color": "aqua"}, {"storage": "ult:temp", "nbt": "Map", "color": "dark_aqua"}, "          ", {"storage": "ult:temp", "nbt": "Time", "interpret": true, "color": "gold", "bold": true}]

effect give @s resistance 99999 0 true

tag @s[x=44, dx=2, y=14, dy=1, z=-35, dz=0, tag=parkour] add timed
tag @s[x=44, dx=2, y=14, dy=1, z=-34, dz=2, tag=parkour] remove timed
scoreboard players set @s[x=44, dx=2, y=14, dy=1, z=-34, dz=2, tag=parkour] timer 0
tag @s[x=43, dx=4, y=14, dy=1, z=-96, dz=0, tag=parkour] add timed
tag @s[x=43, dx=4, y=14, dy=1, z=-95, dz=3, tag=parkour] remove timed
scoreboard players set @s[x=43, dx=4, y=14, dy=1, z=-95, dz=3, tag=parkour] timer 0

execute as @s[scores={round=0}, x=52, y=12, z=-61, dx=2, dy=1, dz=2] run function ult:parkour/finish_half
execute as @s[scores={round=1}, x=32, y=12, z=-88, dx=2, dy=1, dz=2] run function ult:parkour/finish_full

execute as @s[scores={round=0}, x=44, y=19, z=-123, dx=2, dy=1, dz=2] run function ult:parkour/finish_half

clear @s cornflower

execute if score @s menu = #parkour menu unless data entity @s EnderItems[{id: "minecraft:writable_book"}] run function ult:parkour/menu/records
execute if score @s menu = #parkour.records menu unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:parkour/menu
execute if score @s menu = #parkour.map menu unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:parkour/menu
execute if score @s menu = #parkour menu unless data entity @s EnderItems[{id: "minecraft:filled_map"}] run function ult:parkour/menu/choose_map
execute if score @s menu = #parkour menu unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:parkour/exit

scoreboard players set #selected _var 0
execute unless data entity @s EnderItems[{Slot:26b}] run scoreboard players set #selected _var 12
execute unless data entity @s EnderItems[{Slot:25b}] run scoreboard players set #selected _var 11
execute unless data entity @s EnderItems[{Slot:24b}] run scoreboard players set #selected _var 10
execute unless data entity @s EnderItems[{Slot:23b}] run scoreboard players set #selected _var 9
execute unless data entity @s EnderItems[{Slot:17b}] run scoreboard players set #selected _var 8
execute unless data entity @s EnderItems[{Slot:16b}] run scoreboard players set #selected _var 7
execute unless data entity @s EnderItems[{Slot:15b}] run scoreboard players set #selected _var 6
execute unless data entity @s EnderItems[{Slot:14b}] run scoreboard players set #selected _var 5
execute unless data entity @s EnderItems[{Slot:8b}] run scoreboard players set #selected _var 4
execute unless data entity @s EnderItems[{Slot:7b}] run scoreboard players set #selected _var 3
execute unless data entity @s EnderItems[{Slot:6b}] run scoreboard players set #selected _var 2
execute unless data entity @s EnderItems[{Slot:5b}] run scoreboard players set #selected _var 1
execute if score @s menu = #parkour.records menu if score #selected _var matches 1..2 run function ult:parkour/menu/records
execute if score @s menu = #parkour.map menu if score #selected _var matches 1 run function ult:parkour/new_map
execute if score @s menu = #parkour.map menu if score #selected _var matches 2 run function ult:parkour/new_map
