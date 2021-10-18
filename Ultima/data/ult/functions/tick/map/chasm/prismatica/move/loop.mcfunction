particle end_rod ~ ~ ~ 0 0 0 0 0 force
execute unless block ~ ~ ~ air unless block ~ ~ ~ light run kill @s
execute positioned ~ ~-.5 ~ if entity @a[distance=..1, tag=player, tag=alive] run function ult:tick/map/chasm/prismatica/attack
execute positioned ~ ~-1.5 ~ if entity @a[distance=..1, tag=player, tag=alive] run function ult:tick/map/chasm/prismatica/attack
tp @s ^ ^ ^0.25
scoreboard players remove .iter var 1
execute at @s if score .iter var matches 1.. run function ult:tick/map/chasm/prismatica/move/loop
