tag @a remove player
tag @s add player
tag @a[tag=killtag] add player
tag @r[tag=player] remove player
scoreboard players set @a[tag=player,tag=killtag] qdeath 0
tellraw @a [{"selector": "@s"},{"text": " and ","color": "gray"},{"selector": "@a[tag=killtag]"},{"text": " met ends.","color": "gray"}]
tellraw @a [{"selector": "@a[tag=player]"},{"text": " made it out alive.","color": "gray"}]
execute as @e[tag=player] run function uub:respawn
