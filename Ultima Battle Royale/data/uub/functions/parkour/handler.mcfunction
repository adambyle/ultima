scoreboard players operation #time _var = @s timer
function uub:data/ender_chest/time
scoreboard players operation #temp map = @s parkour
function uub:data/get_map_name
title @s actionbar [{"text": "Running ", "color": "aqua"}, {"storage": "uub:temp", "nbt": "Map", "color": "dark_aqua"}, "          ", {"storage": "uub:temp", "nbt": "Time", "interpret": true, "color": "gold", "bold": true}]

effect give @s resistance 99999 0 true

execute as @s[scores={round=0}, x=52.0, y=12.0, z=-61.0, dx=2, dy=1, dz=2] run function uub:parkour/finish_half

clear @s cactus
