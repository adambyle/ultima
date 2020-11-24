clear @a glass_bottle
execute as @a unless score @s gid = gid q run function uub:tick/invalid
execute as @a[team=play] if score map q matches 1 run function uub:items/lost/default

execute as @a[scores={qdeath=2}] run function uub:tp
scoreboard players set @a[scores={qdeath=2}] qdeath 0
execute as @a[scores={qdeath=1},tag=alive,team=play] run function uub:death

execute as @a[team=play,tag=!alive] run function uub:tick/tether
