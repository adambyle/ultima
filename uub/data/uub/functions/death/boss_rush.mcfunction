scoreboard players remove @s score 1

execute if score @s score matches 1.. run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " died, and will respawn soon.","color": "gray"}]
execute if score @s score matches 0 run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " is eliminated!","color": "red"}]

scoreboard players set @s bool.die 0

execute if score @s score matches 1.. run function uub:respawn

scoreboard players add @r[team=boss] pseudo_health 25
