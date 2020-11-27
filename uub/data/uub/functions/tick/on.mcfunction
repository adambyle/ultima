clear @a glass_bottle
execute as @a unless score @s gid = gid q run function uub:tick/invalid
execute as @a[team=play] if score map q matches 1 run function uub:items/lost/default
execute as @a[team=play] if score map q matches 2 run function uub:items/lost/woods

execute as @a[scores={qdeath=1},tag=alive,team=play] run function uub:death

execute as @a[team=play,tag=!alive] run function uub:tick/tether

scoreboard players set i n 0
execute as @a[team=play] run scoreboard players add i n 1
##execute unless score i n = pn q run tellraw @a {"text": "The game was forced to reset as a player left the server!","color": "red"}
##execute unless score i n = pn q run function uub:load

execute if score mode q matches 1 as @a[team=play,tag=alive] at @s run function uub:tick/special_effects/tether_sparkle

scoreboard players add @a rot 10
execute as @a[scores={rot=360..}] run scoreboard players remove @s rot 360
