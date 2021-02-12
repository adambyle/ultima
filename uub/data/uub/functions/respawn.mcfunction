execute unless score #flag game_mode = #boss game_mode run tellraw @a [{"selector": "@s","color": "dark_green"},{"text": " will respawn.","color": "gray"}]
scoreboard players set @s tether -1
title @s reset
title @s times 5 70 5
title @s title {"text": "Respawning...","color": "red"}
execute at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
function uub:spawn/assign_queue
schedule function uub:spawn/next 4s append
