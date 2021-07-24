# Switch phase, reset timer
    scoreboard players set .map event 90
    scoreboard players set .phase event 1

# Nobody is king
    tag @a remove hill_king
    clear @a crossbow

title @a[tag=alive] reset
title @a[tag=alive] times 0 13 2
title @a[tag=alive] title {"text": "Capture Phase!", "color": "#577590"}

execute as @a[tag=watching] at @s run playsound block.bone_block.break master @s ~ ~ ~ 4

effect give @a regeneration 6 1
