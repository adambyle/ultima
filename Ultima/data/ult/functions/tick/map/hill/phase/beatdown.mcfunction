# Switch phase, reset timer
    scoreboard players set .map event 120
    scoreboard players set .phase event 2

# Nearest player to center is king
    execute positioned 163.5 23 172.5 as @p[tag=alive, nbt={OnGround: true}] at @s if block ~ ~-1 ~ red_stained_glass run tag @s add hill_king

title @a[tag=alive] reset
title @a[tag=alive] times 0 13 2
title @a[tag=alive, tag=hill_king] title {"text": "Beatdown Phase!", "color": "#43AA8B"}
title @a[tag=alive, tag=!hill_king] title {"text": "Beatdown Phase!", "color": "#F3722C"}

execute as @a[tag=watching] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 4 1.4
execute at @a[tag=hill_king] run particle flame ~ ~1 ~ 0 0 0 0.2 100
