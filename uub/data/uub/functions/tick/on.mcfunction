clear @a glass_bottle
execute as @a unless score @s gid = gid q run function uub:tick/invalid
execute as @a[team=play] if score map q matches 1 run function uub:items/lost/default

execute as @a[scores={qdeath=1},tag=alive,team=play] run function uub:death

execute as @a[team=play,tag=!alive] run function uub:tick/tether

execute as @a[scores={taken=1..},tag=alive] run scoreboard players operation @s last = @p[scores={dealt=1..},tag=alive] pn

scoreboard players set @a dealt 0
scoreboard players set @a taken 0
