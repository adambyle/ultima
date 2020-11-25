clear @a glass_bottle
execute as @a unless score @s gid = gid q run function uub:tick/invalid
execute as @a[team=play] if score map q matches 1 run function uub:items/lost/default

execute as @a[scores={qdeath=1},tag=alive,team=play] run function uub:death

execute as @a[team=play,tag=!alive] run function uub:tick/tether

execute as @a[scores={taken=1..},tag=alive] run scoreboard players operation @s last = @p[scores={dealt=1..},tag=alive] pn

scoreboard players set @a dealt 0
scoreboard players set @a taken 0

scoreboard players set i n 0
execute as @a[team=play] run scoreboard players add i n 1
execute unless score i n = pn q run tellraw @a {"text": "The game was forced to reset as a player left!","color": "red"}
execute unless score i n = pn q run function uub:load
