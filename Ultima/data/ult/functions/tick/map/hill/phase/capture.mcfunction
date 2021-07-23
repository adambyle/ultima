# Switch phase, reset timer
    scoreboard players set .map event 90
    scoreboard players set .phase event 1

# Nobody is king
    tag @a remove hill_king
    clear @a crossbow

title @a[tag=player, tag=alive] reset
title @a[tag=player, tag=alive] times 0 13 2
title @a[tag=player, tag=alive] title {"text": "Capture Phase!", "color": "aqua"}

execute as @a[tag=player] at @s run playsound block.bone_block.break master @s

effect give @a regeneration 6 1
