scoreboard players set @s queue 0
execute if score mode q matches ..2 run function uub:respawn
execute if score mode q matches 3 run scoreboard players set @s timer 80
scoreboard players remove @a[team=play,scores={queue=1..}] queue 1
title @s title {"text": "Respawning!","color": "red"}
execute at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 2 2
