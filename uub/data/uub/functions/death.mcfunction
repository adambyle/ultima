gamemode spectator
execute as @a run function uub:items/refill
scoreboard players set @s qdeath 0
scoreboard players reset @s pn
tag @s remove alive
function uub:tp

execute if score mode q matches 2 run function uub:death/duels
