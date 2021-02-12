title @a reset
title @a times 5 50 5
execute if entity @a[tag=alive] run title @a title [{"selector": "@a[tag=alive]","color": "green"},{"text": " wins!","color": "green"}]
execute unless entity @a[tag=alive] run title @a title {"text": "Nobody wins!","color": "red"}
schedule function uub:load 3s

execute as @a[tag=player,tag=alive] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 8
execute as @a[tag=player,tag=!alive] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 8

execute if entity @a[tag=alive] run tellraw @a [{"selector": "@a[tag=alive]","color": "green"},{"text": " wins!","color": "green"}]
execute unless entity @a[tag=alive] run tellraw @a [{"text": "Nobody wins!","color": "red"}]
