execute if score mode q matches 2 run function uub:start/queueassign
team join play
scoreboard players add pn q 1
scoreboard players set @s tether 0
tellraw @a [{"selector": "@s","color": "blue"},{"text": " has opted in.","color": "blue"}]
