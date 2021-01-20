title @a reset
title @a times 5 25 5
title @a title [{"selector": "@a[tag=alive]","color": "green"},{"text": " wins!","color": "green"}]
schedule function uub:load 2s

execute as @a[tag=player,tag=alive] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 8
execute as @a[tag=player,tag=!alive] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 8

execute if entity @a[tag=alive] run tellraw @a [{"selector": "@a[tag=alive]","color": "green"},{"text": " wins!","color": "green"}]
execute unless entity @a[tag=alive] run tellraw @a [{"text": "Nobody wins!","color": "red"}]
