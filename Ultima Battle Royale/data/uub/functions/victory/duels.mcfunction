execute as @a[tag=player,scores={queue=1}] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
execute if score #server pn matches 3.. run tellraw @a [{"text": "Next fighter: ","color": "gray"},{"selector": "@a[tag=player,scores={queue=1}]"}]
schedule function uub:spawn/duels 4s
schedule function uub:start/lighting 3s

title @a reset
title @a times 0 70 10
title @a subtitle "Next up"
execute if score #flag map > #select map run title @a title {"storage": "uub:map_data","nbt": "Name","color": "green"}

scoreboard players add @a[tag=alive] score 1
