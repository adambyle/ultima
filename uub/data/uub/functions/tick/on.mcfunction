clear @a glass_bottle
execute as @a unless score @s gid = gid q run function uub:tick/invalid
execute as @a[team=play] if score map q matches 1 run function uub:items/lost/default

execute as @a[scores={qdeath=1},tag=alive,team=play] run function uub:death
