clear @a glass_bottle
execute as @a unless score @s gid = gid q run function uub:tick/invalid
execute as @a[team=play] run function uub:items/lost

execute as @a[scores={qdeath=2}] run function uub:tp
scoreboard players set @a[scores={qdeath=2}] qdeath 0
execute as @a[scores={qdeath=1},tag=alive,team=play] run function uub:death

execute if score mode q matches 1 as @a[team=play,tag=!alive] run function uub:tick/tether

scoreboard players set i n 0
execute as @a[team=play] run scoreboard players add i n 1
execute unless score i n = pn q run tellraw @a {"text": "The game was forced to reset as a player left the server!","color": "red"}
execute unless score i n = pn q run function uub:load

execute if score mode q matches 1 as @a[team=play,tag=alive] at @s run function uub:tick/special_effects/tether_sparkle
execute if score mode q matches 3 as @a[team=play,tag=alive] at @s run function uub:tick/special_effects/revenge_sparkle

scoreboard players add @a rot 10
execute as @a[scores={rot=360..}] run scoreboard players remove @s rot 360

execute as @a[scores={hp=..6},tag=!low] run function uub:death/low
tag @a[scores={hp=12..},tag=low] remove low

scoreboard players remove @a[scores={timer=1..},team=play] timer 1
execute as @a[scores={timer=0},team=play] run function uub:respawn

scoreboard players remove @a[scores={event_timer=1..},team=play] event_timer 1
execute if score map q matches 4 as @a[scores={event_timer=0},team=play] run function uub:event/abyss_timeout

execute if score map q matches 3 run effect clear @a[scores={dmg=1..}] invisibility
execute if score map q matches 3 run effect clear @a[scores={dmg=1..}] speed
execute if score map q matches 3 run effect clear @a[scores={dmg=1..}] resistance
execute if score map q matches 3 run scoreboard players set @a dmg 0
execute if score map q matches 3 as @a[nbt={ActiveEffects:[{Id:14b}]}] run clear @s #uub:dungeon_armor
execute if score map q matches 3 as @a[nbt=!{ActiveEffects:[{Id:14b}]},nbt=!{Inventory:[{id:"minecraft:iron_chestplate"}]}] run function uub:items/refill/dungeon_armor

execute positioned 46 27 42 if entity @a[team=play,tag=alive,distance=..2] unless score arrow_refill n matches 1 run function uub:event/woodlands_arrows
execute positioned 46 27 42 if entity @a[team=play,tag=alive,distance=..2] run scoreboard players set arrow_refill n 1
execute positioned 46 27 42 unless entity @a[team=play,tag=alive,distance=..2] run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute positioned 46 27 42 unless entity @a[team=play,tag=alive,distance=..6] run schedule clear uub:event/woodlands_arrows
execute positioned 46 27 42 unless entity @a[team=play,tag=alive,distance=..6] run scoreboard players set arrow_refill n 0

execute unless score game q matches 2 if score map q matches 4 as @a[team=play,tag=alive,nbt=!{Inventory:[{id:"minecraft:netherite_ingot"}]},tag=!used_netherite] run function uub:event/abyss_netherite

effect clear @a[scores={kills=3..},nbt={ActiveEffects:[{Id:14b}]}] glowing
execute if score mode q matches 3 run effect give @a[scores={kills=3..},nbt=!{ActiveEffects:[{Id:14b}]}] glowing 1 0 true
