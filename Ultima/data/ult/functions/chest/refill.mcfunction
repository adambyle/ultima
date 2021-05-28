scoreboard players operation @e[tag=chest.ring] chest = #arch chest
scoreboard players operation @e[tag=chest.center] chest = #arch chest
scoreboard players add @e[tag=chest.ring] chest 1
scoreboard players add @e[tag=chest.center] chest 2

scoreboard players set #max _var 5
scoreboard players operation @e[tag=chest.ring] chest < #max _var
scoreboard players operation @e[tag=chest.center] chest < #max _var

execute as @e[tag=chest.ring] run function ult:chest/infer
execute as @e[tag=chest.center] run function ult:chest/infer

execute as @e[tag=!chest.ring, tag=!chest.center, tag=!chest.spawn, tag=chest] unless score @s chest = #empty chest at @s unless entity @a[tag=player, tag=alive, distance=..12] run function ult:chest/random
execute as @e[tag=!chest.ring, tag=!chest.center, tag=!chest.spawn, tag=chest] if score @s chest = #empty chest run function ult:chest/random

execute unless score #arch chest = chest.epic const.. run scoreboard players add #arch chest 1
