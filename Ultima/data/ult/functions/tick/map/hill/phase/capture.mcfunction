scoreboard players set .map event 120
scoreboard players set .phase event 1
tag @a remove hill_king

title @a[tag=player, tag=alive] reset
title @a[tag=player, tag=alive] times 0 10 5
title @a[tag=player, tag=alive] title {"text": "Capture Phase!", "color": "aqua"}

execute as @a[tag=player] at @s run playsound block.bone_block.break master @s
