execute at @s run playsound entity.ender_dragon.death master @s ~ ~ ~ 4 1.5
scoreboard players set #flag game_state 2
title @a reset
title @a times 5 70 5
title @a[team=fighters] title {"text": "Victory!","color": "dark_green"}

clear @a[team=fighters]
team join lobby @a
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648, Duration:-1, WaitTime:-2147483648, Tags: ["boss_death"]}
data modify entity @e[tag=boss_death,limit=1] Rotation set from entity @s Rotation
tag @s add dead_boss
effect give @s glowing 16 0 true

schedule function uub:load 10s

bossbar set uub:boss value 0

scoreboard players set #timeout game_state 150
