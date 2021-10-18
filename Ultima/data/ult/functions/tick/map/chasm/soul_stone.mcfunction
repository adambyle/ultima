function ult:data/root
tag @s add soul_stone
tag @a remove temp2
execute as @a[tag=player, tag=alive] run function ult:tick/map/chasm/soul_stone/test

tag @e remove temp
execute if entity @a[tag=temp2] at @s run summon ender_pearl ~ ~ ~ {Tags: ["temp", "soul_stone"]}
data modify entity @e[tag=temp, limit=1] Motion set from entity @s Motion
data modify entity @e[tag=temp, limit=1] Item set from entity @s Item
data modify entity @e[tag=temp, limit=1] Owner set from entity @s Owner

kill @s
