scoreboard players remove @s score 1

execute if score @s score matches 1.. run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " died.","color": "gray"}]
execute if score @s score matches 0 run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " is eliminated!","color": "red"}]

scoreboard players set @s bool.die 0

execute if score @s score matches 1.. run function uub:spawn/assign_queue
execute if score @s score matches 1.. run schedule function uub:spawn/next 2s append
