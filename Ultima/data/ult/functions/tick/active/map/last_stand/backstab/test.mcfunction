function ult:data/root

scoreboard players set .test _var 1
execute positioned ^ ^ ^3 as @a[tag=player, tag=alive, tag=!root, distance=..3] at @s run function ult:tick/active/map/last_stand/backstab/loop
execute positioned ^ ^ ^3 unless entity @a[tag=player, tag=alive, tag=!root, distance=..3] run scoreboard players set .test _var 0

execute if score .test _var matches 0 run effect clear @s strength
execute if score .test _var matches 1 run effect give @s strength 99999 0
