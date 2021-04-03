scoreboard players operation #time _var = @s timer
function uub:data/ender_chest/time
scoreboard players operation #temp map = @s parkour
function uub:data/get_map_name
title @s actionbar [{"text": "Running ", "color": "aqua"}, {"storage": "uub:temp", "nbt": "Map", "color": "dark_aqua"}, "          ", {"storage": "uub:temp", "nbt": "Time", "interpret": true, "color": "gold", "bold": true}]

effect give @s resistance 99999 0 true

tag @s[x=44, dx=2, y=14, dy=1, z=-35, dz=0, tag=parkour] add timed
tag @s[x=44, dx=2, y=14, dy=1, z=-34, dz=2, tag=parkour] remove timed
scoreboard players set @s[x=44, dx=2, y=14, dy=1, z=-34, dz=2, tag=parkour] timer 0

execute as @s[scores={round=0}, x=52, y=12, z=-61, dx=2, dy=1, dz=2] run function uub:parkour/finish_half

execute as @s[scores={round=1}, x=32, y=12, z=-88, dx=2, dy=1, dz=2] run function uub:parkour/finish_full

clear @s cactus

execute if score @s menu = #parkour menu unless data entity @s EnderItems[{id: "minecraft:writable_book"}] run function uub:parkour/menu/records
execute if score @s menu = #parkour.records menu unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function uub:parkour/menu
