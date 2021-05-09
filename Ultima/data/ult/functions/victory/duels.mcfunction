execute as @a[tag=player,scores={queue=1}] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
execute if score #server pn matches 3.. run tellraw @a [{"text": "Next fighter: ","color": "gray"},{"selector": "@a[tag=player,scores={queue=1}]"}]
schedule function ult:spawn/duels 80t
schedule function ult:start/lighting 3s

title @a reset
title @a times 0 70 10
title @a subtitle "Next up"
execute if score #flag map > #select map run title @a[tag=!parkour] title {"storage": "ult:temp","nbt": "Map","color": "green"}
execute if score #flag map > #select map run title @a[tag=parkour, tag=player] title {"storage": "ult:temp","nbt": "Map","color": "green"}

scoreboard players set #flag game_state 2

scoreboard objectives setdisplay sidebar wins
