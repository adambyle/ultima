scoreboard players operation @e[tag=chest.ring] chest_type = #arch chest_type
scoreboard players operation @e[tag=chest.center] chest_type = #arch chest_type
scoreboard players add @e[tag=chest.ring] chest_type 1
scoreboard players add @e[tag=chest.center] chest_type 2

scoreboard players set #max _var 5
scoreboard players operation @e[tag=chest.ring] chest_type < #max _var
scoreboard players operation @e[tag=chest.center] chest_type < #max _var

execute as @e[tag=chest.ring] run function ult:chest/infer
execute as @e[tag=chest.center] run function ult:chest/infer

execute as @e[tag=!chest.ring, tag=!chest.center, tag=!chest.spawn, tag=chest] unless score @s chest_type = #empty chest_type at @s unless entity @a[tag=player, tag=alive, distance=..12] run function ult:chest/random
execute as @e[tag=!chest.ring, tag=!chest.center, tag=!chest.spawn, tag=chest] if score @s chest_type = #empty chest_type run function ult:chest/random

execute unless score #arch chest_type matches 4.. run scoreboard players add #arch chest_type 1
