scoreboard players operation #time _var = @s timer
function ult:data/ender_chest/time
scoreboard players operation .temp map = @s parkour
function ult:data/map/get_map_data
title @s actionbar [{"text": "Running ", "color": "aqua"}, {"storage": "ult:temp", "nbt": "Map", "color": "dark_aqua"}, "          ", {"storage": "ult:temp", "nbt": "Time", "interpret": true, "color": "gold", "bold": true}]

effect give @s resistance 99999 0 true

tag @s[x=44, dx=2, y=14, dy=1, z=-35, dz=0, tag=parkour] add timed
tag @s[x=44, dx=2, y=14, dy=1, z=-34, dz=2, tag=parkour] remove timed
scoreboard players set @s[x=44, dx=2, y=14, dy=2, z=-34, dz=2, tag=parkour] timer 0
tag @s[x=43, dx=4, y=14, dy=1, z=-96, dz=0, tag=parkour] add timed
tag @s[x=43, dx=4, y=14, dy=1, z=-95, dz=3, tag=parkour] remove timed
scoreboard players set @s[x=43, dx=4, y=14, dy=2, z=-95, dz=3, tag=parkour] timer 0

execute as @s[scores={round=0}, x=52, y=12, z=-61, dx=2, dy=1, dz=2] run function ult:parkour/finish_half
execute as @s[scores={round=1}, x=32, y=12, z=-88, dx=2, dy=1, dz=2] run function ult:parkour/finish_full

execute as @s[scores={round=0}, x=44, y=19, z=-123, dx=2, dy=1, dz=2] run function ult:parkour/finish_half

execute as @a[scores={altitude=11}, nbt={OnGround: true}] run function ult:parkour/tp
