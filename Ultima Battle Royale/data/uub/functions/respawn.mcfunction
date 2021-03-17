execute unless score #flag game_mode = #brawl game_mode run tellraw @a [{"selector": "@s","color": "dark_green"},{"text": " will respawn.","color": "gray"}]
execute unless score #flag game_mode = #brawl game_mode run scoreboard players set @s tether -1
title @s reset
title @s times 5 70 5
title @s title {"text": "Respawning...","color": "red"}
execute at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
execute unless score @s queue matches 1.. run function uub:spawn/assign_queue
scoreboard players set @s respawn 80
title @s actionbar ""
