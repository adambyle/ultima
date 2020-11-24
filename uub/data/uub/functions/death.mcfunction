gamemode spectator
execute as @a run function uub:items/refill
scoreboard players set @s qdeath 2
tag @s remove alive

execute if score mode q matches 1 run function uub:death/classic
execute if score mode q matches 2 run function uub:death/duels

scoreboard players reset @s pn
