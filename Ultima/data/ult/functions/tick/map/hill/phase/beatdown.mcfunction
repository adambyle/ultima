scoreboard players set .map event 60
scoreboard players set .phase event 2

execute positioned 163.5 23 172.5 as @p[tag=player, tag=alive, nbt={OnGround: true}] at @s if block ~ ~-1 ~ red_stained_glass run tag @s add hill_king

title @a[tag=player, tag=alive] reset
title @a[tag=player, tag=alive] times 0 10 5
title @a[tag=player, tag=alive, tag=hill_king] title {"text": "Beatdown Phase!", "color": "green"}
title @a[tag=player, tag=alive, tag=!hill_king] title {"text": "Beatdown Phase!", "color": "red"}

execute as @a[tag=player] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 16 1.4
execute at @a[tag=hill_king] run particle flame ~ ~1 ~ 0 0 0 0.2 30
