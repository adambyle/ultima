gamemode spectator
execute as @a run function uub:items/refill
tag @s remove alive

scoreboard players set @s qdeath 2

execute if score mode q matches 1 run function uub:death/classic
execute if score mode q matches 2 run function uub:death/duels
execute if score mode q matches 3 run function uub:death/brawl

scoreboard players reset @s pn
scoreboard players set @s kills 0
